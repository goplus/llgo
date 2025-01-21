; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testlibgo/complex'
source_filename = "github.com/goplus/llgo/compiler/cl/_testlibgo/complex"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/compiler/cl/_testlibgo/complex.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"abs(3+4i):", align 1
@1 = private unnamed_addr constant [11 x i8] c"real(3+4i):", align 1
@2 = private unnamed_addr constant [11 x i8] c"imag(3+4i):", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testlibgo/complex.f"({ double, double } %0, { double, double } %1) {
_llgo_0:
  %2 = call double @cabs({ double, double } %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = extractvalue { double, double } %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = extractvalue { double, double } %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibgo/complex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testlibgo/complex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testlibgo/complex.init$guard", align 1
  call void @"math/cmplx.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibgo/complex.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/compiler/cl/_testlibgo/complex.f"({ double, double } { double 3.000000e+00, double 4.000000e+00 }, { double, double } { double 3.000000e+00, double 4.000000e+00 })
  ret void
}

declare double @cabs({ double, double })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"math/cmplx.init"()
