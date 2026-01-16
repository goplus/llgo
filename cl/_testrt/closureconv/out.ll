; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureconv'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureconv"

%"github.com/goplus/llgo/cl/_testrt/closureconv.Call" = type { %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", i64 }
%"github.com/goplus/llgo/cl/_testrt/closureconv.Func" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard" = global i1 false, align 1

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

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 1
  store i64 %0, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %3, 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %7 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %5, ptr %7, align 8
  %8 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %7, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %8, ptr %6, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %1, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %9, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %1, 1
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %3, ptr %4, align 8
  %5 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %4, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %5
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null }
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1", ptr undef }, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %5, align 8
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %6
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
  %0 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %0, 0
  %3 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %1)
  %4 = call i64 %2(i64 99, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %5, 1
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %5, 0
  %8 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  %9 = call i64 %7(i64 100, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %11 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10, 1
  %12 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10, 0
  %13 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %11)
  %14 = call i64 %12(i64 100, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %16 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %15, 1
  %17 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %15, 0
  %18 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %16)
  %19 = call i64 %17(i64 100, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %21 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %20, 1
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %20, 0
  %23 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %21)
  %24 = call i64 %22(i64 99, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %26 = alloca { ptr, ptr }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %25, ptr %26, align 8
  %27 = load { ptr, ptr }, ptr %26, align 8
  %28 = extractvalue { ptr, ptr } %27, 1
  %29 = extractvalue { ptr, ptr } %27, 0
  %30 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %28)
  %31 = call i64 %29(i64 99, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %33 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %32, 1
  %34 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %32, 0
  %35 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %33)
  %36 = call i64 %34(i64 99, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %36)
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
