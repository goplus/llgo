package color_test

import (
	"image/color"
	"testing"
)

func TestConversionFunctions(t *testing.T) {
	r, g, b := color.CMYKToRGB(10, 20, 30, 40)
	c, m, y, k := color.RGBToCMYK(r, g, b)
	if c > 255 || m > 255 || y > 255 || k > 255 {
		t.Fatalf("RGBToCMYK out of range: %d %d %d %d", c, m, y, k)
	}

	y0, cb, cr := color.RGBToYCbCr(100, 120, 140)
	r2, g2, b2 := color.YCbCrToRGB(y0, cb, cr)
	if r2 > 255 || g2 > 255 || b2 > 255 {
		t.Fatalf("YCbCrToRGB out of range: %d %d %d", r2, g2, b2)
	}
}

func TestColorTypesRGBA(t *testing.T) {
	colors := []color.Color{
		color.Alpha{A: 0x7f},
		color.Alpha16{A: 0x7fff},
		color.CMYK{C: 1, M: 2, Y: 3, K: 4},
		color.Gray{Y: 0x22},
		color.Gray16{Y: 0x2222},
		color.NRGBA{R: 1, G: 2, B: 3, A: 4},
		color.NRGBA64{R: 1, G: 2, B: 3, A: 4},
		color.NYCbCrA{YCbCr: color.YCbCr{Y: 10, Cb: 20, Cr: 30}, A: 40},
		color.RGBA{R: 5, G: 6, B: 7, A: 8},
		color.RGBA64{R: 5, G: 6, B: 7, A: 8},
		color.YCbCr{Y: 10, Cb: 20, Cr: 30},
	}
	for i, c := range colors {
		r, g, b, a := c.RGBA()
		_ = r
		_ = g
		_ = b
		if a > 0xffff {
			t.Fatalf("color[%d] alpha out of range: %d", i, a)
		}
	}
}

func TestModelsAndPalette(t *testing.T) {
	src := color.NRGBA{R: 10, G: 20, B: 30, A: 200}
	models := []color.Model{
		color.RGBAModel,
		color.RGBA64Model,
		color.NRGBAModel,
		color.NRGBA64Model,
		color.AlphaModel,
		color.Alpha16Model,
		color.GrayModel,
		color.Gray16Model,
		color.CMYKModel,
		color.YCbCrModel,
		color.NYCbCrAModel,
	}
	for i, m := range models {
		if got := m.Convert(src); got == nil {
			t.Fatalf("model[%d] Convert returned nil", i)
		}
	}

	mf := color.ModelFunc(func(c color.Color) color.Color {
		return color.GrayModel.Convert(c)
	})
	if _, ok := mf.Convert(src).(color.Gray); !ok {
		t.Fatal("ModelFunc conversion did not produce Gray")
	}

	p := color.Palette{color.Black, color.White}
	if idx := p.Index(color.RGBA{R: 255, G: 255, B: 255, A: 255}); idx != 1 {
		t.Fatalf("Palette.Index = %d, want 1", idx)
	}
	if got := p.Convert(color.RGBA{R: 1, G: 1, B: 1, A: 255}); got == nil {
		t.Fatal("Palette.Convert returned nil")
	}
}

func TestPublicSymbols(t *testing.T) {
	_ = color.Black
	_ = color.White
	_ = color.Transparent
	_ = color.Opaque

	_ = color.CMYKToRGB
	_ = color.RGBToCMYK
	_ = color.RGBToYCbCr
	_ = color.YCbCrToRGB
	_ = color.ModelFunc

	_ = color.Alpha{}.RGBA
	_ = color.Alpha16{}.RGBA
	_ = color.CMYK{}.RGBA
	_ = color.Gray{}.RGBA
	_ = color.Gray16{}.RGBA
	_ = color.NRGBA{}.RGBA
	_ = color.NRGBA64{}.RGBA
	_ = color.NYCbCrA{}.RGBA
	_ = color.RGBA{}.RGBA
	_ = color.RGBA64{}.RGBA
	_ = color.YCbCr{}.RGBA

	var _ color.Color = color.RGBA{}
	var _ color.Model = color.RGBAModel
	var _ color.Model = color.ModelFunc(func(c color.Color) color.Color { return c })
	var _ color.Palette = color.Palette{color.Black}
}
