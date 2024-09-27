package config_test

import (
	"testing"

	"github.com/google/go-cmp/cmp"
	"github.com/goplus/llgo/chore/gogensig/config"
)

func TestLookupSymbleOK(t *testing.T) {
	table, err := config.NewSymbolTable("./_testinput/llcppg.symb.json")
	if err != nil {
		t.Fatal(err)
	}
	entry, err := table.LookupSymbol("_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b")
	if err != nil {
		t.Fatal(err)
	}
	const expectCppName = "INIReader::GetBoolean(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, bool) const"
	const expectGoName = "(*Reader).GetBoolean"
	if !cmp.Equal(string(entry.CppName), expectCppName) ||
		!cmp.Equal(string(entry.GoName), expectGoName) {
		t.Fatalf("%s\n%s", cmp.Diff(entry.CppName, expectCppName), cmp.Diff(entry.GoName, expectGoName))
	}
}

func TestLookupSymbleError(t *testing.T) {
	_, err := config.NewSymbolTable("./_testinput/llcppg.symb.txt")
	if err == nil {
		t.Error("expect error")
	}
	table, err := config.NewSymbolTable("./_testinput/llcppg.symb.json")
	if err != nil {
		t.Fatal(err)
	}
	lookupSymbs := []string{
		"_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_bXXX",
		"",
	}
	for _, lookupSymbol := range lookupSymbs {
		_, err := table.LookupSymbol(lookupSymbol)
		if err == nil {
			t.Error("expect error")
		}
	}
	nilTable, _ := config.NewSymbolTable("")
	_, err = nilTable.LookupSymbol("_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_bXXX")
	if err == nil {
		t.Error("expect error")
	}
}
