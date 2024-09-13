package symb_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
)

func TestLookupSymble(t *testing.T) {
	table, err := symb.NewSymbolTable("../../../llcppg/llcppg.symb.json")
	if err != nil {
		t.Fatal(err)
	}
	entry, err := table.LookupSymbol("_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b")
	if err != nil {
		t.Fatal(err)
	}
	if entry.CppName != "INIReader::GetBoolean(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, bool) const" &&
		entry.GoName != "(*Reader).GetBoolean" {
		t.FailNow()
	}
}
