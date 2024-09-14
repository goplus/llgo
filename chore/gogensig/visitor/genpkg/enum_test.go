package genpkg_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestSpectrum(t *testing.T) {
	docPath := "./_enumtest/spectrum.json"
	astConvert := visitor.NewAstConvert("spectrum", docPath)
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	p.UnmarshalFile(docPath)
}
