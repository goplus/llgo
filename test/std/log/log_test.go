
package log_test

import (
	"bytes"
	"log"
	"strings"
	"testing"
)

// Test log constants
func TestConstants(t *testing.T) {
	// Test that constants are defined
	_ = log.Ldate
	_ = log.Ltime
	_ = log.Lmicroseconds
	_ = log.Llongfile
	_ = log.Lshortfile
	_ = log.LUTC
	_ = log.Lmsgprefix
	_ = log.LstdFlags

	// Test that LstdFlags is Ldate | Ltime
	if log.LstdFlags != (log.Ldate | log.Ltime) {
		t.Errorf("LstdFlags = %d, want %d", log.LstdFlags, log.Ldate|log.Ltime)
	}
}

// Test log.New
func TestNew(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "TEST: ", log.Ldate|log.Ltime)
	if logger == nil {
		t.Fatal("New returned nil")
	}

	logger.Print("hello")
	output := buf.String()
	if !strings.Contains(output, "TEST:") {
		t.Errorf("Output missing prefix: %q", output)
	}
	if !strings.Contains(output, "hello") {
		t.Errorf("Output missing message: %q", output)
	}
}

// Test Logger.Print, Printf, Println
func TestLoggerPrint(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	// Test Print
	logger.Print("test")
	if !strings.Contains(buf.String(), "test") {
		t.Errorf("Print: got %q", buf.String())
	}

	// Test Printf
	buf.Reset()
	logger.Printf("%s %d", "number", 42)
	if !strings.Contains(buf.String(), "number 42") {
		t.Errorf("Printf: got %q", buf.String())
	}

	// Test Println
	buf.Reset()
	logger.Println("line")
	if !strings.Contains(buf.String(), "line") {
		t.Errorf("Println: got %q", buf.String())
	}
}

// Test Logger.Fatal (we can't actually call it as it exits)
func TestLoggerFatalExists(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	// Just verify the methods exist
	var _ func(...any) = logger.Fatal
	var _ func(string, ...any) = logger.Fatalf
	var _ func(...any) = logger.Fatalln
}

// Test Logger.Panic
func TestLoggerPanic(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	// Test Panic
	defer func() {
		if r := recover(); r == nil {
			t.Error("Panic should have panicked")
		}
		if !strings.Contains(buf.String(), "panic test") {
			t.Errorf("Panic output: got %q", buf.String())
		}
	}()
	logger.Panic("panic test")
}

// Test Logger.Panicf
func TestLoggerPanicf(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	defer func() {
		if r := recover(); r == nil {
			t.Error("Panicf should have panicked")
		}
		if !strings.Contains(buf.String(), "panic 42") {
			t.Errorf("Panicf output: got %q", buf.String())
		}
	}()
	logger.Panicf("panic %d", 42)
}

// Test Logger.Panicln
func TestLoggerPanicln(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	defer func() {
		if r := recover(); r == nil {
			t.Error("Panicln should have panicked")
		}
		if !strings.Contains(buf.String(), "panicln") {
			t.Errorf("Panicln output: got %q", buf.String())
		}
	}()
	logger.Panicln("panicln")
}

// Test Logger.Prefix and SetPrefix
func TestLoggerPrefix(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "OLD: ", 0)

	if logger.Prefix() != "OLD: " {
		t.Errorf("Prefix() = %q, want %q", logger.Prefix(), "OLD: ")
	}

	logger.SetPrefix("NEW: ")
	if logger.Prefix() != "NEW: " {
		t.Errorf("After SetPrefix, Prefix() = %q, want %q", logger.Prefix(), "NEW: ")
	}

	logger.Print("test")
	if !strings.Contains(buf.String(), "NEW:") {
		t.Errorf("Output should contain new prefix: %q", buf.String())
	}
}

// Test Logger.Flags and SetFlags
func TestLoggerFlags(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", log.Ldate)

	if logger.Flags() != log.Ldate {
		t.Errorf("Flags() = %d, want %d", logger.Flags(), log.Ldate)
	}

	logger.SetFlags(log.Ltime)
	if logger.Flags() != log.Ltime {
		t.Errorf("After SetFlags, Flags() = %d, want %d", logger.Flags(), log.Ltime)
	}
}

// Test Logger.Writer and SetOutput
func TestLoggerWriter(t *testing.T) {
	var buf1 bytes.Buffer
	logger := log.New(&buf1, "", 0)

	writer := logger.Writer()
	if writer != &buf1 {
		t.Error("Writer() should return original writer")
	}

	var buf2 bytes.Buffer
	logger.SetOutput(&buf2)
	logger.Print("test")

	if buf1.Len() != 0 {
		t.Error("Old buffer should be empty")
	}
	if !strings.Contains(buf2.String(), "test") {
		t.Error("New buffer should contain output")
	}
}

// Test Logger.Output
func TestLoggerOutput(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	err := logger.Output(2, "custom output")
	if err != nil {
		t.Errorf("Output error: %v", err)
	}
	if !strings.Contains(buf.String(), "custom output") {
		t.Errorf("Output: got %q", buf.String())
	}
}

// Test package-level Print functions
func TestPackagePrint(t *testing.T) {
	var buf bytes.Buffer
	log.SetOutput(&buf)
	defer log.SetOutput(nil) // Reset after test

	// Test Print
	log.Print("test")
	if !strings.Contains(buf.String(), "test") {
		t.Errorf("Print: got %q", buf.String())
	}

	// Test Printf
	buf.Reset()
	log.Printf("%s %d", "number", 42)
	if !strings.Contains(buf.String(), "number 42") {
		t.Errorf("Printf: got %q", buf.String())
	}

	// Test Println
	buf.Reset()
	log.Println("line")
	if !strings.Contains(buf.String(), "line") {
		t.Errorf("Println: got %q", buf.String())
	}
}

// Test package-level Fatal functions exist
func TestPackageFatalExists(t *testing.T) {
	// Just verify the functions exist
	var _ func(...any) = log.Fatal
	var _ func(string, ...any) = log.Fatalf
	var _ func(...any) = log.Fatalln
}

// Test package-level Panic functions
func TestPackagePanic(t *testing.T) {
	var buf bytes.Buffer
	log.SetOutput(&buf)
	defer log.SetOutput(nil)

	defer func() {
		if r := recover(); r == nil {
			t.Error("Panic should have panicked")
		}
		if !strings.Contains(buf.String(), "panic") {
			t.Errorf("Panic output: got %q", buf.String())
		}
	}()
	log.Panic("panic")
}

// Test package-level Panicf
func TestPackagePanicf(t *testing.T) {
	var buf bytes.Buffer
	log.SetOutput(&buf)
	defer log.SetOutput(nil)

	defer func() {
		if r := recover(); r == nil {
			t.Error("Panicf should have panicked")
		}
		if !strings.Contains(buf.String(), "panic 42") {
			t.Errorf("Panicf output: got %q", buf.String())
		}
	}()
	log.Panicf("panic %d", 42)
}

// Test package-level Panicln
func TestPackagePanicln(t *testing.T) {
	var buf bytes.Buffer
	log.SetOutput(&buf)
	defer log.SetOutput(nil)

	defer func() {
		if r := recover(); r == nil {
			t.Error("Panicln should have panicked")
		}
		if !strings.Contains(buf.String(), "panicln") {
			t.Errorf("Panicln output: got %q", buf.String())
		}
	}()
	log.Panicln("panicln")
}

// Test package-level Prefix/SetPrefix
func TestPackagePrefix(t *testing.T) {
	oldPrefix := log.Prefix()
	defer log.SetPrefix(oldPrefix) // Restore after test

	log.SetPrefix("TEST: ")
	if log.Prefix() != "TEST: " {
		t.Errorf("Prefix() = %q, want %q", log.Prefix(), "TEST: ")
	}
}

// Test package-level Flags/SetFlags
func TestPackageFlags(t *testing.T) {
	oldFlags := log.Flags()
	defer log.SetFlags(oldFlags) // Restore after test

	log.SetFlags(log.Ldate)
	if log.Flags() != log.Ldate {
		t.Errorf("Flags() = %d, want %d", log.Flags(), log.Ldate)
	}
}

// Test package-level Writer
func TestPackageWriter(t *testing.T) {
	// Set output first to ensure writer is not nil
	var buf bytes.Buffer
	log.SetOutput(&buf)
	defer log.SetOutput(nil)

	writer := log.Writer()
	if writer == nil {
		t.Error("Writer() returned nil")
	}
	if writer != &buf {
		t.Error("Writer() should return the set output writer")
	}
}

// Test package-level Output
func TestPackageOutput(t *testing.T) {
	var buf bytes.Buffer
	log.SetOutput(&buf)
	defer log.SetOutput(nil)

	err := log.Output(2, "custom")
	if err != nil {
		t.Errorf("Output error: %v", err)
	}
	if !strings.Contains(buf.String(), "custom") {
		t.Errorf("Output: got %q", buf.String())
	}
}

// Test log.Default
func TestDefault(t *testing.T) {
	defaultLogger := log.Default()
	if defaultLogger == nil {
		t.Fatal("Default() returned nil")
	}

	// Verify it's the same logger used by package functions
	var buf bytes.Buffer
	log.SetOutput(&buf)
	defer log.SetOutput(nil)

	defaultLogger.Print("test")
	if !strings.Contains(buf.String(), "test") {
		t.Error("Default logger should use same output as package functions")
	}
}

// Test different flag combinations
func TestFlagCombinations(t *testing.T) {
	var buf bytes.Buffer

	tests := []struct {
		name  string
		flags int
	}{
		{"Ldate", log.Ldate},
		{"Ltime", log.Ltime},
		{"Lmicroseconds", log.Ltime | log.Lmicroseconds},
		{"Lshortfile", log.Lshortfile},
		{"Llongfile", log.Llongfile},
		{"LUTC", log.Ldate | log.Ltime | log.LUTC},
		{"Lmsgprefix", log.Lmsgprefix},
		{"LstdFlags", log.LstdFlags},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			buf.Reset()
			logger := log.New(&buf, "PREFIX: ", tt.flags)
			logger.Print("message")
			output := buf.String()
			if !strings.Contains(output, "message") {
				t.Errorf("Output missing message: %q", output)
			}
		})
	}
}

// Test prefix with Lmsgprefix
func TestMsgPrefix(t *testing.T) {
	var buf bytes.Buffer

	// Without Lmsgprefix - prefix at beginning
	logger := log.New(&buf, "PREFIX: ", 0)
	logger.Print("message")
	output := buf.String()
	if !strings.HasPrefix(output, "PREFIX:") {
		t.Errorf("Without Lmsgprefix, prefix should be at start: %q", output)
	}

	// With Lmsgprefix - prefix before message
	buf.Reset()
	logger = log.New(&buf, "PREFIX: ", log.Lmsgprefix)
	logger.Print("message")
	output = buf.String()
	// Should have prefix before message but after other fields
	if !strings.Contains(output, "PREFIX:") || !strings.Contains(output, "message") {
		t.Errorf("With Lmsgprefix: %q", output)
	}
}

// Test concurrent logging (Logger is safe for concurrent use)
func TestConcurrentLogging(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	done := make(chan bool)
	for i := 0; i < 10; i++ {
		go func(n int) {
			logger.Printf("goroutine %d", n)
			done <- true
		}(i)
	}

	for i := 0; i < 10; i++ {
		<-done
	}

	output := buf.String()
	// Should have 10 log lines
	lines := strings.Split(strings.TrimSpace(output), "\n")
	if len(lines) != 10 {
		t.Errorf("Expected 10 lines, got %d", len(lines))
	}
}

// Test that output ends with newline
func TestOutputNewline(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	// Message without newline
	logger.Print("test")
	output := buf.String()
	if !strings.HasSuffix(output, "\n") {
		t.Error("Output should end with newline")
	}

	// Message with newline
	buf.Reset()
	logger.Print("test\n")
	output = buf.String()
	if !strings.HasSuffix(output, "\n") {
		t.Error("Output should end with newline")
	}
	// Should not add extra newline
	if strings.HasSuffix(output, "\n\n") {
		t.Error("Output should not have double newline")
	}
}

// Test empty prefix
func TestEmptyPrefix(t *testing.T) {
	var buf bytes.Buffer
	logger := log.New(&buf, "", 0)

	logger.Print("test")
	output := buf.String()
	if output != "test\n" {
		t.Errorf("With empty prefix, got %q, want %q", output, "test\n")
	}
}

// Test Logger type
func TestLoggerType(t *testing.T) {
	var buf bytes.Buffer
	var logger *log.Logger
	logger = log.New(&buf, "", 0)

	if logger == nil {
		t.Fatal("Logger should not be nil")
	}
}
