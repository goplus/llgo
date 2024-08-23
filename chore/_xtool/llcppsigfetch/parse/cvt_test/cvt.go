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
			File: content,
			Temp: true,
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
	// Default is []string{"-x", "c++", "-std=c++11"}
	// *For complex C types, C language args Must be specified, e.g., []string{"-x", "c", "-std=c99"}
	Args []string
}

// GetType returns the clang.Type of the given type code
// Need to dispose the index and unit after using
// e.g. index.Dispose(), unit.Dispose()
func GetType(option *GetTypeOptions) (clang.Type, *clang.Index, *clang.TranslationUnit) {
	code := fmt.Sprintf("%s placeholder;", option.TypeCode)
	index, unit, err := parse.CreateTranslationUnit(&parse.Config{
		File: code,
		Temp: true,
		Args: option.Args,
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
