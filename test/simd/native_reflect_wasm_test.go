//go:build llgo && goexperiment.simd && wasm && wasip1

package simd_test

import (
	"reflect"
	"simd/archsimd"
	"testing"
)

//go:noinline
func nativeReflectVector(v archsimd.Float32x4) archsimd.Float32x4 { return v }

func TestSIMDNativeReflectResult(t *testing.T) {
	want := [4]float32{2, 3, 5, 7}
	v := archsimd.LoadFloat32x4Array(&want)
	fn := reflect.ValueOf(nativeReflectVector)
	for _, f := range []reflect.Value{fn, reflect.MakeFunc(fn.Type(), func(in []reflect.Value) []reflect.Value { return in })} {
		out := f.Call([]reflect.Value{reflect.ValueOf(v)})[0]
		if out.CanAddr() && out.Addr().Pointer()&15 != 0 {
			t.Fatal("reflection result alignment")
		}
		var got [4]float32
		out.Interface().(archsimd.Float32x4).StoreArray(&got)
		if got != want {
			t.Fatal("reflection result", got)
		}
	}
}
