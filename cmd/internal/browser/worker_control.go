package browser

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"sync"
	"sync/atomic"
	"time"

	"github.com/coder/websocket"
	"github.com/coder/websocket/wsjson"
)

type workerSnapshot struct {
	Enabled  bool   `json:"enabled"`
	Ready    bool   `json:"ready"`
	Paused   bool   `json:"paused"`
	StopID   uint64 `json:"stopId"`
	Targets  int    `json:"targets"`
	Error    string `json:"error,omitempty"`
	sessions []string
}

type workerControl struct {
	state   atomic.Pointer[workerSnapshot]
	client  atomic.Pointer[cdpClient]
	applied atomic.Uint64
	cancel  context.CancelFunc
}

// StartWorkerControl attaches only to this session's page and its descendant
// workers. A separate CDP client can coexist with the DevTools frontend.
func (s *Session) StartWorkerControl(ctx context.Context, profile string) {
	ctx, cancel := context.WithCancel(ctx)
	control := &workerControl{cancel: cancel}
	control.state.Store(&workerSnapshot{Enabled: true})
	if !s.workers.CompareAndSwap(nil, control) {
		cancel()
		return
	}
	go func() {
		err := control.run(ctx, profile, s.URL)
		if err != nil && ctx.Err() == nil {
			control.state.Store(&workerSnapshot{Enabled: true, Error: err.Error()})
		}
	}()
}

func (s *Session) WorkerState() workerSnapshot {
	if control := s.workers.Load(); control != nil {
		return *control.state.Load()
	}
	return workerSnapshot{}
}

func (s *Session) checkedWorkerState(ctx context.Context) workerSnapshot {
	state := s.WorkerState()
	control := s.workers.Load()
	if control == nil || !state.Paused {
		return state
	}
	client := control.client.Load()
	if client == nil {
		state.Paused = false
		return state
	}
	// Drain transport notifications before accepting a shared-memory snapshot.
	// These commands do not execute guest code and also work on paused targets.
	for _, session := range state.sessions {
		if err := client.call(ctx, session, "Runtime.getIsolateId", map[string]any{}, nil); err != nil {
			state.Paused = false
			return state
		}
	}
	received, applied := client.received.Load(), control.applied.Load()
	current := s.WorkerState()
	if state.StopID != current.StopID || received != applied || client.received.Load() != received {
		current.Paused = false
	}
	return current
}

type cdpMessage struct {
	ID        uint64          `json:"id,omitempty"`
	Method    string          `json:"method,omitempty"`
	SessionID string          `json:"sessionId,omitempty"`
	Params    json.RawMessage `json:"params,omitempty"`
	Result    json.RawMessage `json:"result,omitempty"`
	Error     *cdpError       `json:"error,omitempty"`
	sequence  uint64
}

type cdpError struct {
	Message string `json:"message"`
}

type cdpPending struct {
	session string
	reply   chan cdpMessage
}

type cdpClient struct {
	conn     *websocket.Conn
	mu       sync.Mutex
	next     uint64
	pending  map[uint64]cdpPending
	events   chan cdpMessage
	done     chan struct{}
	err      error // published by closing done
	received atomic.Uint64
}

func newCDPClient(ctx context.Context, endpoint string) (*cdpClient, error) {
	dial, cancel := context.WithTimeout(ctx, 10*time.Second)
	defer cancel()
	conn, _, err := websocket.Dial(dial, endpoint, nil)
	if err != nil {
		return nil, err
	}
	conn.SetReadLimit(8 << 20)
	client := &cdpClient{
		conn: conn, pending: make(map[uint64]cdpPending),
		events: make(chan cdpMessage, 256), done: make(chan struct{}),
	}
	go func() {
		defer close(client.done)
		for {
			var message cdpMessage
			if err := wsjson.Read(ctx, conn, &message); err != nil {
				client.err = err
				return
			}
			if message.ID != 0 {
				client.mu.Lock()
				reply := client.pending[message.ID].reply
				delete(client.pending, message.ID)
				client.mu.Unlock()
				if reply != nil {
					reply <- message
				}
				continue
			}
			switch message.Method {
			case "Target.attachedToTarget", "Target.detachedFromTarget", "Debugger.paused", "Debugger.resumed":
				if message.Method == "Target.detachedFromTarget" {
					var detached struct {
						SessionID string `json:"sessionId"`
					}
					if json.Unmarshal(message.Params, &detached) == nil && detached.SessionID != "" {
						// Chrome need not reply to requests outstanding when
						// a worker exits. Unblock the actor before it consumes
						// the queued lifecycle notification.
						client.mu.Lock()
						for id, request := range client.pending {
							if request.session == detached.SessionID {
								delete(client.pending, id)
								request.reply <- cdpMessage{ID: id, Error: &cdpError{Message: "Target closed"}}
							}
						}
						client.mu.Unlock()
					}
				}
				message.sequence = client.received.Add(1)
				select {
				case client.events <- message:
				default:
					client.err = errors.New("browser worker event queue overflow")
					return
				}
			}
		}
	}()
	return client, nil
}

func (c *cdpClient) call(ctx context.Context, session, method string, params any, result any) error {
	ctx, cancel := context.WithTimeout(ctx, 10*time.Second)
	defer cancel()
	data, err := json.Marshal(params)
	if err != nil {
		return err
	}
	reply := make(chan cdpMessage, 1)
	c.mu.Lock()
	c.next++
	id := c.next
	c.pending[id] = cdpPending{session: session, reply: reply}
	c.mu.Unlock()
	defer func() {
		c.mu.Lock()
		delete(c.pending, id)
		c.mu.Unlock()
	}()
	if err := wsjson.Write(ctx, c.conn, cdpMessage{ID: id, Method: method, SessionID: session, Params: data}); err != nil {
		return err
	}
	select {
	case message := <-reply:
		if message.Error != nil {
			return fmt.Errorf("%s: %s", method, message.Error.Message)
		}
		if result != nil {
			return json.Unmarshal(message.Result, result)
		}
		return nil
	case <-ctx.Done():
		return ctx.Err()
	case <-c.done:
		return c.err
	}
}

// An idle event loop may not acknowledge Debugger.pause until JavaScript next
// executes. This no-op supplies that turn. Its reply is intentionally ignored:
// evaluation cannot finish until the user resumes the now-paused target.
// Give this debugger-generated frame a recognizable source name in DevTools.
func (c *cdpClient) wake(ctx context.Context, session string) error {
	ctx, cancel := context.WithTimeout(ctx, 10*time.Second)
	defer cancel()
	c.mu.Lock()
	c.next++
	id := c.next
	c.mu.Unlock()
	return wsjson.Write(ctx, c.conn, cdpMessage{
		ID: id, SessionID: session, Method: "Runtime.evaluate",
		Params: json.RawMessage(`{"expression":"void 0\n//# sourceURL=llgo-worker-control.js","silent":true,"returnByValue":true}`),
	})
}

func chromeEndpoint(ctx context.Context, profile string) (string, error) {
	ticker := time.NewTicker(50 * time.Millisecond)
	defer ticker.Stop()
	for {
		data, err := os.ReadFile(filepath.Join(profile, "DevToolsActivePort"))
		if err == nil {
			lines := strings.Fields(string(data))
			if len(lines) == 2 {
				port, err := strconv.Atoi(lines[0])
				if err == nil && port > 0 && port <= 65535 && strings.HasPrefix(lines[1], "/devtools/browser/") {
					return fmt.Sprintf("ws://127.0.0.1:%d%s", port, lines[1]), nil
				}
			}
		}
		select {
		case <-ctx.Done():
			return "", fmt.Errorf("wait for Chromium debugger: %w", ctx.Err())
		case <-ticker.C:
		}
	}
}

type controlledTarget struct {
	paused        bool
	pausePending  bool
	resumePending bool
	waiting       bool
}

func (g *workerGroup) attach(session string, waiting bool) []cdpMessage {
	target := &controlledTarget{waiting: waiting}
	g.targets[session] = target
	g.epoch++
	if g.stopping {
		// Keep a new worker at Chrome's startup barrier until the group
		// resumes. Releasing it just to request a debugger pause races
		// DevTools initialization and can execute guest code during a stop.
		target.paused = waiting
		return g.pauseRunning()
	}
	if waiting {
		target.waiting = false
		return []cdpMessage{{Method: "Runtime.runIfWaitingForDebugger", SessionID: session}}
	}
	return nil
}

type workerGroup struct {
	targets  map[string]*controlledTarget
	stopping bool
	epoch    uint64
	ready    bool
}

func (g *workerGroup) snapshot() workerSnapshot {
	paused := g.stopping && len(g.targets) != 0
	var sessions []string
	for session, target := range g.targets {
		paused = paused && target.paused && !target.resumePending
		sessions = append(sessions, session)
	}
	return workerSnapshot{Enabled: true, Ready: g.ready, Paused: paused, StopID: g.epoch, Targets: len(g.targets), sessions: sessions}
}

// Each membership or execution change invalidates the previous shared-memory
// stop. The epoch stays stable only while every tracked target remains paused.
func (g *workerGroup) event(method, session string) []cdpMessage {
	var commands []cdpMessage
	switch method {
	case "Target.detachedFromTarget":
		if g.targets[session] == nil {
			return nil
		}
		delete(g.targets, session)
		g.epoch++
	case "Debugger.paused":
		target := g.targets[session]
		if target == nil {
			return nil
		}
		target.paused = true
		target.pausePending = false
		if !g.stopping {
			g.stopping = true
			g.epoch++
		}
	case "Debugger.resumed":
		target := g.targets[session]
		if target == nil {
			return nil
		}
		target.paused = false
		if target.resumePending {
			target.resumePending = false
			if g.stopping {
				target.pausePending = true
				return []cdpMessage{{Method: "Debugger.pause", SessionID: session}}
			}
			return nil
		}
		g.stopping = false
		g.epoch++
		for id, other := range g.targets {
			if id != session && other.paused && !other.resumePending {
				if other.waiting {
					other.waiting, other.paused = false, false
					commands = append(commands, cdpMessage{Method: "Runtime.runIfWaitingForDebugger", SessionID: id})
					continue
				}
				other.resumePending = true
				commands = append(commands, cdpMessage{Method: "Debugger.resume", SessionID: id})
			}
		}
		return commands
	}
	return g.pauseRunning()
}

func (g *workerGroup) pauseRunning() []cdpMessage {
	var commands []cdpMessage
	if g.stopping {
		for id, target := range g.targets {
			if !target.paused && !target.resumePending && !target.pausePending {
				target.pausePending = true
				commands = append(commands, cdpMessage{Method: "Debugger.pause", SessionID: id})
			}
		}
	}
	return commands
}

func (control *workerControl) run(ctx context.Context, profile, pageURL string) error {
	startup, cancel := context.WithTimeout(ctx, 20*time.Second)
	defer cancel()
	endpoint, err := chromeEndpoint(startup, profile)
	if err != nil {
		return err
	}
	client, err := newCDPClient(ctx, endpoint)
	if err != nil {
		return err
	}
	defer client.conn.CloseNow()
	control.client.Store(client)
	var pageID string
	for pageID == "" {
		var targets struct {
			Infos []struct {
				ID   string `json:"targetId"`
				Type string `json:"type"`
				URL  string `json:"url"`
			} `json:"targetInfos"`
		}
		if err := client.call(startup, "", "Target.getTargets", map[string]any{}, &targets); err != nil {
			return err
		}
		for _, target := range targets.Infos {
			if target.Type == "page" && strings.HasPrefix(target.URL, pageURL) {
				pageID = target.ID
				break
			}
		}
		if pageID == "" {
			select {
			case <-startup.Done():
				return errors.New("LLGo browser page did not appear")
			case <-time.After(50 * time.Millisecond):
			}
		}
	}
	if err := client.call(startup, "", "Target.attachToTarget", map[string]any{"targetId": pageID, "flatten": true}, nil); err != nil {
		return err
	}
	group := workerGroup{targets: make(map[string]*controlledTarget)}
	for {
		select {
		case <-ctx.Done():
			return ctx.Err()
		case <-client.done:
			return client.err
		case event := <-client.events:
			session := event.SessionID
			var commands []cdpMessage
			switch event.Method {
			case "Target.attachedToTarget":
				var attached struct {
					SessionID          string `json:"sessionId"`
					WaitingForDebugger bool   `json:"waitingForDebugger"`
					Target             struct {
						ID   string `json:"targetId"`
						Type string `json:"type"`
					} `json:"targetInfo"`
				}
				if err := json.Unmarshal(event.Params, &attached); err != nil {
					return err
				}
				if attached.Target.ID != pageID && (group.targets[session] == nil || attached.Target.Type != "worker") {
					control.applied.Store(event.sequence)
					continue
				}
				session = attached.SessionID
				commands = group.attach(session, attached.WaitingForDebugger)
				control.state.Store(ptrWorkerSnapshot(group.snapshot()))
				if err := initializeWorkerTarget(ctx, client, session); err != nil {
					if closedCDPTarget(err) {
						group.event("Target.detachedFromTarget", session)
						control.state.Store(ptrWorkerSnapshot(group.snapshot()))
						control.applied.Store(event.sequence)
						continue
					}
					return err
				}
				group.ready = true
			case "Target.detachedFromTarget":
				var detached struct {
					SessionID string `json:"sessionId"`
				}
				if err := json.Unmarshal(event.Params, &detached); err != nil {
					return err
				}
				commands = group.event(event.Method, detached.SessionID)
			default:
				// Chrome reports resumed immediately before detaching a
				// terminated worker. Do not turn that lifecycle notification
				// into a user request to resume the surviving workers.
				if target := group.targets[session]; event.Method == "Debugger.resumed" && target != nil && !target.resumePending {
					if err := client.call(ctx, session, "Runtime.getIsolateId", map[string]any{}, nil); err != nil {
						if !closedCDPTarget(err) {
							return err
						}
						commands = group.event("Target.detachedFromTarget", session)
						break
					}
				}
				commands = group.event(event.Method, session)
			}
			control.state.Store(ptrWorkerSnapshot(group.snapshot()))
			for _, command := range commands {
				if err := client.call(ctx, command.SessionID, command.Method, map[string]any{}, nil); err != nil {
					if closedCDPTarget(err) {
						group.event("Target.detachedFromTarget", command.SessionID)
						control.state.Store(ptrWorkerSnapshot(group.snapshot()))
						continue
					}
					return err
				}
				if command.Method == "Debugger.pause" {
					if err := client.wake(ctx, command.SessionID); err != nil {
						return err
					}
				}
			}
			control.applied.Store(event.sequence)
		}
	}
}

func ptrWorkerSnapshot(state workerSnapshot) *workerSnapshot { return &state }

func initializeWorkerTarget(ctx context.Context, client *cdpClient, session string) error {
	if err := client.call(ctx, session, "Debugger.enable", map[string]any{}, nil); err != nil {
		return err
	}
	return client.call(ctx, session, "Target.setAutoAttach", map[string]any{
		"autoAttach": true, "waitForDebuggerOnStart": true, "flatten": true,
		"filter": []map[string]any{{"type": "worker"}, {"exclude": true}},
	}, nil)
}

func closedCDPTarget(err error) bool {
	message := err.Error()
	return strings.Contains(message, "Session with given id not found") ||
		strings.Contains(message, "Target closed") || strings.Contains(message, "No target with given id") ||
		strings.Contains(message, "Inspected target navigated or closed")
}
