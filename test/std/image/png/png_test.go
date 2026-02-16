package png_test

import (
	"bytes"
	"image"
	"image/color"
	"image/png"
	"strings"
	"testing"
)

type dummyPool struct{}

func (dummyPool) Get() *png.EncoderBuffer { return nil }
func (dummyPool) Put(*png.EncoderBuffer)  {}

func TestEncodeDecode(t *testing.T) {
	img := image.NewNRGBA(image.Rect(0, 0, 2, 2))
	img.Set(0, 0, color.NRGBA{R: 255, A: 255})
	img.Set(1, 1, color.NRGBA{B: 255, A: 255})

	var buf bytes.Buffer
	if err := png.Encode(&buf, img); err != nil {
		t.Fatalf("Encode: %v", err)
	}

	cfg, err := png.DecodeConfig(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("DecodeConfig: %v", err)
	}
	if cfg.Width != 2 || cfg.Height != 2 {
		t.Fatalf("DecodeConfig size = %dx%d, want 2x2", cfg.Width, cfg.Height)
	}

	decoded, err := png.Decode(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("Decode: %v", err)
	}
	if decoded.Bounds().Dx() != 2 || decoded.Bounds().Dy() != 2 {
		t.Fatalf("decoded size = %dx%d, want 2x2", decoded.Bounds().Dx(), decoded.Bounds().Dy())
	}
}

func TestEncoder(t *testing.T) {
	enc := png.Encoder{CompressionLevel: png.BestSpeed, BufferPool: dummyPool{}}
	img := image.NewGray(image.Rect(0, 0, 1, 1))
	var buf bytes.Buffer
	if err := enc.Encode(&buf, img); err != nil {
		t.Fatalf("Encoder.Encode: %v", err)
	}
}

func TestErrorTypesAndSymbols(t *testing.T) {
	if got := png.FormatError("bad").Error(); !strings.Contains(got, "bad") {
		t.Fatalf("FormatError.Error() = %q", got)
	}
	if got := png.UnsupportedError("x").Error(); !strings.Contains(got, "x") {
		t.Fatalf("UnsupportedError.Error() = %q", got)
	}

	_ = png.Decode
	_ = png.DecodeConfig
	_ = png.Encode
	_ = (*png.Encoder).Encode
	_ = png.DefaultCompression
	_ = png.NoCompression
	_ = png.BestSpeed
	_ = png.BestCompression

	_ = png.Encoder{}
	_ = png.CompressionLevel(0)
	_ = png.FormatError("x")
	_ = png.UnsupportedError("x")

	var _ *png.EncoderBuffer
	var _ png.EncoderBufferPool = dummyPool{}
}
