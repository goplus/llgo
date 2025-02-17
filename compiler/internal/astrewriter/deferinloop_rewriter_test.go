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
	var _llgoDeferFns []func()
	defer func() {
		for i := range _llgoDeferFns {
			_llgoDeferFns[i]()
		}
	}()
	for i := 0; i < 3; i++ {
		_llgoDeferFns = append(_llgoDeferFns, func() {
			println(i)
		})
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
	var _llgoDeferFns []func()
	defer func() {
		for i := range _llgoDeferFns {
			_llgoDeferFns[i]()
		}
	}()
	for i := 0; i < 3; i++ {
		for j := 0; j < 2; j++ {
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println(i, j)
			})
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
	var _llgoDeferFns []func()
	defer func() {
		for i := range _llgoDeferFns {
			_llgoDeferFns[i]()
		}
	}()
	for _, v := range []int{1, 2, 3} {
		_llgoDeferFns = append(_llgoDeferFns, func() {
			println(v)
		})
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
	var _llgoDeferFns []func()
	defer func() {
		for i := range _llgoDeferFns {
			_llgoDeferFns[i]()
		}
	}()
	for i := 0; i < 3; i++ {
		_llgoDeferFns = append(_llgoDeferFns, func() {
			println(i)
		})
		_llgoDeferFns = append(_llgoDeferFns, func() {
			println(i * 2)
		})
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
	var _llgoDeferFns []func()
	defer func() {
		for i := range _llgoDeferFns {
			_llgoDeferFns[i]()
		}
	}()
	for i := range []int{1, 2, 3} {
		_llgoDeferFns = append(_llgoDeferFns, func() {
			func() {
				var _llgoDeferFns []func()
				defer func() {
					for i := range _llgoDeferFns {
						_llgoDeferFns[i]()
					}
				}()
				for j := range []int{4, 5, 6} {
					_llgoDeferFns = append(_llgoDeferFns, func() {
						println(i, j)
					})
				}
			}()
		})
	}
}
`
	fDeferInLoopTest(t, input, expected)
}

func TestDeferInLoopRewriter_ControlFlow(t *testing.T) {
	input := `package main

import "time"

func main() {
	for i := 0; i < 10; i++ {
		if i < 3 {
			defer println("less than 3:", i)
			continue
		} else if i < 5 {
			defer println("less than 5:", i)
			break
		}

		select {
		case <-time.After(1 * time.Second):
			defer println("after 1s:", i)
		default:
			defer println("default case:", i)
		}

		switch {
		case i < 7:
			defer println("less than 7:", i)
		case i < 9:
			defer println("less than 9:", i)
			return
		default:
			defer println("default case:", i)
		}
	}
}

//go:noinline
func Loop() {
}
`
	expected := `package main

import "time"

func main() {
	var _llgoDeferFns []func()
	defer func() {
		for i := range _llgoDeferFns {
			_llgoDeferFns[i]()
		}
	}()
	for i := 0; i < 10; i++ {
		if i < 3 {
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println("less than 3:", i)
			})
			continue
		} else if i < 5 {
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println("less than 5:", i)
			})
			break
		}

		select {
		case <-time.After(1 * time.Second):
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println("after 1s:", i)
			})
		default:
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println("default case:", i)
			})
		}

		switch {
		case i < 7:
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println("less than 7:", i)
			})
		case i < 9:
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println("less than 9:", i)
			})
			return
		default:
			_llgoDeferFns = append(_llgoDeferFns, func() {
				println("default case:", i)
			})
		}
	}
}

//go:noinline
func Loop() {
}
`
	fDeferInLoopTest(t, input, expected)
}

func TestDeferInLoopRewriter_MixedStructures(t *testing.T) {
	input := `package main

func main() {
	defer println("not in loop")

	if x := 1; x > 0 {
		defer println("in if")
	}

	switch y := 2; y {
	case 1:
		defer println("in switch case 1")
	default:
		defer println("in switch default")
	}
}
`
	expected := `package main

func main() {
	defer println("not in loop")

	if x := 1; x > 0 {
		defer println("in if")
	}

	switch y := 2; y {
	case 1:
		defer println("in switch case 1")
	default:
		defer println("in switch default")
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
		Defs:  make(map[*ast.Ident]types.Object),
		Uses:  make(map[*ast.Ident]types.Object),
	}
	got := parseAndRewrite(t, info, input, DeferInLoopRewriter(info))
	if got != expected {
		t.Errorf("\ngot(%d):\n%s\nwant(%d):\n%s", len(got), got, len(expected), expected)
	}
}
