package python

import (
	"fmt"
	"reflect"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Objecter interface {
	Obj() *py.Object
	object() Object
	Ensure()
}

type Func struct {
	Object
}

func NewFunc(obj *py.Object) Func {
	return Func{NewObject(obj)}
}

func (f Func) Ensure() {
	f.pyObject.Ensure()
}

func (f Func) Call(args Tuple, kwargs Dict) Object {
	return NewObject(f.obj.Call(args.obj, kwargs.obj))
}

func (f Func) CallNoArgs() Object {
	return NewObject(f.obj.CallNoArgs())
}

func (f Func) CallOneArg(arg Objecter) Object {
	return NewObject(f.obj.CallOneArg(arg.Obj()))
}

func (f Func) CallObject(args Object) Object {
	return NewObject(f.obj.CallObject(args.obj))
}

func (f Func) CallArgs(args ...Objecter) Object {
	argsTuple := py.NewTuple(len(args))
	for i, arg := range args {
		obj := arg.Obj()
		obj.IncRef()
		argsTuple.TupleSetItem(i, obj)
	}
	return NewObject(f.obj.CallObject(argsTuple))
}

// ----------------------------------------------------------------------------

var mainMod Module

// TODO(lijie): wait for bug fix of reflect.Value.Call, reflect.ValueOf(func)
func FuncOf(name string, fn c.Pointer, doc string) Func {
	if mainMod.Nil() {
		mainMod = ImportModule("__main__")
	}
	return mainMod.AddFunction(name, fn, doc)
}

func FuncOf1[T any](fn T) Func {
	m := ImportModule("__main__")
	v := reflect.ValueOf(fn)
	t := v.Type()
	// if t.Kind() != reflect.Func {
	// 	fmt.Printf("type: %T, kind: %d\n", fn, t.Kind())
	// 	panic("AddFunction: fn must be a function")
	// }
	name := t.String()
	println("FuncOf name:", name)

	// closure ptr as hidden self argument
	wrapper := func(args *py.Object) *py.Object {
		goArgs := make([]reflect.Value, t.NumIn())
		if t.NumIn() > 0 {
			argPtrs := buildArgPointers(goArgs)
			if !py.ParseTuple(args, buildFormatString(t), argPtrs...) {
				return nil // Python will set an appropriate exception
			}
		}
		// results := v.Call(goArgs)
		results := make([]reflect.Value, 0)
		if len(results) == 0 {
			return py.None()
		}
		if len(results) == 1 {
			return From(results[0].Interface()).Obj()
		}
		tuple := MakeTuple(len(results))
		for i := range results {
			tuple.Set(i, From(results[i].Interface()))
		}
		// Assuming the last return value is the one we want to return to Python
		return tuple.Obj()
	}
	c.Printf(c.Str("sizeof wrapper: %d\n"), unsafe.Sizeof(wrapper))
	iface := *(*[2]c.Pointer)(c.Pointer(&wrapper))
	pfn := iface[0]
	pob := iface[1]
	c.Printf(c.Str("pfn: %p, pob: %p\n"), pfn, pob)
	def := &py.MethodDef{
		Name:  c.AllocCStr(name),
		Func:  pfn,
		Flags: py.METH_VARARGS,
		Doc:   c.AllocCStr(fmt.Sprintf("Go function %s", name)),
	}
	pyFn := def.NewMethod((*py.Object)(pob), m.obj, nil)
	if pyFn == nil {
		panic(fmt.Sprintf("Failed to add function %s to module", name))
	}
	return NewFunc(pyFn)
}

func buildFormatString(t reflect.Type) *c.Char {
	format := ""
	for i := 0; i < t.NumIn(); i++ {
		switch t.In(i).Kind() {
		case reflect.Int, reflect.Int64:
			format += "i"
		case reflect.Float64:
			format += "d"
		case reflect.String:
			format += "s"
		// Add more types as needed
		default:
			panic(fmt.Sprintf("Unsupported argument type: %v", t.In(i)))
		}
	}
	return c.AllocCStr(format)
}

func buildArgPointers(args []reflect.Value) []interface{} {
	pointers := make([]interface{}, len(args))
	for i := range args {
		args[i] = reflect.New(args[i].Type()).Elem()
		pointers[i] = args[i].Addr().Interface()
	}
	return pointers
}
