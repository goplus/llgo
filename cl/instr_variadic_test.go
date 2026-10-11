package cl

import (
	"regexp"
	"testing"

	llssa "github.com/xgo-dev/llgo/ssa"
)

func TestIndirectCVariadicArguments(t *testing.T) {
	const source = `package foo
//llgo:type C
type Variadic func(marker int32, __llgo_va_list ...any) int32
func Call(function Variadic, marker int32, integer int32, floating float64) int32 {
	return function(marker, integer, floating)
}
func Empty(function Variadic, marker int32) int32 { return function(marker) }
func Ordinary(function func(marker int32, values ...any) int32, marker int32, integer int32) int32 {
	return function(marker, integer)
}
`
	ssaPkg, _, files := buildGoSSAPkg(t, source)
	for _, target := range []llssa.Target{
		{GOOS: "linux", GOARCH: "amd64"},
		{GOOS: "darwin", GOARCH: "arm64"},
	} {
		t.Run(target.GOOS+"/"+target.GOARCH, func(t *testing.T) {
			prog := newLLSSAProgForTarget(t, &target)
			defer prog.Dispose()
			pkg, err := NewPackage(prog, ssaPkg, files)
			if err != nil {
				t.Fatal(err)
			}
			// C ellipsis arguments must be concrete scalar LLVM values, rather than a
			// Go slice header. Ordinary Go variadic function values keep their slice ABI.
			// Ignore target-specific attributes on the closure environment argument.
			for _, test := range []struct {
				name    string
				pattern string
			}{
				{"Call", `call i32 \(i32, \.\.\.\) %[^ (]+\(i32 %[^,)\n]+, i32 %[^,)\n]+, double %[^,)\n]+\)`},
				{"Empty", `call i32 \(i32, \.\.\.\) %[^ (]+\(i32 %[^,)\n]+\)`},
				{"Ordinary", `call i32 \(ptr, i32, \.\.\.\) %[^ (]+\(ptr [^,)\n]+, i32 %[^,)\n]+, %"[^"]*runtime\.Slice" %[^,)\n]+\)`},
			} {
				t.Run(test.name, func(t *testing.T) {
					text := mustNamedFunction(t, pkg.Module(), "foo."+test.name).String()
					if !regexp.MustCompile(test.pattern).MatchString(text) {
						t.Fatalf("missing expected call ABI:\n%s", text)
					}
				})
			}
		})
	}
}
