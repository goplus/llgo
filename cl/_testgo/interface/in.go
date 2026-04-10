// LITTEST
package main

import (
	"github.com/goplus/llgo/cl/_testdata/foo"
)

type Game1 struct {
	*foo.Game
}

type Game2 struct {
}

// CHECK-LABEL: define void @"{{.*}}interface.(*Game2).initGame"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret void
func (p *Game2) initGame() {
}

// CHECK-LABEL: define void @"{{.*}}interface.main"() {
func main() {
	// CHECK: call ptr @"{{.*}}AllocZ"(i64 8)
	// CHECK: getelementptr inbounds %"{{.*}}interface.Game1", ptr %0, i32 0, i32 0
	// CHECK: call ptr @"{{.*}}AllocZ"(i64 0)
	// CHECK: store ptr %{{[0-9]+}}, ptr %{{[0-9]+}}, align 8
	// CHECK: insertvalue %"{{.*}}eface" { ptr @"{{.*}}interface.Game1", ptr undef }, ptr %0, 1
	var g1 any = &Game1{&foo.Game{}}

	// CHECK: call ptr @"{{.*}}AllocZ"(i64 0)
	// CHECK: insertvalue %"{{.*}}eface" { ptr @"{{.*}}interface.Game2", ptr undef }, ptr %{{[0-9]+}}, 1
	var g2 any = &Game2{}

	// CHECK: call i1 @"{{.*}}Implements"(ptr @"{{.*}}foo.Gamer", ptr %{{[0-9]+}})
	// CHECK: call ptr @"{{.*}}NewItab"(ptr @"{{.*}}foo.iface{{.*}}", ptr %{{[0-9]+}})
	// CHECK: insertvalue %"{{.*}}iface" undef, ptr %{{[0-9]+}}, 0
	// CHECK: insertvalue { %"{{.*}}iface", i1 } %{{[0-9]+}}, i1 true, 1
	v1, ok := g1.(foo.Gamer)

	// CHECK: call void @"{{.*}}PrintString"(%"{{.*}}String" { ptr @{{[0-9]+}}, i64 2 })
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 32)
	// CHECK-NEXT: call void @"{{.*}}PrintIface"(%"{{.*}}iface" %{{[0-9]+}})
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 32)
	// CHECK-NEXT: call void @"{{.*}}PrintBool"(i1 %{{[0-9]+}})
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 10)
	println("OK", v1, ok)

	if ok {
		v1.Load()
	}

	v2, ok := g2.(foo.Gamer)

	// CHECK: call void @"{{.*}}PrintString"(%"{{.*}}String" { ptr @{{[0-9]+}}, i64 4 })
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 32)
	// CHECK-NEXT: call void @"{{.*}}PrintIface"(%"{{.*}}iface" %{{[0-9]+}})
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 32)
	// CHECK-NEXT: call void @"{{.*}}PrintBool"(i1 %{{[0-9]+}})
	// CHECK-NEXT: call void @"{{.*}}PrintByte"(i8 10)
	// CHECK-NEXT: ret void
	println("FAIL", v2, ok)
}
