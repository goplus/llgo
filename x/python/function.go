package python

import (
	"fmt"
	"reflect"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python/py"
)

type Objecter interface {
	Obj() *py.Object
	object() Object
	Ensure()
}

type Func struct {
	Object
}

func newFunc(obj *py.Object) Func {
	return Func{newObject(obj)}
}

func (f Func) Ensure() {
	f.pyObject.Ensure()
}

func (f Func) call(args Tuple, kwargs Dict) Object {
	return newObject(py.ObjectCall(f.obj, args.obj, kwargs.obj))
}

func (f Func) callNoArgs() Object {
	return newObject(py.ObjectCallNoArgs(f.obj))
}

func (f Func) callOneArg(arg Objecter) Object {
	return newObject(py.ObjectCallOneArg(f.obj, arg.Obj()))
}

func (f Func) CallObject(args Tuple) Object {
	return newObject(py.ObjectCallObject(f.obj, args.obj))
}

func (f Func) Call(args ...any) Object {
	switch len(args) {
	case 0:
		return f.callNoArgs()
	case 1:
		return f.callOneArg(From(args[0]))
	default:
		argsTuple := py.TupleNew(len(args))
		for i, arg := range args {
			obj := From(arg).Obj()
			py.IncRef(obj)
			py.TupleSetItem(argsTuple, i, obj)
		}
		return newObject(py.ObjectCallObject(f.obj, argsTuple))
	}
}

// ----------------------------------------------------------------------------

// TODO(lijie): wait for bug fix of reflect.Value.Call, reflect.ValueOf(func)
func FuncOf(name string, fn c.Pointer, doc string) Func {
	return MainModule().AddFunction(name, fn, doc)
}

func FuncOf1[T any](fn T) Func {
	m := MainModule()
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
			if py.ArgParseTuple(args, buildFormatString(t), argPtrs...) == 0 {
				return nil // Python will set an appropriate exception
			}
		}
		// results := v.Call(goArgs)
		results := make([]reflect.Value, 0)
		if len(results) == 0 {
			return None().Obj()
		}
		if len(results) == 1 {
			return From(results[0].Interface()).Obj()
		}
		tuple := MakeTupleWithLen(len(results))
		for i := range results {
			tuple.Set(i, From(results[i].Interface()))
		}
		// Assuming the last return value is the one we want to return to Python
		return tuple.Obj()
	}
	fmt.Printf("sizeof wrapper: %d\n", unsafe.Sizeof(wrapper))
	iface := *(*[2]c.Pointer)(c.Pointer(&wrapper))
	pfn := iface[0]
	pob := iface[1]
	fmt.Printf("pfn: %p, pob: %p\n", pfn, pob)
	def := &py.MethodDef{
		Name:  AllocCStr(name),
		Func:  pfn,
		Flags: py.METH_VARARGS,
		Doc:   AllocCStr(fmt.Sprintf("Go function %s", name)),
	}
	pyFn := py.CMethodNew(def, (*py.Object)(pob), m.obj, nil)
	if pyFn == nil {
		panic(fmt.Sprintf("Failed to add function %s to module", name))
	}
	return newFunc(pyFn)
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
	return AllocCStr(format)
}

func buildArgPointers(args []reflect.Value) []interface{} {
	pointers := make([]interface{}, len(args))
	for i := range args {
		args[i] = reflect.New(args[i].Type()).Elem()
		pointers[i] = args[i].Addr().Interface()
	}
	return pointers
}
