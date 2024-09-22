package testvisitor_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	"github.com/goplus/llgo/chore/gogensig/visitor/testvisitor/cmptest"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func TestSpectrum(t *testing.T) {
	cmptest.RunTest(t, "spectrum", true, []symb.SymbolEntry{}, &cppgtypes.Config{
		Cplusplus: true,
	},
		`
	enum spectrum
	{
	    red,
	    orange,
	    yello,
	    green,
	    blue,
	    violet
	};

	enum kids
	{
	    nippy,
	    slats,
	    skippy,
	    nina,
	    liz
	};

	enum levels
	{
	    low = 100,
	    medium = 500,
	    high = 2000
	};

	enum feline
	{
	    cat,
	    lynx = 10,
	    puma,
	    tiger
	};

	enum class PieceType
	{
	    King = 1,
	    Queen,
	    Rook = 10,
	    Pawn
	};`,
		`
		package spectrum

const (
	Spectrum_red    = 0
	Spectrum_orange = 1
	Spectrum_yello  = 2
	Spectrum_green  = 3
	Spectrum_blue   = 4
	Spectrum_violet = 5
)
const (
	Kids_nippy  = 0
	Kids_slats  = 1
	Kids_skippy = 2
	Kids_nina   = 3
	Kids_liz    = 4
)
const (
	Levels_low    = 100
	Levels_medium = 500
	Levels_high   = 2000
)
const (
	Feline_cat   = 0
	Feline_lynx  = 10
	Feline_puma  = 11
	Feline_tiger = 12
)
const (
	Piecetype_King  = 1
	Piecetype_Queen = 2
	Piecetype_Rook  = 10
	Piecetype_Pawn  = 11
)
`)
}
