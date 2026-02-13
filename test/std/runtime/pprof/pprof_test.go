package pprof_test

import (
	"bytes"
	"context"
	"runtime/pprof"
	"testing"
)

func TestStartStopCPUProfile(t *testing.T) {
	var buf bytes.Buffer
	err := pprof.StartCPUProfile(&buf)
	if err != nil {
		t.Fatalf("StartCPUProfile failed: %v", err)
	}
	defer pprof.StopCPUProfile()

	for i := 0; i < 1000; i++ {
		_ = i * i
	}

	pprof.StopCPUProfile()

	if buf.Len() == 0 {
		t.Error("CPU profile is empty")
	}
}

func TestStartCPUProfileTwice(t *testing.T) {
	var buf bytes.Buffer
	err := pprof.StartCPUProfile(&buf)
	if err != nil {
		t.Fatalf("StartCPUProfile failed: %v", err)
	}
	defer pprof.StopCPUProfile()

	err = pprof.StartCPUProfile(&buf)
	if err == nil {
		t.Error("StartCPUProfile should fail when already profiling")
	}

	pprof.StopCPUProfile()
}

func TestWriteHeapProfile(t *testing.T) {
	var buf bytes.Buffer
	err := pprof.WriteHeapProfile(&buf)
	if err != nil {
		t.Fatalf("WriteHeapProfile failed: %v", err)
	}

	if buf.Len() == 0 {
		t.Error("Heap profile is empty")
	}
}

func TestLookup(t *testing.T) {
	profiles := []string{
		"goroutine",
		"heap",
		"allocs",
		"threadcreate",
		"block",
		"mutex",
	}

	for _, name := range profiles {
		p := pprof.Lookup(name)
		if p == nil {
			t.Errorf("Lookup(%q) returned nil", name)
		} else if p.Name() != name {
			t.Errorf("Profile.Name() = %q, want %q", p.Name(), name)
		}
	}

	nonExistent := pprof.Lookup("nonexistent")
	if nonExistent != nil {
		t.Error("Lookup for non-existent profile should return nil")
	}
}

func TestProfiles(t *testing.T) {
	profiles := pprof.Profiles()
	if len(profiles) == 0 {
		t.Fatal("Profiles() returned empty slice")
	}

	foundGoroutine := false
	for _, p := range profiles {
		if p.Name() == "goroutine" {
			foundGoroutine = true
			break
		}
	}
	if !foundGoroutine {
		t.Error("goroutine profile not found in Profiles()")
	}
}

func TestNewProfile(t *testing.T) {
	name := "test-profile"
	p := pprof.NewProfile(name)
	if p == nil {
		t.Fatal("NewProfile returned nil")
	}
	if p.Name() != name {
		t.Errorf("Profile.Name() = %q, want %q", p.Name(), name)
	}

	lookup := pprof.Lookup(name)
	if lookup != p {
		t.Error("Lookup did not return the newly created profile")
	}
}

func TestProfileCount(t *testing.T) {
	p := pprof.Lookup("goroutine")
	if p == nil {
		t.Fatal("goroutine profile not found")
	}

	count := p.Count()
	if count <= 0 {
		t.Errorf("Profile.Count() = %d, want > 0", count)
	}
}

func TestProfileWriteTo(t *testing.T) {
	p := pprof.Lookup("goroutine")
	if p == nil {
		t.Fatal("goroutine profile not found")
	}

	var buf bytes.Buffer
	err := p.WriteTo(&buf, 0)
	if err != nil {
		t.Fatalf("Profile.WriteTo failed: %v", err)
	}

	if buf.Len() == 0 {
		t.Error("Profile.WriteTo produced empty output")
	}
}

func TestLabels(t *testing.T) {
	labels := pprof.Labels("key1", "value1", "key2", "value2")
	_ = labels
}

func TestWithLabels(t *testing.T) {
	labels := pprof.Labels("testkey", "testvalue")
	ctx := pprof.WithLabels(context.Background(), labels)

	value, ok := pprof.Label(ctx, "testkey")
	if !ok {
		t.Error("Label not found in context")
	}
	if value != "testvalue" {
		t.Errorf("Label value = %q, want testvalue", value)
	}

	_, ok = pprof.Label(ctx, "nonexistent")
	if ok {
		t.Error("Label should not be found for non-existent key")
	}
}

func TestForLabels(t *testing.T) {
	labels := pprof.Labels("key1", "value1", "key2", "value2")
	ctx := pprof.WithLabels(context.Background(), labels)

	found := make(map[string]string)
	pprof.ForLabels(ctx, func(key, value string) bool {
		found[key] = value
		return true
	})

	if len(found) != 2 {
		t.Errorf("ForLabels found %d labels, want 2", len(found))
	}
	if found["key1"] != "value1" {
		t.Errorf("found[key1] = %q, want value1", found["key1"])
	}
	if found["key2"] != "value2" {
		t.Errorf("found[key2] = %q, want value2", found["key2"])
	}
}

func TestSetGoroutineLabels(t *testing.T) {
	labels := pprof.Labels("goroutine-key", "goroutine-value")
	ctx := pprof.WithLabels(context.Background(), labels)

	pprof.SetGoroutineLabels(ctx)
}

func TestDo(t *testing.T) {
	labels := pprof.Labels("do-key", "do-value")

	executed := false
	pprof.Do(context.Background(), labels, func(ctx context.Context) {
		executed = true

		value, ok := pprof.Label(ctx, "do-key")
		if !ok {
			t.Error("Label not found in Do context")
		}
		if value != "do-value" {
			t.Errorf("Label value = %q, want do-value", value)
		}
	})

	if !executed {
		t.Error("Do function was not executed")
	}
}

func TestProfileRemove(t *testing.T) {
	name := "test-removable-profile"
	p := pprof.NewProfile(name)
	if p == nil {
		t.Fatal("NewProfile returned nil")
	}

	dummy := 0
	p.Add(&dummy, 0)

	count := p.Count()
	if count != 1 {
		t.Errorf("Profile.Count() = %d, want 1", count)
	}

	p.Remove(&dummy)

	count = p.Count()
	if count != 0 {
		t.Errorf("After Remove, Profile.Count() = %d, want 0", count)
	}
}

func TestProfileName(t *testing.T) {
	p := pprof.Lookup("goroutine")
	if p == nil {
		t.Fatal("goroutine profile not found")
	}

	name := p.Name()
	if name != "goroutine" {
		t.Errorf("Profile.Name() = %q, want goroutine", name)
	}
}

func TestLabelSet(t *testing.T) {
	var ls pprof.LabelSet
	_ = ls
}
