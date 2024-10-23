package symbol

import (
	"errors"
	"fmt"
	"os"
	"runtime"
	"strings"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/config/cfgparse"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/parse"
	"github.com/goplus/llgo/chore/llcppg/types"
	"github.com/goplus/llgo/xtool/nm"
)

type dbgFlags = int

const (
	DbgSymbol  dbgFlags = 1 << iota
	DbgFlagAll          = DbgSymbol
)

var (
	debugSymbol bool
)

func SetDebug(dbgFlags dbgFlags) {
	debugSymbol = (dbgFlags & DbgSymbol) != 0
}

// ParseDylibSymbols parses symbols from dynamic libraries specified in the lib string.
// It handles multiple libraries (e.g., -L/opt/homebrew/lib -llua -lm) and returns
// symbols if at least one library is successfully parsed. Errors from inaccessible
// libraries (like standard libs) are logged as warnings.
//
// Returns symbols and nil error if any symbols are found, or nil and error if none found.
func ParseDylibSymbols(lib string) ([]*nm.Symbol, error) {
	if debugSymbol {
		fmt.Println("ParseDylibSymbols:from", lib)
	}
	sysPaths := getSysLibPaths()
	lbs := cfgparse.ParseLibs(lib)
	if debugSymbol {
		fmt.Println("ParseDylibSymbols:LibConfig Parse To")
		fmt.Println("libs.Names: ", lbs.Names)
		fmt.Println("libs.Paths: ", lbs.Paths)
	}
	dylibPaths, notFounds, err := lbs.GenDylibPaths(sysPaths)
	if err != nil {
		return nil, fmt.Errorf("failed to generate some dylib paths: %v", err)
	}

	if debugSymbol {
		fmt.Println("ParseDylibSymbols:dylibPaths", dylibPaths)
		if len(notFounds) > 0 {
			fmt.Println("ParseDylibSymbols:not found libname", notFounds)
		} else {
			fmt.Println("ParseDylibSymbols:every library is found")
		}
	}

	var symbols []*nm.Symbol
	var parseErrors []string

	for _, dylibPath := range dylibPaths {
		if _, err := os.Stat(dylibPath); err != nil {
			if debugSymbol {
				fmt.Printf("ParseDylibSymbols:Failed to access dylib %s: %v\n", dylibPath, err)
			}
			continue
		}

		files, err := nm.New("").List(dylibPath)
		if err != nil {
			parseErrors = append(parseErrors, fmt.Sprintf("ParseDylibSymbols:Failed to list symbols in dylib %s: %v", dylibPath, err))
			continue
		}

		for _, file := range files {
			symbols = append(symbols, file.Symbols...)
		}
	}

	if len(symbols) > 0 {
		if debugSymbol {
			if len(parseErrors) > 0 {
				fmt.Printf("ParseDylibSymbols:Some libraries could not be parsed: %v\n", parseErrors)
			}
			fmt.Println("ParseDylibSymbols:", len(symbols), "symbols")
		}
		return symbols, nil
	}

	return nil, fmt.Errorf("no symbols found in any dylib. Errors: %v", parseErrors)
}

func getSysLibPaths() []string {
	var paths []string
	if runtime.GOOS == "linux" {
		if debugSymbol {
			fmt.Println("getSysLibPaths:find sys lib path from linux")
		}
		paths = []string{
			"/usr/lib",
			"/usr/local/lib",
		}
		paths = append(paths, getPath("/etc/ld.so.conf")...)
		if debugSymbol && len(paths) == 0 {
			fmt.Println("getSysLibPaths:/etc/ld.so.conf havent find any path")
		}
		confd := "/etc/ld.so.conf.d"
		dir, err := os.Stat(confd)
		if err != nil || !dir.IsDir() {
			if debugSymbol {
				fmt.Println("getSysLibPaths:/etc/ld.so.conf.d not found or not dir")
			}
			return paths
		}
		// todo(zzy) : wait llgo os.ReadDir support
		// files, err := os.ReadDir(confd)
		// if err == nil {
		// 	for _, file := range files {
		// 		filepath := filepath.Join(confd, file.Name())
		// 		paths = append(paths, getPath(filepath)...)
		// 	}
		// }
	}
	return paths
}

func getPath(file string) []string {
	if debugSymbol {
		fmt.Println("getPath:from", file)
	}
	var paths []string
	content, err := os.ReadFile(file)
	if err != nil {
		return paths
	}
	lines := strings.Split(string(content), "\n")
	for _, line := range lines {
		line = strings.TrimSpace(line)
		if line != "" && !strings.HasPrefix(line, "#") {
			if file, err := os.Stat(line); err == nil && file.IsDir() {
				paths = append(paths, line)
			}
		}
	}
	return paths
}

// finds the intersection of symbols from the dynamic library's symbol table and the symbols parsed from header files.
// It returns a list of symbols that can be externally linked.
func GetCommonSymbols(dylibSymbols []*nm.Symbol, headerSymbols map[string]*parse.SymbolInfo) []*types.SymbolInfo {
	var commonSymbols []*types.SymbolInfo
	for _, dylibSym := range dylibSymbols {
		symName := strings.TrimLeft(dylibSym.Name, "_")
		if symInfo, ok := headerSymbols[symName]; ok {
			symbolInfo := &types.SymbolInfo{
				Mangle: symName,
				CPP:    symInfo.ProtoName,
				Go:     symInfo.GoName,
			}
			commonSymbols = append(commonSymbols, symbolInfo)
		}
	}
	return commonSymbols
}

func ReadExistingSymbolTable(fileName string) (map[string]types.SymbolInfo, bool) {
	if _, err := os.Stat(fileName); err != nil {
		return nil, false
	}

	data, err := os.ReadFile(fileName)
	if err != nil {
		return nil, false
	}

	parsedJSON := cjson.ParseBytes(data)
	if parsedJSON == nil {
		return nil, false
	}

	existingSymbols := make(map[string]types.SymbolInfo)
	arraySize := parsedJSON.GetArraySize()

	for i := 0; i < int(arraySize); i++ {
		item := parsedJSON.GetArrayItem(c.Int(i))
		symbol := types.SymbolInfo{
			Mangle: config.GetStringItem(item, "mangle", ""),
			CPP:    config.GetStringItem(item, "c++", ""),
			Go:     config.GetStringItem(item, "go", ""),
		}
		existingSymbols[symbol.Mangle] = symbol
	}

	return existingSymbols, true
}

func GenSymbolTableData(commonSymbols []*types.SymbolInfo, existingSymbols map[string]types.SymbolInfo) ([]byte, error) {
	if len(existingSymbols) > 0 {
		if debugSymbol {
			fmt.Println("GenSymbolTableData:generate symbol table with exist symbol table")
		}
		for i := range commonSymbols {
			if existingSymbol, exists := existingSymbols[commonSymbols[i].Mangle]; exists && commonSymbols[i].Go != existingSymbol.Go {
				if debugSymbol {
					fmt.Println("symbol", commonSymbols[i].Mangle, "already exist, use exist symbol", existingSymbol.Go)
				}
				commonSymbols[i].Go = existingSymbol.Go
			} else {
				if debugSymbol {
					fmt.Println("new symbol", commonSymbols[i].Mangle, "-", commonSymbols[i].CPP, "-", commonSymbols[i].Go)
				}
			}
		}
	} else {
		if debugSymbol {
			fmt.Println("GenSymbolTableData:generate symbol table without symbol table")
			for _, symbol := range commonSymbols {
				fmt.Println("new symbol", symbol.Mangle, "-", symbol.CPP, "-", symbol.Go)
			}
		}
	}

	root := cjson.Array()
	defer root.Delete()

	for _, symbol := range commonSymbols {
		item := cjson.Object()
		item.SetItem(c.Str("mangle"), cjson.String(c.AllocaCStr(symbol.Mangle)))
		item.SetItem(c.Str("c++"), cjson.String(c.AllocaCStr(symbol.CPP)))
		item.SetItem(c.Str("go"), cjson.String(c.AllocaCStr(symbol.Go)))
		root.AddItem(item)
	}

	cStr := root.Print()
	if cStr == nil {
		return nil, errors.New("symbol table is empty")
	}
	defer c.Free(unsafe.Pointer(cStr))
	result := []byte(c.GoString(cStr))
	return result, nil
}

func GenerateAndUpdateSymbolTable(symbols []*nm.Symbol, headerInfos map[string]*parse.SymbolInfo, symbFile string) ([]byte, error) {
	commonSymbols := GetCommonSymbols(symbols, headerInfos)
	if debugSymbol {
		fmt.Println("GenerateAndUpdateSymbolTable:", len(commonSymbols), "common symbols")
	}

	existSymbols, exist := ReadExistingSymbolTable(symbFile)
	if exist && debugSymbol {
		fmt.Println("GenerateAndUpdateSymbolTable:current path have exist symbol table", symbFile)
	}

	symbolData, err := GenSymbolTableData(commonSymbols, existSymbols)
	if err != nil {
		return nil, err
	}

	return symbolData, nil
}
