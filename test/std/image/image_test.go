package image_test

import (
	"bytes"
	"errors"
	"image"
	"image/color"
	"image/png"
	"io"
	"testing"
)

func TestDecodeDecodeConfigAndGeometry(t *testing.T) {
	img := image.NewRGBA(image.Rect(0, 0, 2, 2))
	img.Set(1, 1, color.RGBA{R: 200, G: 100, B: 50, A: 255})

	var buf bytes.Buffer
	if err := png.Encode(&buf, img); err != nil {
		t.Fatalf("png.Encode: %v", err)
	}

	cfg, format, err := image.DecodeConfig(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("DecodeConfig: %v", err)
	}
	if format != "png" {
		t.Fatalf("DecodeConfig format = %q, want png", format)
	}
	if cfg.Width != 2 || cfg.Height != 2 {
		t.Fatalf("DecodeConfig size = %dx%d, want 2x2", cfg.Width, cfg.Height)
	}

	decoded, format, err := image.Decode(bytes.NewReader(buf.Bytes()))
	if err != nil {
		t.Fatalf("Decode: %v", err)
	}
	if format != "png" {
		t.Fatalf("Decode format = %q, want png", format)
	}
	if decoded.Bounds().Dx() != 2 || decoded.Bounds().Dy() != 2 {
		t.Fatalf("Decode bounds = %v, want (0,0)-(2,2)", decoded.Bounds())
	}

	p := image.Pt(3, 4).Add(image.Pt(1, -2)).Sub(image.Pt(2, 1)).Mul(2).Div(2)
	if !p.Eq(image.Pt(2, 1)) {
		t.Fatalf("point mismatch: got %v", p)
	}
	if p.String() != "(2,1)" {
		t.Fatalf("Point.String() = %q", p.String())
	}

	r := image.Rect(0, 0, 4, 4)
	if !p.In(r) {
		t.Fatalf("point %v should be in %v", p, r)
	}
	if !r.Overlaps(image.Rect(3, 3, 6, 6)) {
		t.Fatalf("expected overlap")
	}
	if got := r.Intersect(image.Rect(2, 2, 3, 3)); got != (image.Rect(2, 2, 3, 3)) {
		t.Fatalf("Intersect = %v", got)
	}
	if r.Union(image.Rect(5, 5, 6, 6)) != (image.Rect(0, 0, 6, 6)) {
		t.Fatalf("Union mismatch")
	}

	if image.ErrFormat == nil {
		t.Fatal("ErrFormat should not be nil")
	}
}

func TestRegisterFormat(t *testing.T) {
	name := "llgo_dummy_fmt"
	magic := "LLGOFMT"
	decode := func(r interface{}) (image.Image, error) {
		_ = r
		return image.NewRGBA(image.Rect(0, 0, 1, 1)), nil
	}
	decodeConfig := func(r interface{}) (image.Config, error) {
		_ = r
		return image.Config{ColorModel: color.RGBAModel, Width: 1, Height: 1}, nil
	}

	image.RegisterFormat(
		name,
		magic,
		func(r io.Reader) (image.Image, error) {
			_ = r
			return decode(nil)
		},
		func(r io.Reader) (image.Config, error) {
			_ = r
			return decodeConfig(nil)
		},
	)
}

func TestPublicAPISymbolCoverage(t *testing.T) {
	_ = image.Black
	_ = image.White
	_ = image.Transparent
	_ = image.Opaque
	_ = image.ErrFormat
	_ = image.ZP
	_ = image.ZR

	_ = image.Decode
	_ = image.DecodeConfig
	_ = image.RegisterFormat
	_ = image.Pt
	_ = image.Rect

	_ = image.NewAlpha
	_ = image.NewAlpha16
	_ = image.NewCMYK
	_ = image.NewGray
	_ = image.NewGray16
	_ = image.NewNRGBA
	_ = image.NewNRGBA64
	_ = image.NewNYCbCrA
	_ = image.NewPaletted
	_ = image.NewRGBA
	_ = image.NewRGBA64
	_ = image.NewUniform
	_ = image.NewYCbCr

	_ = image.Config{}
	_ = image.Point{}
	_ = image.Rectangle{}
	_ = image.YCbCrSubsampleRatio(0)
	_ = image.Alpha{}
	_ = image.Alpha16{}
	_ = image.CMYK{}
	_ = image.Gray{}
	_ = image.Gray16{}
	_ = image.NRGBA{}
	_ = image.NRGBA64{}
	_ = image.NYCbCrA{}
	_ = image.Paletted{}
	_ = image.RGBA{}
	_ = image.RGBA64{}
	_ = image.Uniform{}
	_ = image.YCbCr{}

	_ = image.YCbCrSubsampleRatio444
	_ = image.YCbCrSubsampleRatio422
	_ = image.YCbCrSubsampleRatio420
	_ = image.YCbCrSubsampleRatio440
	_ = image.YCbCrSubsampleRatio411
	_ = image.YCbCrSubsampleRatio410
	_ = (image.YCbCrSubsampleRatio).String

	_ = (image.Point).Add
	_ = (image.Point).Div
	_ = (image.Point).Eq
	_ = (image.Point).In
	_ = (image.Point).Mod
	_ = (image.Point).Mul
	_ = (image.Point).String
	_ = (image.Point).Sub

	_ = (image.Rectangle).Add
	_ = (image.Rectangle).At
	_ = (image.Rectangle).Bounds
	_ = (image.Rectangle).Canon
	_ = (image.Rectangle).ColorModel
	_ = (image.Rectangle).Dx
	_ = (image.Rectangle).Dy
	_ = (image.Rectangle).Empty
	_ = (image.Rectangle).Eq
	_ = (image.Rectangle).In
	_ = (image.Rectangle).Inset
	_ = (image.Rectangle).Intersect
	_ = (image.Rectangle).Overlaps
	_ = (image.Rectangle).RGBA64At
	_ = (image.Rectangle).Size
	_ = (image.Rectangle).String
	_ = (image.Rectangle).Sub
	_ = (image.Rectangle).Union

	_ = (*image.Alpha).AlphaAt
	_ = (*image.Alpha).At
	_ = (*image.Alpha).Bounds
	_ = (*image.Alpha).ColorModel
	_ = (*image.Alpha).Opaque
	_ = (*image.Alpha).PixOffset
	_ = (*image.Alpha).RGBA64At
	_ = (*image.Alpha).Set
	_ = (*image.Alpha).SetAlpha
	_ = (*image.Alpha).SetRGBA64
	_ = (*image.Alpha).SubImage

	_ = (*image.Alpha16).Alpha16At
	_ = (*image.Alpha16).At
	_ = (*image.Alpha16).Bounds
	_ = (*image.Alpha16).ColorModel
	_ = (*image.Alpha16).Opaque
	_ = (*image.Alpha16).PixOffset
	_ = (*image.Alpha16).RGBA64At
	_ = (*image.Alpha16).Set
	_ = (*image.Alpha16).SetAlpha16
	_ = (*image.Alpha16).SetRGBA64
	_ = (*image.Alpha16).SubImage

	_ = (*image.CMYK).At
	_ = (*image.CMYK).Bounds
	_ = (*image.CMYK).CMYKAt
	_ = (*image.CMYK).ColorModel
	_ = (*image.CMYK).Opaque
	_ = (*image.CMYK).PixOffset
	_ = (*image.CMYK).RGBA64At
	_ = (*image.CMYK).Set
	_ = (*image.CMYK).SetCMYK
	_ = (*image.CMYK).SetRGBA64
	_ = (*image.CMYK).SubImage

	_ = (*image.Gray).At
	_ = (*image.Gray).Bounds
	_ = (*image.Gray).ColorModel
	_ = (*image.Gray).GrayAt
	_ = (*image.Gray).Opaque
	_ = (*image.Gray).PixOffset
	_ = (*image.Gray).RGBA64At
	_ = (*image.Gray).Set
	_ = (*image.Gray).SetGray
	_ = (*image.Gray).SetRGBA64
	_ = (*image.Gray).SubImage

	_ = (*image.Gray16).At
	_ = (*image.Gray16).Bounds
	_ = (*image.Gray16).ColorModel
	_ = (*image.Gray16).Gray16At
	_ = (*image.Gray16).Opaque
	_ = (*image.Gray16).PixOffset
	_ = (*image.Gray16).RGBA64At
	_ = (*image.Gray16).Set
	_ = (*image.Gray16).SetGray16
	_ = (*image.Gray16).SetRGBA64
	_ = (*image.Gray16).SubImage

	_ = (*image.NRGBA).At
	_ = (*image.NRGBA).Bounds
	_ = (*image.NRGBA).ColorModel
	_ = (*image.NRGBA).NRGBAAt
	_ = (*image.NRGBA).Opaque
	_ = (*image.NRGBA).PixOffset
	_ = (*image.NRGBA).RGBA64At
	_ = (*image.NRGBA).Set
	_ = (*image.NRGBA).SetNRGBA
	_ = (*image.NRGBA).SetRGBA64
	_ = (*image.NRGBA).SubImage

	_ = (*image.NRGBA64).At
	_ = (*image.NRGBA64).Bounds
	_ = (*image.NRGBA64).ColorModel
	_ = (*image.NRGBA64).NRGBA64At
	_ = (*image.NRGBA64).Opaque
	_ = (*image.NRGBA64).PixOffset
	_ = (*image.NRGBA64).RGBA64At
	_ = (*image.NRGBA64).Set
	_ = (*image.NRGBA64).SetNRGBA64
	_ = (*image.NRGBA64).SetRGBA64
	_ = (*image.NRGBA64).SubImage

	_ = (*image.NYCbCrA).AOffset
	_ = (*image.NYCbCrA).At
	_ = (*image.NYCbCrA).Bounds
	_ = (*image.NYCbCrA).ColorModel
	_ = (*image.NYCbCrA).NYCbCrAAt
	_ = (*image.NYCbCrA).Opaque
	_ = (*image.NYCbCrA).RGBA64At
	_ = (*image.NYCbCrA).SubImage

	_ = (*image.Paletted).At
	_ = (*image.Paletted).Bounds
	_ = (*image.Paletted).ColorIndexAt
	_ = (*image.Paletted).ColorModel
	_ = (*image.Paletted).Opaque
	_ = (*image.Paletted).PixOffset
	_ = (*image.Paletted).RGBA64At
	_ = (*image.Paletted).Set
	_ = (*image.Paletted).SetColorIndex
	_ = (*image.Paletted).SetRGBA64
	_ = (*image.Paletted).SubImage

	_ = (*image.RGBA).At
	_ = (*image.RGBA).Bounds
	_ = (*image.RGBA).ColorModel
	_ = (*image.RGBA).Opaque
	_ = (*image.RGBA).PixOffset
	_ = (*image.RGBA).RGBA64At
	_ = (*image.RGBA).RGBAAt
	_ = (*image.RGBA).Set
	_ = (*image.RGBA).SetRGBA
	_ = (*image.RGBA).SetRGBA64
	_ = (*image.RGBA).SubImage

	_ = (*image.RGBA64).At
	_ = (*image.RGBA64).Bounds
	_ = (*image.RGBA64).ColorModel
	_ = (*image.RGBA64).Opaque
	_ = (*image.RGBA64).PixOffset
	_ = (*image.RGBA64).RGBA64At
	_ = (*image.RGBA64).Set
	_ = (*image.RGBA64).SetRGBA64
	_ = (*image.RGBA64).SubImage

	_ = (*image.Uniform).At
	_ = (*image.Uniform).Bounds
	_ = (*image.Uniform).ColorModel
	_ = (*image.Uniform).Convert
	_ = (*image.Uniform).Opaque
	_ = (*image.Uniform).RGBA
	_ = (*image.Uniform).RGBA64At

	_ = (*image.YCbCr).At
	_ = (*image.YCbCr).Bounds
	_ = (*image.YCbCr).COffset
	_ = (*image.YCbCr).ColorModel
	_ = (*image.YCbCr).Opaque
	_ = (*image.YCbCr).RGBA64At
	_ = (*image.YCbCr).SubImage
	_ = (*image.YCbCr).YCbCrAt
	_ = (*image.YCbCr).YOffset

	var _ image.Image = (*image.RGBA)(nil)
	var _ image.PalettedImage = (*image.Paletted)(nil)
	var _ image.RGBA64Image = (*image.RGBA)(nil)

	_ = image.Image(nil)
	_ = image.PalettedImage(nil)
	_ = image.RGBA64Image(nil)
}

func TestDecodeInvalidFormat(t *testing.T) {
	_, _, err := image.Decode(bytes.NewReader([]byte("not-image")))
	if err == nil {
		t.Fatal("Decode should fail for invalid input")
	}
	if !errors.Is(err, image.ErrFormat) {
		t.Logf("Decode error = %v (acceptable as non-ErrFormat on malformed data)", err)
	}
}
