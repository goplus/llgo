package astrewriter

import (
	"go/ast"
	"go/types"
	"testing"
)

func TestDeferInLoopRewriter_Simple(t *testing.T) {
	input := `package main

func main() {
	for i := 0; i < 3; i++ {
		defer println(i)
	}
}
`
	expected := `package main

func main() {
	for i := 0; i < 3; i++ {
		func() {
			defer println(i)
		}()
	}
}
`
	fDeferInLoopTest(t, input, expected)
}

func TestDeferInLoopRewriter_Nested(t *testing.T) {
	input := `package main

func main() {
	for i := 0; i < 3; i++ {
		for j := 0; j < 2; j++ {
			defer println(i, j)
		}
	}
}
`
	expected := `package main

func main() {
	for i := 0; i < 3; i++ {
		for j := 0; j < 2; j++ {
			func() {
				defer println(i, j)
			}()
		}
	}
}
`
	fDeferInLoopTest(t, input, expected)
}

func TestDeferInLoopRewriter_Range(t *testing.T) {
	input := `package main

func main() {
	for _, v := range []int{1,2,3} {
		defer println(v)
	}
}
`
	expected := `package main

func main() {
	for _, v := range []int{1, 2, 3} {
		func() {
			defer println(v)
		}()
	}
}
`
	fDeferInLoopTest(t, input, expected)
}

func TestDeferInLoopRewriter_Multiple(t *testing.T) {
	input := `package main

func main() {
	for i := 0; i < 3; i++ {
		defer println(i)
		defer println(i * 2)
	}
}
`
	expected := `package main

func main() {
	for i := 0; i < 3; i++ {
		func() {
			defer println(i)
			defer println(i * 2)
		}()
	}
}
`
	fDeferInLoopTest(t, input, expected)
}

func TestDeferInLoopRewriter_DeferWithNestedLoop(t *testing.T) {
	input := `package main

func main() {
	for i := range []int{1,2,3} {
		defer func() {
			for j := range []int{4,5,6} {
				defer println(i, j)
			}
		}()
	}
}
`
	expected := `package main

func main() {
	for i := range []int{1, 2, 3} {
		func() {
			defer func() {
				for j := range []int{4, 5, 6} {
					func() {
						defer println(i, j)
					}()
				}
			}()
		}()
	}
}
`
	fDeferInLoopTest(t, input, expected)
}

// fDeferInLoopTest creates a test function to compare code before and after rewriting
func fDeferInLoopTest(t *testing.T, input, expected string) {
	t.Helper()
	info := &types.Info{
		Types: make(map[ast.Expr]types.TypeAndValue),
	}
	got := parseAndRewrite(t, info, input, DeferInLoopRewriter(info))
	if got != expected {
		t.Errorf("\ngot(%d):\n%s\nwant(%d):\n%s", len(got), got, len(expected), expected)
	}
}
