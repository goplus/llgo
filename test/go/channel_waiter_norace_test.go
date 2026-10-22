//go:build !race

package gotest

import "testing"

// This intentionally closes a channel with a pending send. Go's race detector
// reports the concurrent send/close pair even though the test expects the panic.
func TestChannelWaiterCloseSend(t *testing.T) {
	testChannelWaiterCompletion(t, "close-send")
}
