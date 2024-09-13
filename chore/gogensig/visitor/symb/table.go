package symb

import (
	"encoding/json"
	"fmt"

	"github.com/goplus/llgo/chore/gogensig/file"
)

type MangleName string

type CppName string

type GoName string

type SymbolEntry struct {
	MangleName MangleName `json:"mangle"`
	CppName    CppName    `json:"c++"`
	GoName     GoName     `json:"go"`
}

type SymbolTable struct {
	t map[MangleName]SymbolEntry
}

func NewSymbolTable(filePath string) (*SymbolTable, error) {
	bytes, err := file.ReadFile(filePath)
	if err != nil {
		return nil, err
	}
	var symbs []SymbolEntry
	err = json.Unmarshal(bytes, &symbs)
	if err != nil {
		return nil, err
	}
	var symbolTable SymbolTable
	symbolTable.t = make(map[MangleName]SymbolEntry)
	for _, symb := range symbs {
		symbolTable.t[symb.MangleName] = symb
	}
	return &symbolTable, nil
}

func (t *SymbolTable) LookupSymbol(name MangleName) (*SymbolEntry, error) {
	symbol, ok := t.t[name]
	if ok {
		return &symbol, nil
	}
	return nil, fmt.Errorf("symbol not found")
}
