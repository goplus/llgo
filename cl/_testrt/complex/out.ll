; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = alloca { float, float }, align 8
  %3 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0
  store float 1.000000e+00, ptr %3, align 4
  %4 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1
  store float 2.000000e+00, ptr %4, align 4
  %5 = load { float, float }, ptr %2, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } { double 1.000000e+00, double 2.000000e+00 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 2.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = extractvalue { float, float } %5, 0
  %7 = extractvalue { float, float } %5, 1
  %8 = extractvalue { float, float } %5, 0
  %9 = extractvalue { float, float } %5, 1
  %10 = fpext float %8 to double
  %11 = fpext float %9 to double
  %12 = alloca { double, double }, align 8
  %13 = getelementptr inbounds { double, double }, ptr %12, i32 0, i32 0
  store double %10, ptr %13, align 8
  %14 = getelementptr inbounds { double, double }, ptr %12, i32 0, i32 1
  store double %11, ptr %14, align 8
  %15 = load { double, double }, ptr %12, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %16 = fpext float %6 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %17 = fpext float %7 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double })

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)
