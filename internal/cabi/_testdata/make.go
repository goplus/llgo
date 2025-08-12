//go:build ignore
// +build ignore

package main

import (
	"bytes"
	"os"
	"path/filepath"
	"strconv"
	"strings"
)

var ghead_basic = `package main

import "unsafe"

const (
	LLGoFiles = "../wrap/basic.c"
)

//go:linkname printf C.printf
func printf(format *byte, __llgo_va_list ...any) int32

func assert(info string, b bool) {
	if !b {
		printf(unsafe.StringData("Assertion failed: %s\n\000"), unsafe.StringData(info))
	}
}

func main() {
}
`

var gbasic = `
//go:linkname cbasic C.basic
func cbasic(a int) int

func basic(a int) int {
	return a
}

func init() {
	assert("cbasic\000", cbasic(100) == 100)
	assert("basic\000", basic(100) == 100)
}
`

var garray = `
type array struct {
	x [N]int
}

//go:linkname cdemo C.demo
func cdemo(a array) array

func demo(a array) array {
	return a
}

func init() {
	a := array{x: [N]int{M}}
	assert("cdemo\000", cdemo(a) == a)
	assert("demo\000", demo(a) == a)
}
`

var gstruct = `
type point struct {
	x int
}

//go:linkname cdemo C.demo
func cdemo(a point) point

func demo(a point) point {
	return a
}

func init() {
	a := point{M}
	assert("cdemo\000", cdemo(a) == a)
	assert("demo\000", demo(a) == a)
}
`

var cbasic = `
int basic(int a) {
	return a;
}
`

var carray = `
struct array {
    int x[N];
};

struct array demo(struct array a) {
    return a;
}
`

var cstruct = `
struct point {
    int x;
};

struct point demo(struct point a) {
    return a;
}
`

func main() {
	// char
	// short
	// int
	// int*
	// float
	// double
	// 1 2 3 4 5 6 7 8

	types := []string{"char", "short", "int", "long long", "float", "double", "void*"}
	ids := []string{"int8", "int16", "int32", "int64", "float32", "float64", "uintptr"}

	// write cbasic
	var cbuf bytes.Buffer
	for nid, id := range ids {
		data := strings.NewReplacer("int", types[nid], "basic", "basic_"+id).Replace(cbasic)
		cbuf.WriteString(data)
	}
	os.WriteFile("./wrap/basic.c", cbuf.Bytes(), 0666)
	// write basic
	var buf bytes.Buffer
	buf.WriteString(ghead_basic)
	for _, id := range ids {
		data := strings.NewReplacer("int", id, "basic", "basic_"+id).Replace(gbasic)
		buf.WriteString(data)
	}
	os.WriteFile("./demo/basic.go", buf.Bytes(), 0666)

	for nid, id := range ids {
		f := filepath.Join("./wrap/array_" + id + ".c")
		var buf bytes.Buffer
		for i := 0; i < 20; i++ {
			N := strconv.Itoa(i + 1)
			data := strings.NewReplacer("int", types[nid], "N", N,
				"array", "array"+N, "demo", "demo"+N).Replace(carray)
			buf.WriteString(data)
		}
		os.WriteFile(f, buf.Bytes(), 0666)
	}

	// write struct
	for nid, id := range ids {
		f := filepath.Join("./wrap/struct_" + id + ".c")
		var buf bytes.Buffer
		for i := 0; i < 20; i++ {
			N := strconv.Itoa(i + 1)
			ar := make([]string, i+1)
			for j := 0; j < i+1; j++ {
				ar[j] = types[nid] + " x" + strconv.Itoa(j) + ";"
			}
			data := strings.NewReplacer("int x;", strings.Join(ar, "\n\t"), "N", N,
				"point", "point"+N, "demo", "demo"+N).Replace(cstruct)
			buf.WriteString(data)
		}
		os.WriteFile(f, buf.Bytes(), 0666)
	}

	// write go demo array
	for _, id := range ids {
		f := filepath.Join("./demo/array_" + id + ".go")
		var buf bytes.Buffer
		buf.WriteString(strings.Replace(ghead_basic, "basic", "array_"+id, -1))
		for i := 0; i < 20; i++ {
			N := strconv.Itoa(i + 1)
			M := make([]string, i+1)
			for j := 0; j < i+1; j++ {
				M[j] = strconv.Itoa(j + 1)
			}
			data := strings.NewReplacer("int", id, "N", N, "M", strings.Join(M, ", "),
				"array", "array"+N, "demo", "demo"+N).Replace(garray)
			buf.WriteString(data)
		}
		os.WriteFile(f, buf.Bytes(), 0666)
	}

	// write go demo struct
	for _, id := range ids {
		f := filepath.Join("./demo/struct_" + id + ".go")
		var buf bytes.Buffer
		buf.WriteString(strings.Replace(ghead_basic, "basic", "struct_"+id, -1))
		for i := 0; i < 20; i++ {
			N := strconv.Itoa(i + 1)
			M := make([]string, i+1)
			for j := 0; j < i+1; j++ {
				M[j] = strconv.Itoa(j + 1)
			}
			ar := make([]string, i+1)
			for j := 0; j < i+1; j++ {
				ar[j] = "x" + strconv.Itoa(j) + " " + id
			}
			data := strings.NewReplacer("x int", strings.Join(ar, "\n\t"), "N", N, "M", strings.Join(M, ", "),
				"point", "point"+N, "demo", "demo"+N).Replace(gstruct)
			buf.WriteString(data)
		}
		os.WriteFile(f, buf.Bytes(), 0666)
	}
}
