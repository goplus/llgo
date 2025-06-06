; ModuleID = 'github.com/goplus/llgo/cl/_testgo/multiret'
source_filename = "github.com/goplus/llgo/cl/_testgo/multiret"

@"github.com/goplus/llgo/cl/_testgo/multiret.a" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testgo/multiret.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/multiret.foo"(ptr %0, double %1) {
_llgo_0:
  %2 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/multiret.a", align 4
  %3 = insertvalue { i64, double } undef, i64 %2, 0
  %4 = insertvalue { i64, double } %3, double %1, 1
  store { i64, double } %4, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/multiret.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/multiret.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/multiret.init$guard", align 1
  store i64 1, ptr @"github.com/goplus/llgo/cl/_testgo/multiret.a", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/multiret.main"() {
_llgo_0:
  %0 = alloca { i64, double }, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/multiret.foo"(ptr %0, double 2.000000e+00)
  %1 = load { i64, double }, ptr %0, align 8
  %2 = extractvalue { i64, double } %1, 0
  %3 = extractvalue { i64, double } %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)
