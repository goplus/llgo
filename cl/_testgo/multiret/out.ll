; ModuleID = 'github.com/goplus/llgo/cl/_testgo/multiret'
source_filename = "github.com/goplus/llgo/cl/_testgo/multiret"

@"github.com/goplus/llgo/cl/_testgo/multiret.a" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testgo/multiret.init$guard" = global i1 false, align 1

; Function Attrs: null_pointer_is_valid
define { i64, double } @"github.com/goplus/llgo/cl/_testgo/multiret.foo"(double %0) #0 {
_llgo_0:
  %1 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/multiret.a", align 4
  %2 = insertvalue { i64, double } undef, i64 %1, 0
  %3 = insertvalue { i64, double } %2, double %0, 1
  ret { i64, double } %3
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testgo/multiret.init"() #0 {
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

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testgo/multiret.main"() #0 {
_llgo_0:
  %0 = call { i64, double } @"github.com/goplus/llgo/cl/_testgo/multiret.foo"(double 2.000000e+00)
  %1 = extractvalue { i64, double } %0, 0
  %2 = extractvalue { i64, double } %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64) #0

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8) #0

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double) #0

attributes #0 = { null_pointer_is_valid }
