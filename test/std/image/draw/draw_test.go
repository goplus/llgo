package draw_test

import (
	"image"
	"image/color"
	"image/draw"
	"testing"
)

type dummyQuantizer struct{}

func (dummyQuantizer) Quantize(p color.Palette, _ image.Image) color.Palette {
	return p
}

func TestDrawAndDrawMask(t *testing.T) {
	dst := image.NewRGBA(image.Rect(0, 0, 2, 1))
	src := image.NewUniform(color.RGBA{R: 255, A: 255})
	draw.Draw(dst, dst.Bounds(), src, image.Point{}, draw.Src)

	if got := dst.RGBAAt(0, 0); got.R != 255 || got.A != 255 {
		t.Fatalf("Draw result = %#v", got)
	}

	mask := image.NewAlpha(image.Rect(0, 0, 2, 1))
	mask.SetAlpha(0, 0, color.Alpha{A: 255})
	mask.SetAlpha(1, 0, color.Alpha{A: 0})
	blue := image.NewUniform(color.RGBA{B: 255, A: 255})
	draw.DrawMask(dst, dst.Bounds(), blue, image.Point{}, mask, image.Point{}, draw.Over)

	left := dst.RGBAAt(0, 0)
	right := dst.RGBAAt(1, 0)
	if left.B == 0 {
		t.Fatalf("masked pixel not updated: %#v", left)
	}
	if right.B != 0 {
		t.Fatalf("unmasked pixel should remain unchanged: %#v", right)
	}
}

func TestOpDrawAndFloydSteinberg(t *testing.T) {
	dst := image.NewRGBA(image.Rect(0, 0, 1, 1))
	src := image.NewUniform(color.RGBA{G: 200, A: 255})
	draw.Over.Draw(dst, dst.Bounds(), src, image.Point{})
	if got := dst.RGBAAt(0, 0); got.G == 0 {
		t.Fatalf("Op.Draw result = %#v", got)
	}

	pal := image.NewPaletted(image.Rect(0, 0, 1, 1), color.Palette{color.Black, color.White})
	draw.FloydSteinberg.Draw(pal, pal.Bounds(), image.NewUniform(color.White), image.Point{})
	if idx := pal.ColorIndexAt(0, 0); idx != 1 {
		t.Fatalf("FloydSteinberg result index = %d, want 1", idx)
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = draw.Draw
	_ = draw.DrawMask
	_ = draw.FloydSteinberg
	_ = draw.Over
	_ = draw.Src
	if draw.Op(0) != draw.Over {
		t.Fatalf("Op(0) should be Over, got %v", draw.Op(0))
	}

	var _ draw.Image = image.NewRGBA(image.Rect(0, 0, 1, 1))
	var _ draw.RGBA64Image = image.NewRGBA64(image.Rect(0, 0, 1, 1))
	var _ draw.Quantizer = dummyQuantizer{}
}
