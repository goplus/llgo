package main

import (
	"fmt"
	"os"

	"github.com/goplus/llgo/x/python"
	"github.com/goplus/llgo/x/python/_demo/autoderef/foo"
	pymath "github.com/goplus/llgo/x/python/math"
	"github.com/goplus/llgo/x/python/py"
)

func main() {
	py.Initialize()
	python.SetProgramName(os.Args[0])
	fooMod := foo.InitFooModule()
	sum := fooMod.GetFuncAttr("add").Call(python.MakeLong(1), python.MakeLong(2)).AsLong()
	fmt.Printf("Sum: %d\n", sum.Int64())

	dict := fooMod.Dict()
	pointClass := dict.Get(python.MakeStr("Point")).AsFunc()
	point := pointClass.Call(python.MakeLong(3), python.MakeLong(4))
	distance := point.CallMethod("distance").AsLong()
	fmt.Printf("Distance of 3 * 4: %d\n", distance.Int64())

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

	fmt.Printf("Memory usage: %d MB at start\n", python.GetHostMemoryUse()/(1024*1024))

	mod := python.ImportModule("__main__")
	gbl := mod.Dict()
	code := python.CompileString(pythonCode, "<string>", python.FileInput)
	_ = python.EvalCode(code, gbl, python.Nil().AsDict())
	for i := 0; i < 10; i++ {
		result := python.EvalCode(code, gbl, python.Nil().AsDict())
		if result.Nil() {
			fmt.Printf("Failed to execute Python code\n")
			return
		}
		fmt.Printf("Iteration %d in python - Memory usage: %d MB\n", i+1, python.GetHostMemoryUse()/(1024*1024))
	}

	memory_allocation_test := mod.GetFuncAttr("memory_allocation_test")

	for i := 0; i < 100; i++ {
		// 100MB every time
		memory_allocation_test.Call()
		fmt.Printf("Iteration %d in go - Memory usage: %d MB\n", i+1, python.GetHostMemoryUse()/(1024*1024))
		python.RuntimeGC()
	}

	for i := 1; i <= 100000; i++ {
		println(i)
		// TODO(lijie): Can't run successfully because https://github.com/goplus/llgo/issues/819
		f := python.MakeFloat(float64(i))
		r := pymath.Sqrt(f)
		b := r.IsInteger()
		var _ bool = b.Bool()
		if i%10000 == 0 {
			fmt.Printf("Iteration %d in go - Memory usage: %d MB\n", i, python.GetHostMemoryUse()/(1024*1024))
		}
	}

	py.Finalize()
	fmt.Printf("Done\n")
}
