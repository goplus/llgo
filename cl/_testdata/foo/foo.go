// LITTEST
package foo

// CHECK-LABEL: define %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"{{.*}}.Bar"(){{.*}} {
// CHECK:   ret %"github.com/goplus/llgo/runtime/internal/runtime.eface"
func Bar() any {
	return struct{ V int }{1}
}

// CHECK-LABEL: define %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"{{.*}}.F"(){{.*}} {
// CHECK:   ret %"github.com/goplus/llgo/runtime/internal/runtime.eface"
func F() any {
	return struct{ v int }{1}
}

type Foo struct {
	pb *byte
	F  float32
}

// CHECK-LABEL: define ptr @"{{.*}}.Foo.Pb"(%"{{.*}}.Foo" %0){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = alloca %"{{.*}}.Foo", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
// CHECK-NEXT:   store %"{{.*}}.Foo" %0, ptr %1, align 8
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}.Foo", ptr %1, i32 0, i32 0
// CHECK-NEXT:   %3 = load ptr, ptr %2, align 8
// CHECK-NEXT:   ret ptr %3
// CHECK-NEXT: }
// CHECK-LABEL: define ptr @"{{.*}}.(*Foo).Pb"(ptr %0){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load %"{{.*}}.Foo", ptr %0, align 8
// CHECK-NEXT:   %2 = call ptr @"{{.*}}.Foo.Pb"(%"{{.*}}.Foo" %1)
// CHECK-NEXT:   ret ptr %2
// CHECK-NEXT: }
func (v Foo) Pb() *byte {
	return v.pb
}

type Gamer interface {
	initGame()
	Load()
}

type Game struct {
}

func (g *Game) initGame() {
}

// CHECK-LABEL: define void @"{{.*}}.(*Game).Load"(ptr %0){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void @"{{.*}}.PrintString"(%"{{.*}}.String" { ptr @6, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func (g *Game) Load() {
	println("load")
}
