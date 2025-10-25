; ModuleID = 'main'
source_filename = "main"

@main.a = global i64 0, align 8
@"main.init$guard" = global i1 false, align 1

define { i64, double } @main.foo(double %0) {
_llgo_0:
  %1 = load i64, ptr @main.a, align 4
  %2 = insertvalue { i64, double } undef, i64 %1, 0
  %3 = insertvalue { i64, double } %2, double %0, 1
  ret { i64, double } %3
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i64 1, ptr @main.a, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main.main() {
_llgo_0:
  %0 = call { i64, double } @main.foo(double 2.000000e+00)
  %1 = extractvalue { i64, double } %0, 0
  %2 = extractvalue { i64, double } %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)
