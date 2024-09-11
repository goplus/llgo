package cvttest

import (
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func RunTest(testName string, testCases []string) {
	for i, content := range testCases {
		converter, err := parse.NewConverter(&parse.Config{
			File:  content,
			Temp:  true,
			IsCpp: true,
		})
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		result := converter.MarshalASTFiles()
		str := result.Print()
		c.Printf(c.Str("%s Case %d:\n%s\n\n"), c.AllocaCStr(testName), c.Int(i+1), str)

		cjson.FreeCStr(str)
		result.Delete()
		converter.Dispose()
	}
}

type GetTypeOptions struct {
	TypeCode string // e.g. "char*", "char**"

	// ExpectTypeKind specifies the expected type kind (optional)
	// Use clang.Type_Invalid to accept any type (default behavior)
	// *For complex types (when <complex.h> is included), specifying this is crucial
	// to filter out the correct type, as there will be multiple VarDecl fields present
	ExpectTypeKind clang.TypeKind

	// Args contains additional compilation arguments passed to Clang (optional)
	// These are appended after the default language-specific arguments
	// Example: []string{"-std=c++11"}
	Args []string

	// IsCpp indicates whether the code should be treated as C++ (true) or C (false)
	// This affects the default language arguments passed to Clang:
	// - For C++: []string{"-x", "c++"}
	// - For C:   []string{"-x", "c"}
	// *For complex C types, C Must be specified
	IsCpp bool
}

// GetType returns the clang.Type of the given type code
// Need to dispose the index and unit after using
// e.g. index.Dispose(), unit.Dispose()
func GetType(option *GetTypeOptions) (clang.Type, *clang.Index, *clang.TranslationUnit) {
	code := fmt.Sprintf("%s placeholder;", option.TypeCode)
	index, unit, err := parse.CreateTranslationUnit(&parse.Config{
		File:  code,
		Temp:  true,
		Args:  option.Args,
		IsCpp: option.IsCpp,
	})
	if err != nil {
		panic(err)
	}
	cursor := unit.Cursor()
	visitType := &typeVisitData{typ: &clang.Type{}, expectTypeKind: option.ExpectTypeKind}

	clang.VisitChildren(cursor, typeVisit, unsafe.Pointer(visitType))
	return *visitType.typ, index, unit
}

type typeVisitData struct {
	typ            *clang.Type
	expectTypeKind clang.TypeKind
}

func typeVisit(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	visitData := (*typeVisitData)(clientData)
	if cursor.Kind == clang.CursorVarDecl && (visitData.expectTypeKind == clang.TypeInvalid || cursor.Type().Kind == visitData.expectTypeKind) {
		*visitData.typ = cursor.Type()
		return clang.ChildVisit_Break
	}
	return clang.ChildVisit_Continue
}
