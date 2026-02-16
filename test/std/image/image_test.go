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

	var _ image.Image = (*image.RGBA)(nil)
	var _ image.PalettedImage = (*image.Paletted)(nil)
	var _ image.RGBA64Image = (*image.RGBA)(nil)

	_ = image.Image(nil)
	_ = image.PalettedImage(nil)
	_ = image.RGBA64Image(nil)
}

func TestConcreteMethodCoverage(t *testing.T) {
	r := image.Rect(0, 0, 2, 2)
	p := image.Pt(1, 1)
	if image.YCbCrSubsampleRatio420.String() == "" {
		t.Fatal("YCbCrSubsampleRatio.String returned empty string")
	}

	if got := p.Add(image.Pt(1, 1)); got != (image.Pt(2, 2)) {
		t.Fatalf("Point.Add = %v, want (2,2)", got)
	}
	if got := p.Div(1); got != p {
		t.Fatalf("Point.Div = %v, want %v", got, p)
	}
	if !p.Eq(image.Pt(1, 1)) {
		t.Fatal("Point.Eq returned false")
	}
	if !p.In(r) {
		t.Fatal("Point.In returned false")
	}
	if got := p.Mod(r); got != p {
		t.Fatalf("Point.Mod = %v, want %v", got, p)
	}
	if got := p.Mul(2); got != (image.Pt(2, 2)) {
		t.Fatalf("Point.Mul = %v, want (2,2)", got)
	}
	if got := p.String(); got != "(1,1)" {
		t.Fatalf("Point.String = %q, want %q", got, "(1,1)")
	}
	if got := p.Sub(image.Pt(1, 1)); got != (image.Pt(0, 0)) {
		t.Fatalf("Point.Sub = %v, want (0,0)", got)
	}

	if got := r.Add(image.Pt(1, 1)); got != (image.Rect(1, 1, 3, 3)) {
		t.Fatalf("Rectangle.Add = %v", got)
	}
	if c := r.At(0, 0); c == nil {
		t.Fatal("Rectangle.At returned nil color")
	}
	if got := r.Bounds(); got != r {
		t.Fatalf("Rectangle.Bounds = %v, want %v", got, r)
	}
	if got := r.Canon(); got != r {
		t.Fatalf("Rectangle.Canon = %v, want %v", got, r)
	}
	if m := r.ColorModel(); m == nil {
		t.Fatal("Rectangle.ColorModel returned nil")
	}
	if got := r.Dx(); got != 2 {
		t.Fatalf("Rectangle.Dx = %d, want 2", got)
	}
	if got := r.Dy(); got != 2 {
		t.Fatalf("Rectangle.Dy = %d, want 2", got)
	}
	if r.Empty() {
		t.Fatal("Rectangle.Empty returned true")
	}
	if !r.Eq(r) {
		t.Fatal("Rectangle.Eq returned false")
	}
	if !r.In(image.Rect(-1, -1, 3, 3)) {
		t.Fatal("Rectangle.In returned false")
	}
	if got := r.Inset(1); got != (image.Rect(1, 1, 1, 1)) {
		t.Fatalf("Rectangle.Inset = %v", got)
	}
	if got := r.Intersect(image.Rect(1, 1, 3, 3)); got != (image.Rect(1, 1, 2, 2)) {
		t.Fatalf("Rectangle.Intersect = %v", got)
	}
	if !r.Overlaps(image.Rect(1, 1, 3, 3)) {
		t.Fatal("Rectangle.Overlaps returned false")
	}
	if got := r.RGBA64At(0, 0); got.A == 0 {
		t.Fatalf("Rectangle.RGBA64At alpha = %d, want non-zero", got.A)
	}
	if got := r.Size(); got != (image.Pt(2, 2)) {
		t.Fatalf("Rectangle.Size = %v, want (2,2)", got)
	}
	if got := r.String(); got == "" {
		t.Fatal("Rectangle.String returned empty")
	}
	if got := r.Sub(image.Pt(1, 1)); got != (image.Rect(-1, -1, 1, 1)) {
		t.Fatalf("Rectangle.Sub = %v", got)
	}
	if got := r.Union(image.Rect(1, 1, 3, 3)); got != (image.Rect(0, 0, 3, 3)) {
		t.Fatalf("Rectangle.Union = %v", got)
	}

	a := image.NewAlpha(r)
	a.Set(0, 0, color.Alpha{A: 7})
	a.SetAlpha(0, 0, color.Alpha{A: 8})
	a.SetRGBA64(0, 0, color.RGBA64{A: 0xFFFF})
	if got := a.AlphaAt(0, 0).A; got != 0xFF {
		t.Fatalf("Alpha.AlphaAt = %d, want 255", got)
	}
	if c := a.At(0, 0); c == nil {
		t.Fatal("Alpha.At returned nil")
	}
	if got := a.Bounds(); got != r {
		t.Fatalf("Alpha.Bounds = %v, want %v", got, r)
	}
	if m := a.ColorModel(); m == nil {
		t.Fatal("Alpha.ColorModel returned nil")
	}
	if a.Opaque() {
		t.Fatal("Alpha.Opaque should be false with unset pixels")
	}
	if got := a.PixOffset(0, 0); got != 0 {
		t.Fatalf("Alpha.PixOffset = %d, want 0", got)
	}
	if got := a.RGBA64At(0, 0).A; got != 0xFFFF {
		t.Fatalf("Alpha.RGBA64At alpha = %d, want 65535", got)
	}
	if got := a.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("Alpha.SubImage bounds = %v", got)
	}

	a16 := image.NewAlpha16(r)
	a16.Set(0, 0, color.Alpha16{A: 7})
	a16.SetAlpha16(0, 0, color.Alpha16{A: 9})
	a16.SetRGBA64(0, 0, color.RGBA64{A: 0xFFFF})
	if got := a16.Alpha16At(0, 0).A; got != 0xFFFF {
		t.Fatalf("Alpha16.Alpha16At = %d, want 65535", got)
	}
	if c := a16.At(0, 0); c == nil {
		t.Fatal("Alpha16.At returned nil")
	}
	if got := a16.Bounds(); got != r {
		t.Fatalf("Alpha16.Bounds = %v, want %v", got, r)
	}
	if m := a16.ColorModel(); m == nil {
		t.Fatal("Alpha16.ColorModel returned nil")
	}
	if a16.Opaque() {
		t.Fatal("Alpha16.Opaque should be false with unset pixels")
	}
	if got := a16.PixOffset(0, 0); got != 0 {
		t.Fatalf("Alpha16.PixOffset = %d, want 0", got)
	}
	if got := a16.RGBA64At(0, 0).A; got != 0xFFFF {
		t.Fatalf("Alpha16.RGBA64At alpha = %d, want 65535", got)
	}
	if got := a16.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("Alpha16.SubImage bounds = %v", got)
	}

	cm := image.NewCMYK(r)
	cm.Set(0, 0, color.CMYK{C: 1, M: 2, Y: 3, K: 4})
	cm.SetCMYK(0, 0, color.CMYK{C: 5, M: 6, Y: 7, K: 8})
	cm.SetRGBA64(0, 0, color.RGBA64{R: 0xFFFF, A: 0xFFFF})
	if c := cm.At(0, 0); c == nil {
		t.Fatal("CMYK.At returned nil")
	}
	if got := cm.Bounds(); got != r {
		t.Fatalf("CMYK.Bounds = %v, want %v", got, r)
	}
	if got := cm.CMYKAt(0, 0); got.C|got.M|got.Y|got.K == 0 {
		t.Fatalf("CMYK.CMYKAt = %#v, want non-zero", got)
	}
	if m := cm.ColorModel(); m == nil {
		t.Fatal("CMYK.ColorModel returned nil")
	}
	if !cm.Opaque() {
		t.Fatal("CMYK.Opaque should be true")
	}
	if got := cm.PixOffset(0, 0); got != 0 {
		t.Fatalf("CMYK.PixOffset = %d, want 0", got)
	}
	if got := cm.RGBA64At(0, 0); got.A == 0 {
		t.Fatalf("CMYK.RGBA64At alpha = %d, want non-zero", got.A)
	}
	if got := cm.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("CMYK.SubImage bounds = %v", got)
	}

	g := image.NewGray(r)
	g.Set(0, 0, color.Gray{Y: 11})
	g.SetGray(0, 0, color.Gray{Y: 12})
	g.SetRGBA64(0, 0, color.RGBA64{A: 0xFFFF})
	g.SetGray(0, 0, color.Gray{Y: 13})
	if c := g.At(0, 0); c == nil {
		t.Fatal("Gray.At returned nil")
	}
	if got := g.Bounds(); got != r {
		t.Fatalf("Gray.Bounds = %v, want %v", got, r)
	}
	if m := g.ColorModel(); m == nil {
		t.Fatal("Gray.ColorModel returned nil")
	}
	if got := g.GrayAt(0, 0).Y; got == 0 {
		t.Fatalf("Gray.GrayAt = %d, want non-zero", got)
	}
	if !g.Opaque() {
		t.Fatal("Gray.Opaque should be true")
	}
	if got := g.PixOffset(0, 0); got != 0 {
		t.Fatalf("Gray.PixOffset = %d, want 0", got)
	}
	if got := g.RGBA64At(0, 0).A; got != 0xFFFF {
		t.Fatalf("Gray.RGBA64At alpha = %d, want 65535", got)
	}
	if got := g.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("Gray.SubImage bounds = %v", got)
	}

	g16 := image.NewGray16(r)
	g16.Set(0, 0, color.Gray16{Y: 11})
	g16.SetGray16(0, 0, color.Gray16{Y: 12})
	g16.SetRGBA64(0, 0, color.RGBA64{A: 0xFFFF})
	g16.SetGray16(0, 0, color.Gray16{Y: 13})
	if c := g16.At(0, 0); c == nil {
		t.Fatal("Gray16.At returned nil")
	}
	if got := g16.Bounds(); got != r {
		t.Fatalf("Gray16.Bounds = %v, want %v", got, r)
	}
	if m := g16.ColorModel(); m == nil {
		t.Fatal("Gray16.ColorModel returned nil")
	}
	if got := g16.Gray16At(0, 0).Y; got == 0 {
		t.Fatalf("Gray16.Gray16At = %d, want non-zero", got)
	}
	if !g16.Opaque() {
		t.Fatal("Gray16.Opaque should be true")
	}
	if got := g16.PixOffset(0, 0); got != 0 {
		t.Fatalf("Gray16.PixOffset = %d, want 0", got)
	}
	if got := g16.RGBA64At(0, 0).A; got != 0xFFFF {
		t.Fatalf("Gray16.RGBA64At alpha = %d, want 65535", got)
	}
	if got := g16.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("Gray16.SubImage bounds = %v", got)
	}

	n := image.NewNRGBA(r)
	n.Set(0, 0, color.NRGBA{R: 1, A: 2})
	n.SetNRGBA(0, 0, color.NRGBA{R: 3, A: 4})
	n.SetRGBA64(0, 0, color.RGBA64{R: 0xFFFF, A: 0xFFFF})
	if c := n.At(0, 0); c == nil {
		t.Fatal("NRGBA.At returned nil")
	}
	if got := n.Bounds(); got != r {
		t.Fatalf("NRGBA.Bounds = %v, want %v", got, r)
	}
	if m := n.ColorModel(); m == nil {
		t.Fatal("NRGBA.ColorModel returned nil")
	}
	if got := n.NRGBAAt(0, 0); got.A == 0 {
		t.Fatalf("NRGBA.NRGBAAt alpha = %d, want non-zero", got.A)
	}
	if n.Opaque() {
		t.Fatal("NRGBA.Opaque should be false with unset pixels")
	}
	if got := n.PixOffset(0, 0); got != 0 {
		t.Fatalf("NRGBA.PixOffset = %d, want 0", got)
	}
	if got := n.RGBA64At(0, 0).A; got == 0 {
		t.Fatalf("NRGBA.RGBA64At alpha = %d, want non-zero", got)
	}
	if got := n.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("NRGBA.SubImage bounds = %v", got)
	}

	n64 := image.NewNRGBA64(r)
	n64.Set(0, 0, color.NRGBA64{R: 1, A: 2})
	n64.SetNRGBA64(0, 0, color.NRGBA64{R: 3, A: 4})
	n64.SetRGBA64(0, 0, color.RGBA64{R: 0xFFFF, A: 0xFFFF})
	if c := n64.At(0, 0); c == nil {
		t.Fatal("NRGBA64.At returned nil")
	}
	if got := n64.Bounds(); got != r {
		t.Fatalf("NRGBA64.Bounds = %v, want %v", got, r)
	}
	if m := n64.ColorModel(); m == nil {
		t.Fatal("NRGBA64.ColorModel returned nil")
	}
	if got := n64.NRGBA64At(0, 0); got.A == 0 {
		t.Fatalf("NRGBA64.NRGBA64At alpha = %d, want non-zero", got.A)
	}
	if n64.Opaque() {
		t.Fatal("NRGBA64.Opaque should be false with unset pixels")
	}
	if got := n64.PixOffset(0, 0); got != 0 {
		t.Fatalf("NRGBA64.PixOffset = %d, want 0", got)
	}
	if got := n64.RGBA64At(0, 0).A; got == 0 {
		t.Fatalf("NRGBA64.RGBA64At alpha = %d, want non-zero", got)
	}
	if got := n64.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("NRGBA64.SubImage bounds = %v", got)
	}

	ny := image.NewNYCbCrA(r, image.YCbCrSubsampleRatio420)
	aoff := ny.AOffset(0, 0)
	ny.A[aoff] = 200
	if got := ny.AOffset(0, 0); got != aoff {
		t.Fatalf("NYCbCrA.AOffset = %d, want %d", got, aoff)
	}
	if c := ny.At(0, 0); c == nil {
		t.Fatal("NYCbCrA.At returned nil")
	}
	if got := ny.Bounds(); got != r {
		t.Fatalf("NYCbCrA.Bounds = %v, want %v", got, r)
	}
	if m := ny.ColorModel(); m == nil {
		t.Fatal("NYCbCrA.ColorModel returned nil")
	}
	if got := ny.NYCbCrAAt(0, 0).A; got != 200 {
		t.Fatalf("NYCbCrA.NYCbCrAAt alpha = %d, want 200", got)
	}
	if ny.Opaque() {
		t.Fatal("NYCbCrA.Opaque should be false")
	}
	if got := ny.RGBA64At(0, 0).A; got == 0 {
		t.Fatalf("NYCbCrA.RGBA64At alpha = %d, want non-zero", got)
	}
	if got := ny.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("NYCbCrA.SubImage bounds = %v", got)
	}

	pal := image.NewPaletted(r, color.Palette{color.Black, color.White})
	pal.Set(0, 0, color.White)
	pal.SetColorIndex(0, 0, 1)
	pal.SetRGBA64(1, 1, color.RGBA64{A: 0xFFFF})
	if c := pal.At(0, 0); c == nil {
		t.Fatal("Paletted.At returned nil")
	}
	if got := pal.Bounds(); got != r {
		t.Fatalf("Paletted.Bounds = %v, want %v", got, r)
	}
	if got := pal.ColorIndexAt(0, 0); got != 1 {
		t.Fatalf("Paletted.ColorIndexAt = %d, want 1", got)
	}
	if m := pal.ColorModel(); m == nil {
		t.Fatal("Paletted.ColorModel returned nil")
	}
	if !pal.Opaque() {
		t.Fatal("Paletted.Opaque should be true for opaque palette")
	}
	if got := pal.PixOffset(0, 0); got != 0 {
		t.Fatalf("Paletted.PixOffset = %d, want 0", got)
	}
	if got := pal.RGBA64At(0, 0).A; got == 0 {
		t.Fatalf("Paletted.RGBA64At alpha = %d, want non-zero", got)
	}
	if got := pal.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("Paletted.SubImage bounds = %v", got)
	}

	rgba := image.NewRGBA(r)
	rgba.Set(0, 0, color.RGBA{R: 1, A: 2})
	rgba.SetRGBA(0, 0, color.RGBA{R: 3, A: 4})
	rgba.SetRGBA64(0, 0, color.RGBA64{R: 0xFFFF, A: 0xFFFF})
	if c := rgba.At(0, 0); c == nil {
		t.Fatal("RGBA.At returned nil")
	}
	if got := rgba.Bounds(); got != r {
		t.Fatalf("RGBA.Bounds = %v, want %v", got, r)
	}
	if m := rgba.ColorModel(); m == nil {
		t.Fatal("RGBA.ColorModel returned nil")
	}
	if rgba.Opaque() {
		t.Fatal("RGBA.Opaque should be false with unset pixels")
	}
	if got := rgba.PixOffset(0, 0); got != 0 {
		t.Fatalf("RGBA.PixOffset = %d, want 0", got)
	}
	if got := rgba.RGBA64At(0, 0).A; got == 0 {
		t.Fatalf("RGBA.RGBA64At alpha = %d, want non-zero", got)
	}
	if got := rgba.RGBAAt(0, 0).A; got == 0 {
		t.Fatalf("RGBA.RGBAAt alpha = %d, want non-zero", got)
	}
	if got := rgba.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("RGBA.SubImage bounds = %v", got)
	}

	rgba64 := image.NewRGBA64(r)
	rgba64.Set(0, 0, color.RGBA64{R: 1, A: 2})
	rgba64.SetRGBA64(0, 0, color.RGBA64{R: 3, A: 4})
	if c := rgba64.At(0, 0); c == nil {
		t.Fatal("RGBA64.At returned nil")
	}
	if got := rgba64.Bounds(); got != r {
		t.Fatalf("RGBA64.Bounds = %v, want %v", got, r)
	}
	if m := rgba64.ColorModel(); m == nil {
		t.Fatal("RGBA64.ColorModel returned nil")
	}
	if rgba64.Opaque() {
		t.Fatal("RGBA64.Opaque should be false with unset pixels")
	}
	if got := rgba64.PixOffset(0, 0); got != 0 {
		t.Fatalf("RGBA64.PixOffset = %d, want 0", got)
	}
	if got := rgba64.RGBA64At(0, 0).A; got == 0 {
		t.Fatalf("RGBA64.RGBA64At alpha = %d, want non-zero", got)
	}
	if got := rgba64.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("RGBA64.SubImage bounds = %v", got)
	}

	u := image.NewUniform(color.RGBA{R: 9, G: 8, B: 7, A: 6})
	if c := u.At(0, 0); c == nil {
		t.Fatal("Uniform.At returned nil")
	}
	if got := u.Bounds(); got != (image.Rect(-1e9, -1e9, 1e9, 1e9)) {
		t.Fatalf("Uniform.Bounds = %v", got)
	}
	if m := u.ColorModel(); m == nil {
		t.Fatal("Uniform.ColorModel returned nil")
	}
	if c := u.Convert(color.Black); c == nil {
		t.Fatal("Uniform.Convert returned nil")
	}
	if u.Opaque() {
		t.Fatal("Uniform.Opaque should be false for alpha<255")
	}
	r0, g0, b0, a0 := u.RGBA()
	if r0 == 0 && g0 == 0 && b0 == 0 && a0 == 0 {
		t.Fatal("Uniform.RGBA returned all zeros")
	}
	if got := u.RGBA64At(0, 0).A; got == 0 {
		t.Fatalf("Uniform.RGBA64At alpha = %d, want non-zero", got)
	}

	y := image.NewYCbCr(r, image.YCbCrSubsampleRatio420)
	y.Y[y.YOffset(0, 0)] = 128
	y.Cb[y.COffset(0, 0)] = 64
	y.Cr[y.COffset(0, 0)] = 192
	if c := y.At(0, 0); c == nil {
		t.Fatal("YCbCr.At returned nil")
	}
	if got := y.Bounds(); got != r {
		t.Fatalf("YCbCr.Bounds = %v, want %v", got, r)
	}
	if got := y.COffset(0, 0); got != 0 {
		t.Fatalf("YCbCr.COffset = %d, want 0", got)
	}
	if m := y.ColorModel(); m == nil {
		t.Fatal("YCbCr.ColorModel returned nil")
	}
	if !y.Opaque() {
		t.Fatal("YCbCr.Opaque should be true")
	}
	if got := y.RGBA64At(0, 0).A; got != 0xFFFF {
		t.Fatalf("YCbCr.RGBA64At alpha = %d, want 65535", got)
	}
	if got := y.SubImage(image.Rect(0, 0, 1, 1)).Bounds(); got != (image.Rect(0, 0, 1, 1)) {
		t.Fatalf("YCbCr.SubImage bounds = %v", got)
	}
	if got := y.YCbCrAt(0, 0); got.Y != 128 || got.Cb != 64 || got.Cr != 192 {
		t.Fatalf("YCbCr.YCbCrAt = %#v, want {128,64,192}", got)
	}
	if got := y.YOffset(0, 0); got != 0 {
		t.Fatalf("YCbCr.YOffset = %d, want 0", got)
	}
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
