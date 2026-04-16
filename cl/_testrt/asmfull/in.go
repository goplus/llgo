// LITTEST
package main

import _ "unsafe"

//go:linkname asmFull llgo.asm
func asmFull(instruction string, regs map[string]any) uintptr

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/asmfull.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   call void asm sideeffect "nop", ""()
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_any", i64 1)
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr %1, align 8
// CHECK-NEXT:   %2 = call ptr @"{{.*}}/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_any", ptr %0, ptr %1)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 42 to ptr) }, ptr %2, align 8
// CHECK-NEXT:   call void asm sideeffect "# test value ${0}", "r"(i64 42)
// CHECK-NEXT:   %3 = call ptr @"{{.*}}/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_any", i64 1)
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr %4, align 8
// CHECK-NEXT:   %5 = call ptr @"{{.*}}/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_any", ptr %3, ptr %4)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 42 to ptr) }, ptr %5, align 8
// CHECK-NEXT:   %6 = call i64 asm sideeffect "mov $0, ${1}", "=&r,r"(i64 42)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @19, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %6)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %7 = call ptr @"{{.*}}/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_any", i64 2)
// CHECK-NEXT:   %8 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @20, i64 1 }, ptr %8, align 8
// CHECK-NEXT:   %9 = call ptr @"{{.*}}/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_any", ptr %7, ptr %8)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 25 to ptr) }, ptr %9, align 8
// CHECK-NEXT:   %10 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @21, i64 1 }, ptr %10, align 8
// CHECK-NEXT:   %11 = call ptr @"{{.*}}/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_any", ptr %7, ptr %10)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 17 to ptr) }, ptr %11, align 8
// CHECK-NEXT:   %12 = call i64 asm sideeffect "# calc ${1} + ${2} -> $0", "=&r,r,r"(i64 25, i64 17)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @19, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %12)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	// no input,no return value
	asmFull("nop", nil)
	// input only,no return value
	asmFull("# test value {value}", map[string]any{"value": 42})
	// input with return value
	res1 := asmFull("mov {}, {value}", map[string]any{
		"value": 42,
	})
	println("Result:", res1)
	// note(zzy): multiple inputs with return value
	// only for test register & constraint,not have actual meaning
	// the ir compare cannot crossplatform currently
	// so just use a comment to test it
	res2 := asmFull("# calc {x} + {y} -> {}", map[string]any{
		"x": 25,
		"y": 17,
	})
	println("Result:", res2)
}
