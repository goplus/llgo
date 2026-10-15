//go:build llgo && !windows && !wasm && !baremetal

package thread

import (
	"testing"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	csyscall "github.com/xgo-dev/llgo/runtime/internal/clite/syscall"
)

func TestRetryThreadCreation(t *testing.T) {
	again, invalid := c.Int(csyscall.EAGAIN), c.Int(csyscall.EINVAL)
	// State the delay contract independently of the retry loop's counters.
	delays := []c.Uint{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
	for len(delays) < 100 {
		delays = append(delays, 20)
	}
	lastRetrySucceeds := make([]c.Int, len(delays))
	for i := range delays {
		delays[i] *= microsecondsPerMillisecond
		lastRetrySucceeds[i] = again
	}
	lastRetrySucceeds[len(lastRetrySucceeds)-1] = 0
	for _, tc := range []struct {
		name       string
		initial    c.Int
		results    []c.Int
		want       c.Int
		calls      int
		waitMicros c.Uint
		delays     []c.Uint
	}{
		{"success", 0, nil, 0, 0, 0, nil},
		{"permanent failure", invalid, nil, invalid, 0, 0, nil},
		{"temporary failures recover", again, []c.Int{again, 0}, 0, 2, 3000, delays[:2]},
		{"permanent failure after retry", again, []c.Int{invalid}, invalid, 1, 1000, delays[:1]},
		{"last retry recovers", again, lastRetrySucceeds, 0, 100, 1810000, delays},
		{"persistent exhaustion is bounded", again, nil, again, 100, 1810000, delays},
	} {
		t.Run(tc.name, func(t *testing.T) {
			calls := 0
			var waited c.Uint
			var pauses []c.Uint
			ret := retryThreadCreation(tc.initial, func() c.Int {
				calls++
				if calls <= len(tc.results) {
					return tc.results[calls-1]
				}
				return again
			}, func(delay c.Uint) {
				pauses = append(pauses, delay)
				waited += delay
			})
			if ret != tc.want || calls != tc.calls || waited != tc.waitMicros {
				t.Fatalf("result=%d calls=%d wait=%d us; want %d, %d, %d us", ret, calls, waited, tc.want, tc.calls, tc.waitMicros)
			}
			if len(pauses) != len(tc.delays) {
				t.Fatalf("pauses = %v, want %v", pauses, tc.delays)
			}
			for i, want := range tc.delays {
				if pauses[i] != want {
					t.Errorf("pause %d = %d us, want %d us", i+1, pauses[i], want)
				}
			}
		})
	}
}
