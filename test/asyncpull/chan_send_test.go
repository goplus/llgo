//go:build llgo
// +build llgo

package asyncpull

import (
	"reflect"
	"testing"
)

// Regression: await result fed into channel send inside async loop must persist across polls.
func TestChanSendAwait(t *testing.T) {
	got := pollReady(t, ChanSendAwait(4))
	want := []int{0, 2, 4, 6}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("ChanSendAwait(4) = %v, want %v", got, want)
	}
}
