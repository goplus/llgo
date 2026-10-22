//go:build unix

package goroot

import (
	"bufio"
	"bytes"
	"context"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strconv"
	"strings"
	"syscall"
	"testing"
	"time"
)

func configureProcessGroup(cmd *exec.Cmd) {
	cmd.SysProcAttr = &syscall.SysProcAttr{Setpgid: true}
}

type processTree struct {
	cmd *exec.Cmd
}

func newProcessTree(cmd *exec.Cmd) (*processTree, error) {
	return &processTree{cmd: cmd}, nil
}

func (tree *processTree) close() {}

func (tree *processTree) rss() (uint64, error) {
	return processGroupRSS(tree.cmd.Process.Pid)
}

func (tree *processTree) kill() {
	cmd := tree.cmd
	if cmd.Process == nil {
		return
	}
	_ = syscall.Kill(-cmd.Process.Pid, syscall.SIGKILL)
}

func resourceMonitoringSupported() bool { return true }

var processRSSQueryTimeout = time.Second

func processGroupRSS(processGroupID int) (uint64, error) {
	// A slow process-table query must not block the command's wait or
	// timeout channels. A failed sample is retried on the next RSS tick.
	ctx, cancel := context.WithTimeout(context.Background(), processRSSQueryTimeout)
	defer cancel()
	type queryResult struct {
		output []byte
		err    error
	}
	result := make(chan queryResult, 1)
	go func() {
		args := []string{"-axo", "pgid=,rss="}
		if runtime.GOOS == "darwin" {
			// Reading RSS for every process can stall on unrelated Mach tasks.
			// BSD ps -g selects the entire process group, including descendants.
			args = []string{"-g", strconv.Itoa(processGroupID), "-o", "pgid=,rss="}
		}
		output, err := exec.CommandContext(ctx, "ps", args...).Output()
		result <- queryResult{output, err}
	}()
	var output []byte
	var err error
	select {
	case query := <-result:
		output, err = query.output, query.err
	case <-ctx.Done():
		return 0, ctx.Err()
	}
	if ctx.Err() != nil {
		return 0, ctx.Err()
	}
	if err != nil {
		return 0, err
	}
	var totalKiB uint64
	scanner := bufio.NewScanner(bytes.NewReader(output))
	for scanner.Scan() {
		fields := bytes.Fields(scanner.Bytes())
		if len(fields) != 2 {
			continue
		}
		pgid, err := strconv.Atoi(string(fields[0]))
		if err != nil || pgid != processGroupID {
			continue
		}
		rssKiB, err := strconv.ParseUint(string(fields[1]), 10, 64)
		if err != nil {
			return 0, fmt.Errorf("parse RSS from ps output %q: %w", scanner.Text(), err)
		}
		totalKiB += rssKiB
	}
	if err := scanner.Err(); err != nil {
		return 0, err
	}
	return totalKiB << 10, nil
}

func TestProcessGroupRSSQueryIsBounded(t *testing.T) {
	dir := t.TempDir()
	if err := os.WriteFile(filepath.Join(dir, "ps"), []byte("#!/bin/sh\nexec /bin/sleep 2\n"), 0o755); err != nil {
		t.Fatal(err)
	}
	t.Setenv("PATH", dir+string(os.PathListSeparator)+os.Getenv("PATH"))
	previous := processRSSQueryTimeout
	processRSSQueryTimeout = 20 * time.Millisecond
	t.Cleanup(func() { processRSSQueryTimeout = previous })
	start := time.Now()
	if _, err := processGroupRSS(os.Getpid()); !errors.Is(err, context.DeadlineExceeded) {
		t.Fatalf("slow RSS query error = %v, want deadline exceeded", err)
	}
	if elapsed := time.Since(start); elapsed >= time.Second {
		t.Fatalf("slow RSS query took %s, want bounded return", elapsed)
	}
}

func TestRunProgramDeadlineAfterSlowRSSQuery(t *testing.T) {
	disableSystemMemoryLimits(t)
	dir := t.TempDir()
	if err := os.WriteFile(filepath.Join(dir, "ps"), []byte("#!/bin/sh\nexec /bin/sleep 6\n"), 0o755); err != nil {
		t.Fatal(err)
	}
	t.Setenv("PATH", dir+string(os.PathListSeparator)+os.Getenv("PATH"))
	previousTimeout, previousPoll := processRSSQueryTimeout, *flagRSSPoll
	processRSSQueryTimeout, *flagRSSPoll = 5*time.Second, 5*time.Millisecond
	t.Cleanup(func() { processRSSQueryTimeout, *flagRSSPoll = previousTimeout, previousPoll })
	// Both children exit while sampling is still running. Their actual wait
	// completion time decides the deadline, rather than select's random pick.
	// Leave seconds of scheduling headroom for the before-deadline child:
	// a 150ms deadline can expire under concurrent CI coverage workloads.
	for _, tc := range []struct {
		name, sleep string
		wantTimeout bool
	}{
		{"before-deadline", "0.05", false},
		{"after-deadline", "4", true},
	} {
		t.Run(tc.name, func(t *testing.T) {
			_, _, exitCode, _, err := runProgram(t.TempDir(), "/bin/sh", os.Environ(),
				3*time.Second, "-c", "sleep "+tc.sleep)
			if tc.wantTimeout {
				if err == nil || !strings.Contains(err.Error(), "timed out after") {
					t.Fatalf("late child error = %v, want timeout", err)
				}
			} else if err != nil || exitCode != 0 {
				t.Fatalf("completed child was reported as timed out: exit=%d, err=%v", exitCode, err)
			}
		})
	}
}

func TestRunProgramWaitDelayCleansDescendant(t *testing.T) {
	guardTestTimeout(t)
	disableSystemMemoryLimits(t)

	oldWaitDelay := runProgramWaitDelay
	runProgramWaitDelay = 100 * time.Millisecond
	t.Cleanup(func() { runProgramWaitDelay = oldWaitDelay })

	for _, exitCode := range []int{0, 7} {
		t.Run(fmt.Sprintf("exit-%d", exitCode), func(t *testing.T) {
			pidFile := filepath.Join(t.TempDir(), "descendant.pid")
			script := `sleep 60 & echo $! > "$1"; exit "$2"`
			_, _, gotExitCode, elapsed, err := runProgram(
				t.TempDir(),
				"/bin/sh",
				os.Environ(),
				5*time.Second,
				"-c", script, "sh", pidFile, strconv.Itoa(exitCode),
			)
			if exitCode == 0 {
				if !errors.Is(err, exec.ErrWaitDelay) {
					t.Fatalf("runProgram error = %v, want exec.ErrWaitDelay", err)
				}
			} else {
				if err != nil {
					t.Fatalf("runProgram error = %v, want nil ExitError wrapper", err)
				}
				if gotExitCode != exitCode {
					t.Fatalf("exit code = %d, want %d", gotExitCode, exitCode)
				}
			}
			if elapsed >= 5*time.Second {
				t.Fatalf("runProgram took %s, want bounded WaitDelay return", elapsed)
			}

			pidBytes, readErr := os.ReadFile(pidFile)
			if readErr != nil {
				t.Fatal(readErr)
			}
			pid, parseErr := strconv.Atoi(string(bytes.TrimSpace(pidBytes)))
			if parseErr != nil {
				t.Fatalf("parse descendant PID %q: %v", pidBytes, parseErr)
			}
			t.Cleanup(func() { _ = syscall.Kill(pid, syscall.SIGKILL) })

			deadline := time.Now().Add(2 * time.Second)
			for {
				exited, probeErr := processHasExited(pid)
				if probeErr != nil {
					t.Fatalf("probe descendant %d: %v", pid, probeErr)
				}
				if exited {
					break
				}
				if time.Now().After(deadline) {
					t.Fatalf("descendant %d is still running after runProgram returned", pid)
				}
				time.Sleep(10 * time.Millisecond)
			}
		})
	}
}

func processHasExited(pid int) (bool, error) {
	err := syscall.Kill(pid, 0)
	if errors.Is(err, syscall.ESRCH) {
		return true, nil
	}
	if err != nil || runtime.GOOS != "linux" {
		return false, err
	}
	// A container's PID 1 need not reap orphaned descendants. kill(pid, 0)
	// still succeeds for a zombie, although the process has already terminated.
	stat, err := os.ReadFile(fmt.Sprintf("/proc/%d/stat", pid))
	if os.IsNotExist(err) || errors.Is(err, syscall.ESRCH) {
		return true, nil // Reaped between the signal probe and the proc read.
	}
	if err != nil {
		return false, err
	}
	return procStatHasExited(stat)
}

func procStatHasExited(stat []byte) (bool, error) {
	// comm may contain spaces and parentheses; state follows the last ')'.
	end := bytes.LastIndexByte(stat, ')')
	if end < 0 || end+3 >= len(stat) || stat[end+1] != ' ' || stat[end+3] != ' ' {
		return false, fmt.Errorf("invalid process stat %q", stat)
	}
	return stat[end+2] == 'Z' || stat[end+2] == 'X', nil
}

func TestProcStatHasExited(t *testing.T) {
	for _, tt := range []struct {
		stat    string
		exited  bool
		invalid bool
	}{
		{"42 (sleep) S 1 42 0", false, false},
		{"42 (sleep) R 1 42 0", false, false},
		{"42 (sleep) Z 1 42 0", true, false},
		{"42 (a name ) with parentheses) Z 1 42 0", true, false},
		{"42 (foo)bar) Z 1 42 0", true, false},
		{"42 (sleep) X 1 42 0", true, false},
		{"", false, true},
		{"42 (sleep)", false, true},
		{"42 (sleep) Z", false, true},
	} {
		t.Run(tt.stat, func(t *testing.T) {
			got, err := procStatHasExited([]byte(tt.stat))
			if got != tt.exited || (err != nil) != tt.invalid {
				t.Fatalf("process stat = %v, %v; want exited=%v, invalid=%v", got, err, tt.exited, tt.invalid)
			}
		})
	}
}

func TestProcessHasExited(t *testing.T) {
	guardTestTimeout(t)
	if exited, err := processHasExited(os.Getpid()); err != nil || exited {
		t.Fatalf("live process: exited=%v, err=%v", exited, err)
	}
	cmd := exec.Command("/bin/sh", "-c", "exit 0")
	if err := cmd.Start(); err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() { _ = cmd.Wait() })
	if runtime.GOOS == "linux" {
		// Leave our child unreaped so this test does not depend on PID 1's
		// behavior, even on a host with a fully functioning init process.
		deadline := time.Now().Add(2 * time.Second)
		for {
			exited, err := processHasExited(cmd.Process.Pid)
			if err != nil {
				t.Fatal(err)
			}
			if exited {
				break
			}
			if time.Now().After(deadline) {
				t.Fatal("terminated but unreaped child was reported as running")
			}
			time.Sleep(time.Millisecond)
		}
	}
	if err := cmd.Wait(); err != nil {
		t.Fatal(err)
	}
	if exited, err := processHasExited(cmd.Process.Pid); err != nil || !exited {
		t.Fatalf("reaped child: exited=%v, err=%v", exited, err)
	}
}
