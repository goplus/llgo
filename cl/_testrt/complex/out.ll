; ModuleID = 'github.com/goplus/llgo/cl/_testrt/complex'
source_filename = "github.com/goplus/llgo/cl/_testrt/complex"

@"github.com/goplus/llgo/cl/_testrt/complex.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/complex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/complex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/complex.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/complex.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 2.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = alloca { double, double }, align 8
  store { double, double } { double -1.000000e+00, double -2.000000e+00 }, ptr %0, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = alloca { double, double }, align 8
  store { double, double } { double 4.000000e+00, double 6.000000e+00 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = alloca { double, double }, align 8
  store { double, double } { double -2.000000e+00, double -2.000000e+00 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = alloca { double, double }, align 8
  store { double, double } { double -5.000000e+00, double 1.000000e+01 }, ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = alloca { double, double }, align 8
  store { double, double } { double 4.400000e-01, double -8.000000e-02 }, ptr %4, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = alloca { double, double }, align 8
  store { double, double } { double 0x7FF0000000000000, double 0x7FF0000000000000 }, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = alloca { double, double }, align 8
  store { double, double } { double 0x7FF8000000000000, double 0x7FF8000000000000 }, ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)
