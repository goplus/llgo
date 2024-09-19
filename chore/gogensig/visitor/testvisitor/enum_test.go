package testvisitor_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	"github.com/goplus/llgo/chore/gogensig/visitor/testvisitor/cmptest"
)

func TestSpectrum(t *testing.T) {
	cmptest.RunTest(t, "spectrum", true, []symb.SymbolEntry{},
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
const Piecetype_Pawn int = 11`)
}
