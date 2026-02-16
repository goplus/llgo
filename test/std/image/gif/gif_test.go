package gif_test

import (
	"bytes"
	"image"
	"image/color"
	"image/color/palette"
	"image/gif"
	"testing"
)

func TestEncodeDecode(t *testing.T) {
	img := image.NewPaletted(image.Rect(0, 0, 2, 2), palette.Plan9)
	img.SetColorIndex(0, 0, 1)
	img.SetColorIndex(1, 1, 2)

	var buf bytes.Buffer
	if err := gif.Encode(&buf, img, &gif.Options{NumColors: 16}); err != nil {
		t.Fatalf("Encode: %v", err)
	}

	cfg, err := gif.DecodeConfig(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("DecodeConfig: %v", err)
	}
	if cfg.Width != 2 || cfg.Height != 2 {
		t.Fatalf("DecodeConfig size = %dx%d, want 2x2", cfg.Width, cfg.Height)
	}

	decoded, err := gif.Decode(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("Decode: %v", err)
	}
	if decoded.Bounds().Dx() != 2 || decoded.Bounds().Dy() != 2 {
		t.Fatalf("decoded size = %dx%d, want 2x2", decoded.Bounds().Dx(), decoded.Bounds().Dy())
	}
}

func TestEncodeAllDecodeAll(t *testing.T) {
	frame := image.NewPaletted(image.Rect(0, 0, 1, 1), color.Palette{color.Black, color.White})
	frame.SetColorIndex(0, 0, 1)
	anim := &gif.GIF{
		Image:     []*image.Paletted{frame},
		Delay:     []int{5},
		LoopCount: 1,
		Disposal:  []byte{gif.DisposalNone},
	}

	var buf bytes.Buffer
	if err := gif.EncodeAll(&buf, anim); err != nil {
		t.Fatalf("EncodeAll: %v", err)
	}

	decoded, err := gif.DecodeAll(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("DecodeAll: %v", err)
	}
	if len(decoded.Image) != 1 {
		t.Fatalf("len(Image) = %d, want 1", len(decoded.Image))
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = gif.DisposalNone
	_ = gif.DisposalBackground
	_ = gif.DisposalPrevious

	_ = gif.Decode
	_ = gif.DecodeConfig
	_ = gif.Encode
	_ = gif.EncodeAll
	_ = gif.DecodeAll

	_ = gif.Options{}
	_ = gif.GIF{}
}
