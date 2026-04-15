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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } { double -1.000000e+00, double -2.000000e+00 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } { double 4.000000e+00, double 6.000000e+00 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } { double -2.000000e+00, double -2.000000e+00 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } { double -5.000000e+00, double 1.000000e+01 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call { double, double } @"github.com/goplus/llgo/runtime/internal/runtime.Complex128Div"({ double, double } { double 1.000000e+00, double 2.000000e+00 }, { double, double } { double 3.000000e+00, double 4.000000e+00 })
  %1 = extractvalue { double, double } %0, 0
  %2 = extractvalue { double, double } %0, 1
  %3 = insertvalue { double, double } undef, double %1, 0
  %4 = insertvalue { double, double } %3, double %2, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call { double, double } @"github.com/goplus/llgo/runtime/internal/runtime.Complex128Div"({ double, double } { double 1.000000e+00, double 2.000000e+00 }, { double, double } zeroinitializer)
  %6 = extractvalue { double, double } %5, 0
  %7 = extractvalue { double, double } %5, 1
  %8 = insertvalue { double, double } undef, double %6, 0
  %9 = insertvalue { double, double } %8, double %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call { double, double } @"github.com/goplus/llgo/runtime/internal/runtime.Complex128Div"({ double, double } zeroinitializer, { double, double } zeroinitializer)
  %11 = extractvalue { double, double } %10, 0
  %12 = extractvalue { double, double } %10, 1
  %13 = insertvalue { double, double } undef, double %11, 0
  %14 = insertvalue { double, double } %13, double %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %14)
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double })

declare { double, double } @"github.com/goplus/llgo/runtime/internal/runtime.Complex128Div"({ double, double }, { double, double })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)
