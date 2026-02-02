; ModuleID = 'github.com/goplus/llgo/cl/_testgo/nestedcall'
source_filename = "github.com/goplus/llgo/cl/_testgo/nestedcall"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/nestedcall.counter" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testgo/nestedcall.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [20 x i8] c"callFunc: before f()", align 1
@1 = private unnamed_addr constant [19 x i8] c"callFunc: after f()", align 1
@2 = private unnamed_addr constant [25 x i8] c"callFuncInner: before g()", align 1
@3 = private unnamed_addr constant [24 x i8] c"callFuncInner: after g()", align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/nestedcall.main$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.main$1", i64 0 }
@4 = private unnamed_addr constant [31 x i8] c"main: after callFunc, counter =", align 1
@5 = private unnamed_addr constant [24 x i8] c"outer closure: counter =", align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/nestedcall.main$1$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.main$1$1", i64 0 }
@6 = private unnamed_addr constant [42 x i8] c"outer closure: after inner call, counter =", align 1
@7 = private unnamed_addr constant [24 x i8] c"inner closure: counter =", align 1

define void @"github.com/goplus/llgo/cl/_testgo/nestedcall.callFunc"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %2)
  call void %1()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/nestedcall.callFuncInner"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %2)
  call void %1()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/nestedcall.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.init$guard", align 1
  store i64 0, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/nestedcall.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/nestedcall.callFunc"(ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/nestedcall.main$1")
  %0 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/nestedcall.main$1"() {
_llgo_0:
  %0 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  %1 = add i64 %0, 1
  store i64 %1, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  %2 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testgo/nestedcall.callFuncInner"(ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/nestedcall.main$1$1")
  %3 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/nestedcall.main$1$1"() {
_llgo_0:
  %0 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  %1 = add i64 %0, 1
  store i64 %1, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  %2 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/nestedcall.counter", align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
