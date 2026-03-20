; ModuleID = 'github.com/goplus/llgo/cl/_testgo/multiret'
source_filename = "github.com/goplus/llgo/cl/_testgo/multiret"

@"github.com/goplus/llgo/cl/_testgo/multiret.a" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testgo/multiret.init$guard" = global i1 false, align 1

define { i64, double } @"github.com/goplus/llgo/cl/_testgo/multiret.foo"(double %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %1 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/multiret.a", align 4
  %2 = insertvalue { i64, double } undef, i64 %1, 0
  %3 = insertvalue { i64, double } %2, double %0, 1
  ret { i64, double } %3
}

define void @"github.com/goplus/llgo/cl/_testgo/multiret.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1 = call { i64, double } @"github.com/goplus/llgo/cl/_testgo/multiret.foo"(double 2.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %3 = extractvalue { i64, double } %1, 0
  %4 = extractvalue { i64, double } %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)
