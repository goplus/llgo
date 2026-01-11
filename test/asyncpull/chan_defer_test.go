//go:build llgo
// +build llgo

package asyncpull

import (
	"fmt"
	"testing"
)

// ChanDeferRange: range over channel with await in body; defer must run.
func TestChanDeferRange(t *testing.T) {
	seen := []int{}
	hooks := []string{}
	sum := pollReady(t, ChanDeferRange(4, &seen, &hooks))
	// values 0,1,2,3 => Compute doubles them => 0+2+4+6 = 12
	if sum != 12 {
		t.Fatalf("sum = %d, want 12", sum)
	}
	if got := fmt.Sprint(seen); got != fmt.Sprint([]int{0, 1, 2, 3}) {
		t.Fatalf("seen = %v, want [0 1 2 3]", seen)
	}
	if got := fmt.Sprint(hooks); got != fmt.Sprint([]string{"done"}) {
		t.Fatalf("hooks = %v, want [done]", hooks)
	}
}

// PanicInSelectDefer: panic in select default; defer should run and error propagate.
func TestPanicInSelectDefer(t *testing.T) {
	out := []string{}
	errVal := pollError(t, PanicInSelectDefer(&out))
	if fmt.Sprint(errVal) != "select panic" {
		t.Fatalf("panic value = %v, want select panic", errVal)
	}
	if got := fmt.Sprint(out); got != fmt.Sprint([]string{"cleanup"}) {
		t.Fatalf("defer not run, out=%v", out)
	}
}
