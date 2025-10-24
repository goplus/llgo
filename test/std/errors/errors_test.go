package errors_test

import (
	"errors"
	"fmt"
	"testing"
)

// Test errors.New
func TestNew(t *testing.T) {
	err := errors.New("test error")
	if err == nil {
		t.Fatal("New returned nil")
	}
	if err.Error() != "test error" {
		t.Errorf("New got %q", err.Error())
	}

	// Test that each call to New returns distinct error
	err1 := errors.New("same text")
	err2 := errors.New("same text")
	if err1 == err2 {
		t.Error("New should return distinct errors")
	}
}

// Test errors.Is
func TestIs(t *testing.T) {
	err1 := errors.New("error 1")
	err2 := errors.New("error 2")

	// Test basic Is
	if !errors.Is(err1, err1) {
		t.Error("Is should match same error")
	}
	if errors.Is(err1, err2) {
		t.Error("Is should not match different errors")
	}

	// Test with nil
	if errors.Is(nil, err1) {
		t.Error("Is should not match nil with error")
	}
	if errors.Is(err1, nil) {
		t.Error("Is should not match error with nil")
	}
	if !errors.Is(nil, nil) {
		t.Error("Is should match nil with nil")
	}

	// Test with wrapped errors
	wrapped := fmt.Errorf("wrapped: %w", err1)
	if !errors.Is(wrapped, err1) {
		t.Error("Is should match wrapped error")
	}
	if errors.Is(wrapped, err2) {
		t.Error("Is should not match different wrapped error")
	}

	// Test with multiple wrapping levels
	doubleWrapped := fmt.Errorf("double: %w", wrapped)
	if !errors.Is(doubleWrapped, err1) {
		t.Error("Is should match through multiple wrapping levels")
	}
}

// MyError is a custom error type for testing
type MyError struct {
	Msg  string
	Code int
}

func (e *MyError) Error() string {
	return e.Msg
}

// Test errors.As
func TestAs(t *testing.T) {
	myErr := &MyError{Msg: "custom", Code: 42}

	// Test direct match
	var target *MyError
	if !errors.As(myErr, &target) {
		t.Fatal("As should match same type")
	}
	if target.Code != 42 {
		t.Errorf("As target has Code=%d, want 42", target.Code)
	}

	// Test with wrapped error
	wrapped := fmt.Errorf("wrapped: %w", myErr)
	target = nil
	if !errors.As(wrapped, &target) {
		t.Fatal("As should match wrapped error")
	}
	if target.Code != 42 {
		t.Errorf("As wrapped target has Code=%d, want 42", target.Code)
	}

	// Test with non-matching type - just test that As returns false for different type
	var otherTarget *CustomError
	if errors.As(myErr, &otherTarget) {
		t.Error("As should not match different type")
	}

	// Test with nil
	if errors.As(nil, &target) {
		t.Error("As should not match nil error")
	}
}

// Test errors.Unwrap
func TestUnwrap(t *testing.T) {
	err1 := errors.New("base error")

	// Test unwrapping nil
	if errors.Unwrap(nil) != nil {
		t.Error("Unwrap(nil) should return nil")
	}

	// Test unwrapping non-wrapped error
	if errors.Unwrap(err1) != nil {
		t.Error("Unwrap should return nil for non-wrapped error")
	}

	// Test unwrapping wrapped error
	wrapped := fmt.Errorf("wrapped: %w", err1)
	unwrapped := errors.Unwrap(wrapped)
	if unwrapped != err1 {
		t.Error("Unwrap should return wrapped error")
	}

	// Test multiple levels
	doubleWrapped := fmt.Errorf("double: %w", wrapped)
	unwrapped = errors.Unwrap(doubleWrapped)
	if unwrapped != wrapped {
		t.Error("Unwrap should return immediate wrapped error")
	}
}

// Test errors.Join
func TestJoin(t *testing.T) {
	err1 := errors.New("error 1")
	err2 := errors.New("error 2")
	err3 := errors.New("error 3")

	// Test joining multiple errors
	joined := errors.Join(err1, err2, err3)
	if joined == nil {
		t.Fatal("Join returned nil")
	}

	// Test that all errors are present
	if !errors.Is(joined, err1) {
		t.Error("Join should contain err1")
	}
	if !errors.Is(joined, err2) {
		t.Error("Join should contain err2")
	}
	if !errors.Is(joined, err3) {
		t.Error("Join should contain err3")
	}

	// Test error message format
	msg := joined.Error()
	if msg == "" {
		t.Error("Join error message is empty")
	}

	// Test joining with nil errors
	joined = errors.Join(err1, nil, err2)
	if joined == nil {
		t.Fatal("Join with nil errors returned nil")
	}
	if !errors.Is(joined, err1) || !errors.Is(joined, err2) {
		t.Error("Join should skip nil errors")
	}

	// Test joining all nil
	joined = errors.Join(nil, nil, nil)
	if joined != nil {
		t.Error("Join of all nil should return nil")
	}

	// Test joining empty
	joined = errors.Join()
	if joined != nil {
		t.Error("Join with no args should return nil")
	}

	// Test joining single error
	joined = errors.Join(err1)
	if joined == nil {
		t.Fatal("Join single error returned nil")
	}
	if !errors.Is(joined, err1) {
		t.Error("Join single error should contain that error")
	}
}

// Test errors.ErrUnsupported
func TestErrUnsupported(t *testing.T) {
	err := errors.ErrUnsupported
	if err == nil {
		t.Fatal("ErrUnsupported is nil")
	}
	if err.Error() == "" {
		t.Error("ErrUnsupported has empty message")
	}

	// Test that we can wrap and check ErrUnsupported
	wrapped := fmt.Errorf("operation failed: %w", errors.ErrUnsupported)
	if !errors.Is(wrapped, errors.ErrUnsupported) {
		t.Error("Should detect wrapped ErrUnsupported")
	}
}

// CustomError is a custom error type with Is method
type CustomError struct {
	msg string
}

func (e *CustomError) Error() string {
	return e.msg
}

func (e *CustomError) Is(target error) bool {
	// This is a simplified test - in real code you'd compare to a sentinel
	return false
}

// Test custom error with Is method
func TestCustomIsMethod(t *testing.T) {
	sentinel := errors.New("sentinel")
	customErr := &CustomError{msg: "custom"}

	// CustomError.Is always returns false in our test implementation
	if errors.Is(customErr, sentinel) {
		t.Error("Should not match with Is returning false")
	}
}

// ErrorWithAs is a custom error type with As method
type ErrorWithAs struct {
	msg string
}

type TargetError struct {
	val int
}

func (e *TargetError) Error() string {
	return fmt.Sprintf("target error: %d", e.val)
}

func (e *ErrorWithAs) Error() string {
	return e.msg
}

func (e *ErrorWithAs) As(target any) bool {
	if t, ok := target.(**TargetError); ok {
		*t = &TargetError{val: 100}
		return true
	}
	return false
}

// Test custom error with As method
func TestCustomAsMethod(t *testing.T) {
	errWithAs := &ErrorWithAs{msg: "error"}

	var target *TargetError
	if errors.As(errWithAs, &target) {
		if target.val != 100 {
			t.Errorf("As method should set target.val=100, got %d", target.val)
		}
	}
}

// Test error wrapping chain
func TestErrorChain(t *testing.T) {
	base := errors.New("base")
	wrap1 := fmt.Errorf("wrap1: %w", base)
	wrap2 := fmt.Errorf("wrap2: %w", wrap1)
	wrap3 := fmt.Errorf("wrap3: %w", wrap2)

	// Test Is through chain
	if !errors.Is(wrap3, base) {
		t.Error("Is should find base through chain")
	}

	// Test Unwrap chain
	if errors.Unwrap(wrap3) != wrap2 {
		t.Error("Unwrap wrap3 should give wrap2")
	}
	if errors.Unwrap(wrap2) != wrap1 {
		t.Error("Unwrap wrap2 should give wrap1")
	}
	if errors.Unwrap(wrap1) != base {
		t.Error("Unwrap wrap1 should give base")
	}
	if errors.Unwrap(base) != nil {
		t.Error("Unwrap base should give nil")
	}
}

// Test Join with Is
func TestJoinWithIs(t *testing.T) {
	err1 := errors.New("error 1")
	err2 := errors.New("error 2")
	err3 := errors.New("error 3")

	joined := errors.Join(err1, err2)
	wrapped := fmt.Errorf("outer: %w", joined)

	// Should find all errors through wrapped join
	if !errors.Is(wrapped, err1) {
		t.Error("Should find err1 in wrapped join")
	}
	if !errors.Is(wrapped, err2) {
		t.Error("Should find err2 in wrapped join")
	}
	if errors.Is(wrapped, err3) {
		t.Error("Should not find err3 in wrapped join")
	}
}

// Error1 and Error2 for testing Join with As
type Error1 struct{ code int }
type Error2 struct{ msg string }

func (e *Error1) Error() string { return fmt.Sprintf("code %d", e.code) }
func (e *Error2) Error() string { return e.msg }

// Test Join with As
func TestJoinWithAs(t *testing.T) {
	e1 := &Error1{code: 1}
	e2 := &Error2{msg: "two"}

	joined := errors.Join(e1, e2)

	var target1 *Error1
	if !errors.As(joined, &target1) {
		t.Fatal("As should find Error1 in join")
	}
	if target1.code != 1 {
		t.Errorf("Error1 code=%d, want 1", target1.code)
	}

	var target2 *Error2
	if !errors.As(joined, &target2) {
		t.Fatal("As should find Error2 in join")
	}
	if target2.msg != "two" {
		t.Errorf("Error2 msg=%q, want %q", target2.msg, "two")
	}
}

// Test edge cases
func TestEdgeCases(t *testing.T) {
	// Empty error message
	err := errors.New("")
	if err == nil {
		t.Error("New(\"\") should not return nil")
	}
	if err.Error() != "" {
		t.Errorf("New(\"\") should have empty message, got %q", err.Error())
	}

	// Is with itself
	if !errors.Is(err, err) {
		t.Error("Error should match itself")
	}

	// As with specific error type
	var target2 *MyError
	if errors.As(err, &target2) {
		t.Error("As should not match different concrete type")
	}
}

// Test Unwrap does not unwrap Join results
func TestUnwrapDoesNotUnwrapJoin(t *testing.T) {
	err1 := errors.New("error 1")
	err2 := errors.New("error 2")

	joined := errors.Join(err1, err2)

	// Unwrap should return nil for joined errors
	// (they have Unwrap() []error, not Unwrap() error)
	unwrapped := errors.Unwrap(joined)
	if unwrapped != nil {
		t.Error("Unwrap should return nil for joined errors")
	}
}
