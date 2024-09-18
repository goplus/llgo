package testvisitor_test

import (
	"bytes"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg"
	"github.com/goplus/llgo/chore/gogensig/visitor/testvisitor/cmptest"
)

func TestSpectrum(t *testing.T) {
	docPath := "./_testinput/_enumtest/spectrum.h"
	astConvert := visitor.NewAstConvert("spectrum", docPath)
	var buf bytes.Buffer
	astConvert.SetVisitDone(func(pkg *genpkg.Package, docPath string) {
		err := pkg.WriteToBuffer(&buf)
		if err != nil {
			t.Fatalf("WriteTo failed: %v", err)
		}
	})
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	bytes, err := util.Llcppsigfetch(docPath, false, true)
	if err != nil {
		t.Fatal(err)
	}
	p.UnmarshalBytes(bytes)
	expectedString := `
	package spectrum

const Spectrum_red int = 0
const Spectrum_orange int = 1
const Spectrum_yello int = 2
const Spectrum_green int = 3
const Spectrum_blue int = 4
const Spectrum_violet int = 5
const Kids_nippy int = 0
const Kids_slats int = 1
const Kids_skippy int = 2
const Kids_nina int = 3
const Kids_liz int = 4
const Levels_low int = 100
const Levels_medium int = 500
const Levels_high int = 2000
const Feline_cat int = 0
const Feline_lynx int = 10
const Feline_puma int = 11
const Feline_tiger int = 12
const Piecetype_King int = 1
const Piecetype_Queen int = 2
const Piecetype_Rook int = 10
const Piecetype_Pawn int = 11
	`
	result := buf.String()
	isEqual, diff := cmptest.EqualStringIgnoreSpace(result, expectedString)
	if !isEqual {
		t.Errorf("%s", diff)
	}
}
