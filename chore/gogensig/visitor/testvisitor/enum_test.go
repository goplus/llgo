package testvisitor_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestSpectrum(t *testing.T) {
	docPath := "./_testinput/_enumtest/spectrum.h"
	astConvert := visitor.NewAstConvert("spectrum", docPath)
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	bytes, err := util.Llcppsigfetch(docPath, false, true)
	if err != nil {
		t.Fatal(err)
	}
	p.UnmarshalBytes(bytes)
}
