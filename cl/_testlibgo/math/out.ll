; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @math.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main.main() {
_llgo_0:
  %0 = call double @sqrt(double 2.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call double @math.Abs(double -1.200000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call double @math.Ldexp(double 1.200000e+00, i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @math.init()

declare double @sqrt(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare double @math.Abs(double)

declare double @math.Ldexp(double, i64)
