; ModuleID = 'github.com/goplus/llgo/cl/_testgo/closure'
source_filename = "github.com/goplus/llgo/cl/_testgo/closure"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/closure.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"env", align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/closure.main$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/closure.main$1", i64 0 }
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@2 = private unnamed_addr constant [4 x i8] c"func", align 1
@3 = private unnamed_addr constant [7 x i8] c"closure", align 1
@4 = private unnamed_addr constant [9 x i8] c"closure 3", align 1

define void @"github.com/goplus/llgo/cl/_testgo/closure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/closure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/closure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %0, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 47, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store double 3.140000e+00, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/closure.main$2", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %3, ptr %7, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %10 = getelementptr inbounds { ptr, i64, ptr, ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/closure.main$3", ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64, ptr, ptr, ptr }, ptr %9, i32 0, i32 1
  store i64 1, ptr %11, align 4
  %12 = getelementptr inbounds { ptr, i64, ptr, ptr, ptr }, ptr %9, i32 0, i32 2
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, i64, ptr, ptr, ptr }, ptr %9, i32 0, i32 3
  store ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, i64, ptr, ptr, ptr }, ptr %9, i32 0, i32 4
  store ptr %2, ptr %14, align 8
  %15 = load ptr, ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/closure.main$1", align 8
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr getelementptr (i8, ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/closure.main$1", i64 16))
  call void %15(i64 100)
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr i8, ptr %8, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %17)
  call void %16(i64 200)
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr i8, ptr %9, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %19)
  call void %18(i64 1, i16 2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure.main$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure.main$2"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure.main$3"(i64 %0, i16 %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" %2) {
_llgo_0:
  %3 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %4 = load { ptr, ptr, ptr }, ptr %3, align 8
  %5 = extractvalue { ptr, ptr, ptr } %4, 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = extractvalue { ptr, ptr, ptr } %4, 1
  %8 = load i64, ptr %7, align 4
  %9 = extractvalue { ptr, ptr, ptr } %4, 2
  %10 = load double, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %11 = sext i16 %1 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)
