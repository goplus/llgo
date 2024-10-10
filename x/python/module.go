package python

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
)

type Module struct {
	Object
}

func NewModule(obj *py.Object) Module {
	return Module{NewObject(obj)}
}

func ImportModule(name string) Module {
	mod := py.ImportModule(c.AllocaCStr(name))
	return NewModule(mod)
}

func (m Module) ModuleGetDict() Dict {
	return NewDict(m.obj.ModuleGetDict())
}

func (m Module) CallKeywords(name string, args Tuple, kw Dict) Object {
	fn := Cast[Func](m.GetAttr(name))
	r := fn.Call(args, kw)
	return r
}

func (m Module) Call(name string, args ...any) Object {
	fn := Cast[Func](m.GetAttr(name))
	callArgs := MakeTupleWith(args...)
	return fn.CallObject(callArgs.Object)
}

func (m Module) AddObject(name string, obj Object) int {
	return int(py.ModuleAddObject(m.obj, c.AllocCStr(name), obj.obj))
}

func (m Module) AddFunction(name string, fn c.Pointer, doc string) Func {
	def := &py.MethodDef{
		Name:  c.AllocCStr(name),
		Func:  fn,
		Flags: py.METH_VARARGS,
		Doc:   c.AllocCStr(doc),
	}
	pyFn := def.NewMethod(nil, m.obj, nil)
	return NewFunc(pyFn)
}

// func (m Module) AddFunction(name string, fn c.Pointer) Func {
// 	v := reflect.ValueOf(fn)
// 	t := v.Type()
// 	if t.Kind() != reflect.Func {
// 		panic("AddFunction: fn must be a function")
// 	}

// 	// closure ptr as hidden self argument
// 	wrapper := func(args *py.Object) *py.Object {
// 		goArgs := make([]reflect.Value, t.NumIn())
// 		if t.NumIn() > 0 {
// 			argPtrs := buildArgPointers(goArgs)
// 			if !py.ParseTuple(args, buildFormatString(t), argPtrs...) {
// 				return nil // Python will set an appropriate exception
// 			}
// 		}
// 		results := v.Call(goArgs)
// 		if len(results) == 0 {
// 			return py.None()
// 		}
// 		// Assuming the last return value is the one we want to return to Python
// 		return From(results[len(results)-1].Interface()).Obj()
// 	}
// 	c.Printf(c.Str("sizeof wrapper: %d\n"), unsafe.Sizeof(wrapper))
// 	iface := *(*[2]c.Pointer)(c.Pointer(&wrapper))
// 	pfn := iface[0]
// 	pob := iface[1]
// 	def := &py.MethodDef{
// 		Name:  c.AllocCStr(name),
// 		Func:  pfn,
// 		Flags: py.METH_VARARGS,
// 		Doc:   c.AllocCStr(fmt.Sprintf("Go function %s", name)),
// 	}
// 	pyFn := def.NewMethod((*py.Object)(pob), m.obj, nil)
// 	if pyFn == nil {
// 		panic(fmt.Sprintf("Failed to add function %s to module", name))
// 	}
// 	return NewFunc(pyFn)
// }

// func buildFormatString(t reflect.Type) *c.Char {
// 	format := ""
// 	for i := 0; i < t.NumIn(); i++ {
// 		switch t.In(i).Kind() {
// 		case reflect.Int, reflect.Int64:
// 			format += "i"
// 		case reflect.Float64:
// 			format += "d"
// 		case reflect.String:
// 			format += "s"
// 		// Add more types as needed
// 		default:
// 			panic(fmt.Sprintf("Unsupported argument type: %v", t.In(i)))
// 		}
// 	}
// 	return c.AllocCStr(format)
// }

// func buildArgPointers(args []reflect.Value) []interface{} {
// 	pointers := make([]interface{}, len(args))
// 	for i := range args {
// 		args[i] = reflect.New(args[i].Type()).Elem()
// 		pointers[i] = args[i].Addr().Interface()
// 	}
// 	return pointers
// }
