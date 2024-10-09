package main

import (
	"os"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/bdwgc"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/x/python"
	"github.com/goplus/llgo/x/python/_demo/autoderef/foo"
	pymath "github.com/goplus/llgo/x/python/math"
)

func main() {
	python.SetProgramName(os.Args[0])
	fooMod := foo.InitFooModule()
	sum := python.Cast[python.PyLong](fooMod.GetFuncAttr("add").CallArgs(python.Long(1), python.Long(2)))
	c.Printf(c.Str("Sum: %d\n"), sum.Int())

	dict := fooMod.ModuleGetDict()
	pointClass := python.Cast[python.PyFunc](dict.GetItem(python.Str("Point")))
	point := pointClass.CallArgs(python.Long(3), python.Long(4))
	area := python.Cast[python.PyLong](point.CallMethod("area"))
	c.Printf(c.Str("Area of 3 * 4: %d\n"), area.Int())

	pythonCode := `
def allocate_memory():
    return bytearray(10 * 1024 * 1024)

def memory_allocation_test():
    memory_blocks = []
    for i in range(10):
        memory_blocks.append(allocate_memory())
    print('Memory allocation test completed.')
    return memory_blocks

for i in range(10):
    memory_allocation_test()
`

	c.Printf(c.Str("Memory usage: %d MB at start\n"), bdwgc.GetMemoryUse()/(1024*1024))

	mod := python.ImportModule("__main__")
	gbl := mod.ModuleGetDict()

	code := python.CompileString(pythonCode, "<string>", python.FileInput)
	if code.Nil() {
		python.ErrPrint()
		panic("Failed to compile Python code")
	}

	_ = python.EvalCode(code, gbl, python.NewDict(nil))

	for i := 0; i < 10; i++ {
		result := python.EvalCode(code, gbl, python.NewDict(nil))
		if result.Nil() {
			c.Printf(c.Str("Failed to execute Python code\n"))
			return
		}
		c.Printf(c.Str("Iteration %d in python - Memory usage: %d MB\n"), i+1, bdwgc.GetMemoryUse()/(1024*1024))
	}

	memory_allocation_test := mod.GetFuncAttr("memory_allocation_test")
	if memory_allocation_test.Nil() {
		panic("Failed to get memory_allocation_test function")
	}

	for i := 0; i < 100; i++ {
		// 100MB every time
		memory_allocation_test.CallNoArgs()
		c.Printf(c.Str("Iteration %d in go - Memory usage: %d MB\n"), i+1, bdwgc.GetMemoryUse()/(1024*1024))
		bdwgc.Gcollect()
	}

	for i := 1; i <= 100000; i++ {
		// TODO(lijie): Can't run successfully because https://github.com/goplus/llgo/issues/819
		f := python.Float(float64(i))
		r := pymath.Sqrt(f)
		b := r.IsInteger()
		var _ bool = b.Bool()
		if i%10000 == 0 {
			c.Printf(c.Str("Iteration %d in go - Memory usage: %d MB\n"), i, bdwgc.GetMemoryUse()/(1024*1024))
		}
	}

	py.Finalize()
	c.Printf(c.Str("Done\n"))
}
