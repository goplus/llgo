package slog_test

import (
	"bytes"
	"context"
	"encoding/json"
	"log"
	"log/slog"
	"strings"
	"testing"
	"time"
)

type secretValuer struct{}

func (secretValuer) LogValue() slog.Value {
	return slog.StringValue("redacted")
}

func TestTextAndJSONHandlers(t *testing.T) {
	ctx := context.Background()

	var textBuf bytes.Buffer
	th := slog.NewTextHandler(&textBuf, &slog.HandlerOptions{
		Level: slog.LevelDebug,
		ReplaceAttr: func(groups []string, a slog.Attr) slog.Attr {
			if len(groups) == 0 && a.Key == slog.MessageKey {
				return slog.String("message", a.Value.String())
			}
			return a
		},
	})
	if !th.Enabled(ctx, slog.LevelInfo) {
		t.Fatal("TextHandler should enable info")
	}

	r := slog.NewRecord(time.Now(), slog.LevelInfo, "hello", 0)
	r.AddAttrs(slog.String("k", "v"))
	if err := th.Handle(ctx, r); err != nil {
		t.Fatalf("TextHandler.Handle: %v", err)
	}
	if !strings.Contains(textBuf.String(), "message=hello") {
		t.Fatalf("Text output missing replaced message key: %q", textBuf.String())
	}

	twh := th.WithAttrs([]slog.Attr{slog.String("svc", "api")}).WithGroup("req")
	lg := slog.New(twh)
	lg.Info("call", "id", 7)
	twg := th.WithGroup("direct")
	slog.New(twg).Info("direct-call", "k", 1)
	out := textBuf.String()
	if !strings.Contains(out, "svc=api") || !strings.Contains(out, "req.id=7") {
		t.Fatalf("Text output missing grouped attrs: %q", out)
	}
	if !strings.Contains(out, "direct.k=1") {
		t.Fatalf("Text output missing direct WithGroup field: %q", out)
	}
	if !strings.Contains(out, slog.LevelKey) || !strings.Contains(out, slog.TimeKey) {
		t.Fatalf("Text output missing standard keys: %q", out)
	}
	if slog.SourceKey != "source" {
		t.Fatalf("unexpected SourceKey: %q", slog.SourceKey)
	}

	var jsonBuf bytes.Buffer
	jh := slog.NewJSONHandler(&jsonBuf, &slog.HandlerOptions{Level: slog.LevelDebug})
	if !jh.Enabled(ctx, slog.LevelInfo) {
		t.Fatal("JSONHandler should enable info")
	}
	r2 := slog.NewRecord(time.Now(), slog.LevelWarn, "json-msg", 0)
	r2.AddAttrs(slog.Int("n", 3))
	if err := jh.Handle(ctx, r2); err != nil {
		t.Fatalf("JSONHandler.Handle: %v", err)
	}
	if !strings.Contains(jsonBuf.String(), `"msg":"json-msg"`) {
		t.Fatalf("JSON output missing msg: %q", jsonBuf.String())
	}
	if !strings.Contains(jsonBuf.String(), `"n":3`) {
		t.Fatalf("JSON output missing attr: %q", jsonBuf.String())
	}
	jhWithAttrs := jh.WithAttrs([]slog.Attr{slog.String("a", "b")})
	if jhWithAttrs == nil {
		t.Fatal("JSONHandler.WithAttrs returned nil")
	}
	jhWithGroup := jh.WithGroup("g")
	if jhWithGroup == nil {
		t.Fatal("JSONHandler.WithGroup returned nil")
	}
}

func TestLoggerTopLevelAndMethods(t *testing.T) {
	ctx := context.Background()
	oldDefault := slog.Default()
	defer slog.SetDefault(oldDefault)

	var buf bytes.Buffer
	logger := slog.New(slog.NewTextHandler(&buf, &slog.HandlerOptions{Level: slog.LevelDebug}))
	slog.SetDefault(logger)

	if slog.Default() == nil {
		t.Fatal("Default logger is nil")
	}
	if !logger.Enabled(ctx, slog.LevelInfo) {
		t.Fatal("logger should enable info")
	}
	if logger.Handler() == nil {
		t.Fatal("logger handler is nil")
	}

	logger.Debug("d1", "a", 1)
	logger.DebugContext(ctx, "d2", "a", 2)
	logger.Info("i1", "a", 3)
	logger.InfoContext(ctx, "i2", "a", 4)
	logger.Warn("w1", "a", 5)
	logger.WarnContext(ctx, "w2", "a", 6)
	logger.Error("e1", "a", 7)
	logger.ErrorContext(ctx, "e2", "a", 8)
	logger.Log(ctx, slog.LevelInfo, "l1", "a", 9)
	logger.LogAttrs(ctx, slog.LevelInfo, "l2", slog.Int("a", 10))

	slog.Debug("td1", "x", 1)
	slog.DebugContext(ctx, "td2", "x", 2)
	slog.Info("ti1", "x", 3)
	slog.InfoContext(ctx, "ti2", "x", 4)
	slog.Warn("tw1", "x", 5)
	slog.WarnContext(ctx, "tw2", "x", 6)
	slog.Error("te1", "x", 7)
	slog.ErrorContext(ctx, "te2", "x", 8)
	slog.Log(ctx, slog.LevelInfo, "tl1", "x", 9)
	slog.LogAttrs(ctx, slog.LevelInfo, "tl2", slog.Int("x", 10))

	slog.With("scope", "pkg").Info("with-info", "k", "v")
	logger.With("scope", "logger").WithGroup("g").Info("with-group", "k", "v")

	out := buf.String()
	for _, msg := range []string{"d1", "i1", "w1", "e1", "tl2", "with-group"} {
		if !strings.Contains(out, "msg="+msg) {
			t.Fatalf("missing log message %q in output: %q", msg, out)
		}
	}
	if !strings.Contains(out, "g.k=v") {
		t.Fatalf("missing grouped logger field in output: %q", out)
	}
}

func TestLevelAndLevelVar(t *testing.T) {
	if got := slog.LevelDebug.String(); got == "" {
		t.Fatal("LevelDebug.String empty")
	}
	if got := slog.LevelWarn.Level(); got != slog.LevelWarn {
		t.Fatalf("Level().got=%v want=%v", got, slog.LevelWarn)
	}

	var l slog.Level
	if err := l.UnmarshalText([]byte("ERROR")); err != nil {
		t.Fatalf("Level.UnmarshalText: %v", err)
	}
	if l != slog.LevelError {
		t.Fatalf("UnmarshalText level = %v, want %v", l, slog.LevelError)
	}
	text, err := l.MarshalText()
	if err != nil || !strings.Contains(string(text), "ERROR") {
		t.Fatalf("Level.MarshalText = %q, %v", text, err)
	}
	appended, err := l.AppendText([]byte("L="))
	if err != nil || !strings.Contains(string(appended), "ERROR") {
		t.Fatalf("Level.AppendText = %q, %v", appended, err)
	}
	j, err := l.MarshalJSON()
	if err != nil {
		t.Fatalf("Level.MarshalJSON: %v", err)
	}
	var l2 slog.Level
	if err := l2.UnmarshalJSON(j); err != nil {
		t.Fatalf("Level.UnmarshalJSON: %v", err)
	}
	if l2 != l {
		t.Fatalf("Level roundtrip mismatch: %v != %v", l2, l)
	}

	var lv slog.LevelVar
	if lv.Level() != slog.LevelInfo {
		t.Fatalf("LevelVar default = %v, want %v", lv.Level(), slog.LevelInfo)
	}
	lv.Set(slog.LevelDebug)
	if lv.Level() != slog.LevelDebug {
		t.Fatalf("LevelVar.Set failed: %v", lv.Level())
	}
	if _, err := lv.AppendText(nil); err != nil {
		t.Fatalf("LevelVar.AppendText: %v", err)
	}
	if _, err := lv.MarshalText(); err != nil {
		t.Fatalf("LevelVar.MarshalText: %v", err)
	}
	if err := lv.UnmarshalText([]byte("WARN")); err != nil {
		t.Fatalf("LevelVar.UnmarshalText: %v", err)
	}
	if lv.String() == "" {
		t.Fatal("LevelVar.String empty")
	}

	old := slog.SetLogLoggerLevel(slog.LevelInfo)
	prev := slog.SetLogLoggerLevel(old)
	if prev != slog.LevelInfo {
		t.Fatalf("SetLogLoggerLevel restore returned %v, want %v", prev, slog.LevelInfo)
	}
}

func TestRecordAttrAndValue(t *testing.T) {
	ctx := context.Background()
	now := time.Now().Round(0)

	r := slog.NewRecord(now, slog.LevelInfo, "msg", 0)
	r.Add("k", "v")
	r.AddAttrs(
		slog.Any("any", map[string]int{"a": 1}),
		slog.Bool("b", true),
		slog.Duration("dur", time.Second),
		slog.Float64("f", 1.5),
		slog.Group("grp", "x", 1),
		slog.Int("i", 2),
		slog.Int64("i64", 3),
		slog.String("s", "x"),
		slog.Time("t", now),
		slog.Uint64("u", 4),
	)
	if r.NumAttrs() < 10 {
		t.Fatalf("NumAttrs too small: %d", r.NumAttrs())
	}

	clone := r.Clone()
	clone.Add("extra", 1)
	if clone.NumAttrs() <= r.NumAttrs() {
		t.Fatalf("Clone/Add should not affect original: clone=%d, orig=%d", clone.NumAttrs(), r.NumAttrs())
	}

	seen := map[string]bool{}
	r.Attrs(func(a slog.Attr) bool {
		seen[a.Key] = true
		if a.String() == "" {
			t.Fatalf("Attr.String empty for key %q", a.Key)
		}
		return true
	})
	if !seen["k"] || !seen["i"] {
		t.Fatalf("Attrs iteration missing keys: %#v", seen)
	}

	a1 := slog.Int("n", 1)
	a2 := slog.Int("n", 1)
	if !a1.Equal(a2) {
		t.Fatalf("Attr.Equal false for equal attrs: %v vs %v", a1, a2)
	}

	vals := []slog.Value{
		slog.AnyValue("x"),
		slog.BoolValue(true),
		slog.DurationValue(time.Second),
		slog.Float64Value(1.25),
		slog.GroupValue(slog.String("k", "v")),
		slog.Int64Value(7),
		slog.IntValue(8),
		slog.StringValue("s"),
		slog.TimeValue(now),
		slog.Uint64Value(9),
		slog.AnyValue(secretValuer{}),
	}
	for _, v := range vals {
		if v.Kind().String() == "" {
			t.Fatalf("Kind.String empty for value: %v", v)
		}
		if v.String() == "" {
			t.Fatalf("Value.String empty for kind: %v", v.Kind())
		}
		if v.Any() == nil {
			t.Fatalf("Value.Any returned nil for kind: %v", v.Kind())
		}
	}
	if !slog.BoolValue(true).Bool() {
		t.Fatal("BoolValue.Bool false")
	}
	if slog.DurationValue(time.Second).Duration() != time.Second {
		t.Fatal("DurationValue.Duration mismatch")
	}
	if slog.Float64Value(1.25).Float64() != 1.25 {
		t.Fatal("Float64Value.Float64 mismatch")
	}
	if slog.Int64Value(7).Int64() != 7 {
		t.Fatal("Int64Value.Int64 mismatch")
	}
	if slog.Uint64Value(9).Uint64() != 9 {
		t.Fatal("Uint64Value.Uint64 mismatch")
	}
	if !slog.TimeValue(now).Time().Equal(now) {
		t.Fatal("TimeValue.Time mismatch")
	}
	if len(slog.GroupValue(slog.Int("x", 1)).Group()) != 1 {
		t.Fatal("GroupValue.Group size mismatch")
	}
	if !slog.StringValue("s").Equal(slog.StringValue("s")) {
		t.Fatal("Value.Equal false for equal values")
	}

	lv := slog.AnyValue(secretValuer{})
	if lv.LogValuer() == nil {
		t.Fatal("Value.LogValuer returned nil")
	}
	if resolved := lv.Resolve(); resolved.String() != "redacted" {
		t.Fatalf("Value.Resolve mismatch: %q", resolved.String())
	}

	var out bytes.Buffer
	lh := slog.NewTextHandler(&out, &slog.HandlerOptions{Level: slog.LevelDebug})
	slog.New(lh).Log(ctx, slog.LevelInfo, "vtest", slog.Any("secret", secretValuer{}))
	if !strings.Contains(out.String(), "redacted") {
		t.Fatalf("LogValuer output missing resolved value: %q", out.String())
	}

	src := slog.Source{Function: "f", File: "f.go", Line: 12}
	b, err := json.Marshal(src)
	if err != nil {
		t.Fatalf("json.Marshal(Source): %v", err)
	}
	if !strings.Contains(string(b), `"line":12`) {
		t.Fatalf("Source JSON mismatch: %s", string(b))
	}
}

func TestNewLogLoggerAndInterfaces(t *testing.T) {
	var _ slog.Handler = slog.NewTextHandler(&bytes.Buffer{}, nil)
	var _ slog.Leveler = &slog.LevelVar{}
	var _ slog.LogValuer = secretValuer{}

	var buf bytes.Buffer
	std := slog.NewLogLogger(slog.NewTextHandler(&buf, &slog.HandlerOptions{Level: slog.LevelInfo}), slog.LevelInfo)
	std.Print("std-log")
	if !strings.Contains(buf.String(), "std-log") {
		t.Fatalf("NewLogLogger output mismatch: %q", buf.String())
	}

	// Keep package log reachable through slog redirection path.
	if log.Flags() < 0 {
		t.Fatalf("log.Flags should be non-negative, got %d", log.Flags())
	}
}
