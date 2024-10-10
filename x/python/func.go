package python

import (
	"github.com/goplus/llgo/py"
)

type Objecter interface {
	Obj() *py.Object
}

type Func struct {
	Object
}

func NewFunc(obj *py.Object) Func {
	return Func{NewObject(obj)}
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
