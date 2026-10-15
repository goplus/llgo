//go:build !windows && !wasm && !baremetal

package thread

import (
	"testing"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	csyscall "github.com/xgo-dev/llgo/runtime/internal/clite/syscall"
)

func TestRetryThreadCreation(t *testing.T) {
	again, invalid := c.Int(csyscall.EAGAIN), c.Int(csyscall.EINVAL)
	for _, tc := range []struct {
		name       string
		initial    c.Int
		results    []c.Int
		want       c.Int
		calls      int
		waitMicros c.Uint
	}{
		{"success", 0, nil, 0, 0, 0},
		{"permanent failure", invalid, nil, invalid, 0, 0},
		{"temporary failures recover", again, []c.Int{again, 0}, 0, 2, 3000},
		{"permanent failure after retry", again, []c.Int{invalid}, invalid, 1, 1000},
		{"persistent exhaustion is bounded", again, nil, again, 100, 1810000},
	} {
		t.Run(tc.name, func(t *testing.T) {
			calls := 0
			var waited c.Uint
			ret := retryThreadCreation(tc.initial, func() c.Int {
				calls++
				if calls <= len(tc.results) {
					return tc.results[calls-1]
				}
				return again
			}, func(delay c.Uint) {
				want := (calls + 1) * 1000
				if want > 20000 {
					want = 20000
				}
				if delay != c.Uint(want) {
					t.Errorf("delay = %d us, want %d us", delay, want)
				}
				waited += delay
			})
			if ret != tc.want || calls != tc.calls || waited != tc.waitMicros {
				t.Fatalf("result=%d calls=%d wait=%d us; want %d, %d, %d us", ret, calls, waited, tc.want, tc.calls, tc.waitMicros)
			}
		})
	}
}
