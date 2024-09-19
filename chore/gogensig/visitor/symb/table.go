package symb

import (
	"encoding/json"
	"fmt"

	"github.com/goplus/llgo/chore/gogensig/util"
)

type MangleNameType string

type CppNameType string

type GoNameType string

type SymbolEntry struct {
	MangleName MangleNameType `json:"mangle"`
	CppName    CppNameType    `json:"c++"`
	GoName     GoNameType     `json:"go"`
}

type SymbolTable struct {
	t map[MangleNameType]SymbolEntry
}

func NewSymbolTable(filePath string) (*SymbolTable, error) {
	bytes, err := util.ReadFile(filePath)
	if err != nil {
		return nil, err
	}
	var symbs []SymbolEntry
	err = json.Unmarshal(bytes, &symbs)
	if err != nil {
		return nil, err
	}
	var symbolTable SymbolTable
	symbolTable.t = make(map[MangleNameType]SymbolEntry)
	for _, symb := range symbs {
		symbolTable.t[symb.MangleName] = symb
	}
	return &symbolTable, nil
}

func (t *SymbolTable) LookupSymbol(name MangleNameType) (*SymbolEntry, error) {
	if t.t == nil {
		return nil, fmt.Errorf("symbol table not initialized")
	}
	if len(name) <= 0 {
		return nil, fmt.Errorf("symbol not found")
	}
	symbol, ok := t.t[name]
	if ok {
		return &symbol, nil
	}
	return nil, fmt.Errorf("symbol not found")
}
