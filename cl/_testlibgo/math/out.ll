; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/math'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/math"

@"github.com/goplus/llgo/cl/_testlibgo/math.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/math.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/math.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/math.init$guard", align 1
  call void @math.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/math.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1 = call double @math.Sqrt(double 2.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %4 = call double @math.Abs(double -1.200000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %7 = call double @math.Ldexp(double 1.200000e+00, i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %8)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @math.init()

declare double @math.Sqrt(double)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare double @math.Abs(double)

declare double @math.Ldexp(double, i64)
