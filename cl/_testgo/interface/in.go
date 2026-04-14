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

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/interface.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   %1 = getelementptr inbounds %"{{.*}}/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
// CHECK-NEXT:   %2 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 0)
// CHECK-NEXT:   store ptr %2, ptr %1, align 8
// CHECK-NEXT:   %3 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"*_llgo_{{.*}}/cl/_testgo/interface.Game1", ptr undef }, ptr %0, 1
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 0)
// CHECK-NEXT:   %5 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"*_llgo_{{.*}}/cl/_testgo/interface.Game2", ptr undef }, ptr %4, 1
// CHECK-NEXT:   %6 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %3, 0
// CHECK-NEXT:   %7 = call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testdata/foo.Gamer", ptr %6)
// CHECK-NEXT:   br i1 %7, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_5
// CHECK-NEXT:   %8 = call ptr @"{{.*}}/runtime/internal/runtime.IfacePtrData"(%"{{.*}}/runtime/internal/runtime.iface" %25)
// CHECK-NEXT:   %9 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %25, 0
// CHECK-NEXT:   %10 = getelementptr ptr, ptr %9, i64 3
// CHECK-NEXT:   %11 = load ptr, ptr %10, align 8
// CHECK-NEXT:   %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
// CHECK-NEXT:   %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
// CHECK-NEXT:   %14 = extractvalue { ptr, ptr } %13, 1
// CHECK-NEXT:   %15 = extractvalue { ptr, ptr } %13, 0
// CHECK-NEXT:   call void %15(ptr %14)
// CHECK-NEXT:   br label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
// CHECK-NEXT:   %16 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %5, 0
// CHECK-NEXT:   %17 = call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testdata/foo.Gamer", ptr %16)
// CHECK-NEXT:   br i1 %17, label %_llgo_6, label %_llgo_7
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %18 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %3, 1
// CHECK-NEXT:   %19 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", ptr %6)
// CHECK-NEXT:   %20 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %19, 0
// CHECK-NEXT:   %21 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %20, ptr %18, 1
// CHECK-NEXT:   %22 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } undef, %"{{.*}}/runtime/internal/runtime.iface" %21, 0
// CHECK-NEXT:   %23 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %22, i1 true, 1
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
// CHECK-NEXT:   %24 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ %23, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
// CHECK-NEXT:   %25 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %24, 0
// CHECK-NEXT:   %26 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %24, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @13, i64 2 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintIface"(%"{{.*}}/runtime/internal/runtime.iface" %25)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %26)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br i1 %26, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_6:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %27 = extractvalue %"{{.*}}/runtime/internal/runtime.eface" %5, 1
// CHECK-NEXT:   %28 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testdata/foo.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", ptr %16)
// CHECK-NEXT:   %29 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %28, 0
// CHECK-NEXT:   %30 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %29, ptr %27, 1
// CHECK-NEXT:   %31 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } undef, %"{{.*}}/runtime/internal/runtime.iface" %30, 0
// CHECK-NEXT:   %32 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %31, i1 true, 1
// CHECK-NEXT:   br label %_llgo_8
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_7:                                          ; preds = %_llgo_2
// CHECK-NEXT:   br label %_llgo_8
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
// CHECK-NEXT:   %33 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ %32, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
// CHECK-NEXT:   %34 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %33, 0
// CHECK-NEXT:   %35 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %33, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @14, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintIface"(%"{{.*}}/runtime/internal/runtime.iface" %34)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %35)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	var g1 any = &Game1{&foo.Game{}}

	var g2 any = &Game2{}

	v1, ok := g1.(foo.Gamer)

	println("OK", v1, ok)

	if ok {
		v1.Load()
	}

	v2, ok := g2.(foo.Gamer)

	println("FAIL", v2, ok)
}
