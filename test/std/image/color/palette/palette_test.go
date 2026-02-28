package palette_test

import (
	"image/color"
	"image/color/palette"
	"testing"
)

func TestStandardPalettes(t *testing.T) {
	if len(palette.Plan9) == 0 {
		t.Fatal("palette.Plan9 must not be empty")
	}
	if len(palette.WebSafe) == 0 {
		t.Fatal("palette.WebSafe must not be empty")
	}

	if _, ok := palette.Plan9[0].(color.Color); !ok {
		t.Fatal("palette.Plan9[0] does not implement color.Color")
	}
	if _, ok := palette.WebSafe[0].(color.Color); !ok {
		t.Fatal("palette.WebSafe[0] does not implement color.Color")
	}
}
