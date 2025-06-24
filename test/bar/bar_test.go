package bar_test

import (
	"testing"

	"github.com/goplus/llgo/test/bar"
)

func TestBar(t *testing.T) {
	if bar.Bar() != 2 {
		t.Fatal("Bar() != 2")
	}
}
