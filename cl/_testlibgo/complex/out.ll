; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/complex'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/complex"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testlibgo/complex.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"abs(3+4i):", align 1
@1 = private unnamed_addr constant [11 x i8] c"real(3+4i):", align 1
@2 = private unnamed_addr constant [11 x i8] c"imag(3+4i):", align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/complex.f"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load { double, double }, ptr %0, align 8
  %3 = alloca { double, double }, align 8
  store { double, double } %2, ptr %3, align 8
  %4 = call double @cabs(ptr %3)
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 10 }, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = load { double, double }, ptr %1, align 8
  %7 = extractvalue { double, double } %6, 0
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 }, ptr %8, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = load { double, double }, ptr %1, align 8
  %10 = extractvalue { double, double } %9, 1
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 }, ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/complex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/complex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/complex.init$guard", align 1
  call void @"math/cmplx.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/complex.main"() {
_llgo_0:
  %0 = alloca { double, double }, align 8
  store { double, double } { double 3.000000e+00, double 4.000000e+00 }, ptr %0, align 8
  %1 = alloca { double, double }, align 8
  store { double, double } { double 3.000000e+00, double 4.000000e+00 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testlibgo/complex.f"(ptr %0, ptr %1)
  ret void
}

declare double @cabs(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"math/cmplx.init"()
