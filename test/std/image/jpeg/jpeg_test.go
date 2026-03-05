package jpeg_test

import (
	"bytes"
	"image"
	"image/color"
	"image/jpeg"
	"strings"
	"testing"
)

func TestEncodeDecode(t *testing.T) {
	img := image.NewRGBA(image.Rect(0, 0, 2, 1))
	img.Set(0, 0, color.RGBA{R: 255, A: 255})
	img.Set(1, 0, color.RGBA{G: 255, A: 255})

	var buf bytes.Buffer
	if err := jpeg.Encode(&buf, img, &jpeg.Options{Quality: jpeg.DefaultQuality}); err != nil {
		t.Fatalf("Encode: %v", err)
	}

	cfg, err := jpeg.DecodeConfig(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("DecodeConfig: %v", err)
	}
	if cfg.Width != 2 || cfg.Height != 1 {
		t.Fatalf("DecodeConfig size = %dx%d, want 2x1", cfg.Width, cfg.Height)
	}

	decoded, err := jpeg.Decode(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("Decode: %v", err)
	}
	if decoded.Bounds().Dx() != 2 || decoded.Bounds().Dy() != 1 {
		t.Fatalf("decoded size = %dx%d, want 2x1", decoded.Bounds().Dx(), decoded.Bounds().Dy())
	}
}

func TestDecodeInvalid(t *testing.T) {
	_, err := jpeg.Decode(bytes.NewReader([]byte("not-a-jpeg")))
	if err == nil {
		t.Fatal("Decode should fail for invalid JPEG")
	}
}

func TestErrorTypesAndSymbols(t *testing.T) {
	if got := jpeg.FormatError("bad").Error(); !strings.Contains(got, "bad") {
		t.Fatalf("FormatError.Error() = %q", got)
	}
	if got := jpeg.UnsupportedError("x").Error(); !strings.Contains(got, "x") {
		t.Fatalf("UnsupportedError.Error() = %q", got)
	}

	_ = jpeg.DefaultQuality
	_ = jpeg.Decode
	_ = jpeg.DecodeConfig
	_ = jpeg.Encode

	_ = jpeg.Options{}
	if got := jpeg.FormatError("x").Error(); !strings.Contains(got, "x") {
		t.Fatalf("FormatError.Error() = %q", got)
	}
	if got := jpeg.UnsupportedError("x").Error(); !strings.Contains(got, "x") {
		t.Fatalf("UnsupportedError.Error() = %q", got)
	}

	var _ jpeg.Reader = bytes.NewReader(nil)
}
