package convert_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/cmptest"
	"github.com/goplus/llgo/chore/gogensig/config"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

// TODO

func TestCommentSlashStarStar(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []config.SymbolEntry{
		{
			MangleName: "ExecuteFoo",
			CppName:    "ExecuteFoo",
			GoName:     "CustomExecuteFoo",
		},
	},
		&cppgtypes.Config{},
		`
/**
Foo comment
*/
struct Foo { int a; double b; bool c; };
/**
ExecuteFoo comment
*/
int ExecuteFoo(int a,Foo b);
	`, `
package typeref

import "github.com/goplus/llgo/c"
/**
Foo comment
*/
type Foo struct {
	a c.Int
	b float64
	c c.Int
}
/**
ExecuteFoo comment
*/
//go:linkname CustomExecuteFoo C.ExecuteFoo
func CustomExecuteFoo(a c.Int, b Foo) c.Int
	`)
}

func TestCommentSlashStar(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []symb.SymbolEntry{
		{
			MangleName: "ExecuteFoo",
			CppName:    "ExecuteFoo",
			GoName:     "CustomExecuteFoo",
		},
	},
		&cppgtypes.Config{},
		`
/*
Foo comment
*/
struct Foo { int a; double b; bool c; };
/*
ExecuteFoo comment
*/
int ExecuteFoo(int a,Foo b);
	`, `
package typeref

import "github.com/goplus/llgo/c"
/*
Foo comment
*/
type Foo struct {
	a c.Int
	b float64
	c c.Int
}
/*
ExecuteFoo comment
*/
//go:linkname CustomExecuteFoo C.ExecuteFoo
func CustomExecuteFoo(a c.Int, b Foo) c.Int
	`)
}

func TestCommentSlashSlash(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []symb.SymbolEntry{
		{
			MangleName: "ExecuteFoo",
			CppName:    "ExecuteFoo",
			GoName:     "CustomExecuteFoo",
		},
	},
		&cppgtypes.Config{},
		`
// Foo comment
struct Foo { int a; double b; bool c; };

// ExecuteFoo comment
int ExecuteFoo(int a,Foo b);
	`, `
package typeref

import "github.com/goplus/llgo/c"

// Foo comment
type Foo struct {
	a c.Int
	b float64
	c c.Int
}

// ExecuteFoo comment
//go:linkname CustomExecuteFoo C.ExecuteFoo
func CustomExecuteFoo(a c.Int, b Foo) c.Int
	`)
}
