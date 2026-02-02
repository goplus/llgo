; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureconv'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureconv"

%"github.com/goplus/llgo/cl/_testrt/closureconv.Call" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/closureconv.add" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.add", i64 0 }
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1", i64 0 }

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %3, %5
  ret i64 %6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 1
  store i64 %0, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 2
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %8 = alloca ptr, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %7, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  ret ptr %11
}

define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %2 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  ret ptr %6
}

define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"() {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/closureconv.add"
}

define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"() {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1", ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 2
  store ptr %1, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  ret ptr %7
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %3 = load { ptr }, ptr %2, align 8
  %4 = add i64 %0, %1
  %5 = extractvalue { ptr } %3, 0
  %6 = load i64, ptr %5, align 4
  %7 = add i64 %4, %6
  ret i64 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %2)
  %3 = call i64 %1(i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %4, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  %7 = call i64 %5(i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %8, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %10)
  %11 = call i64 %9(i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %12, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %14)
  %15 = call i64 %13(i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %16, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %18)
  %19 = call i64 %17(i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %21 = alloca ptr, align 8
  store ptr %20, ptr %21, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %22, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %24)
  %25 = call i64 %23(i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = call ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %26, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %28)
  %29 = call i64 %27(i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %3 = load { ptr }, ptr %2, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %4, i64 %0, i64 %1)
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
