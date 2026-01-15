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
  %2 = call ptr asm sideeffect "", "={x26},~{memory}"()
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
  %3 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %4 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %1)
  %5 = call i64 %2(i64 99, i64 200)
  %6 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  %8 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %7, 1
  %9 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %7, 0
  %10 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %11 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %8)
  %12 = call i64 %9(i64 100, i64 200)
  %13 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  %15 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %14, 1
  %16 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %14, 0
  %17 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %18 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %15)
  %19 = call i64 %16(i64 100, i64 200)
  %20 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %21, 1
  %23 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %21, 0
  %24 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %25 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %22)
  %26 = call i64 %23(i64 100, i64 200)
  %27 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %29 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %28, 1
  %30 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %28, 0
  %31 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %32 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %29)
  %33 = call i64 %30(i64 99, i64 200)
  %34 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %35 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %36 = alloca { ptr, ptr }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %35, ptr %36, align 8
  %37 = load { ptr, ptr }, ptr %36, align 8
  %38 = extractvalue { ptr, ptr } %37, 1
  %39 = extractvalue { ptr, ptr } %37, 0
  %40 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %41 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %38)
  %42 = call i64 %39(i64 99, i64 200)
  %43 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %44 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  %45 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %44, 1
  %46 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %44, 0
  %47 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %48 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %45)
  %49 = call i64 %46(i64 99, i64 200)
  %50 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound"(i64 %0, i64 %1) {
_llgo_0:
  %2 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %3 = load { ptr }, ptr %2, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %4, i64 %0, i64 %1)
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
