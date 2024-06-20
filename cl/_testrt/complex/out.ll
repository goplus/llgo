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
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 2.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %2 = alloca { double, double }, align 8
  %3 = getelementptr inbounds { double, double }, ptr %2, i32 0, i32 0
  store double -1.000000e+00, ptr %3, align 8
  %4 = getelementptr inbounds { double, double }, ptr %2, i32 0, i32 1
  store double -2.000000e+00, ptr %4, align 8
  %5 = load { double, double }, ptr %2, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = alloca { double, double }, align 8
  %7 = getelementptr inbounds { double, double }, ptr %6, i32 0, i32 0
  store double 4.000000e+00, ptr %7, align 8
  %8 = getelementptr inbounds { double, double }, ptr %6, i32 0, i32 1
  store double 6.000000e+00, ptr %8, align 8
  %9 = load { double, double }, ptr %6, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %10 = alloca { double, double }, align 8
  %11 = getelementptr inbounds { double, double }, ptr %10, i32 0, i32 0
  store double -2.000000e+00, ptr %11, align 8
  %12 = getelementptr inbounds { double, double }, ptr %10, i32 0, i32 1
  store double -2.000000e+00, ptr %12, align 8
  %13 = load { double, double }, ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %14 = alloca { double, double }, align 8
  %15 = getelementptr inbounds { double, double }, ptr %14, i32 0, i32 0
  store double -5.000000e+00, ptr %15, align 8
  %16 = getelementptr inbounds { double, double }, ptr %14, i32 0, i32 1
  store double 1.000000e+01, ptr %16, align 8
  %17 = load { double, double }, ptr %14, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %18 = alloca { double, double }, align 8
  %19 = getelementptr inbounds { double, double }, ptr %18, i32 0, i32 0
  store double 4.400000e-01, ptr %19, align 8
  %20 = getelementptr inbounds { double, double }, ptr %18, i32 0, i32 1
  store double -8.000000e-02, ptr %20, align 8
  %21 = load { double, double }, ptr %18, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %22 = alloca { double, double }, align 8
  %23 = getelementptr inbounds { double, double }, ptr %22, i32 0, i32 0
  store double 0x7FF0000000000000, ptr %23, align 8
  %24 = getelementptr inbounds { double, double }, ptr %22, i32 0, i32 1
  store double 0x7FF0000000000000, ptr %24, align 8
  %25 = load { double, double }, ptr %22, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %26 = alloca { double, double }, align 8
  %27 = getelementptr inbounds { double, double }, ptr %26, i32 0, i32 0
  store double 0x7FF8000000000000, ptr %27, align 8
  %28 = getelementptr inbounds { double, double }, ptr %26, i32 0, i32 1
  store double 0x7FF8000000000000, ptr %28, align 8
  %29 = load { double, double }, ptr %26, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double } %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %30 = alloca { float, float }, align 8
  %31 = getelementptr inbounds { float, float }, ptr %30, i32 0, i32 0
  store float 1.000000e+00, ptr %31, align 4
  %32 = getelementptr inbounds { float, float }, ptr %30, i32 0, i32 1
  store float 2.000000e+00, ptr %32, align 4
  %33 = load { float, float }, ptr %30, align 4
  %34 = extractvalue { float, float } %33, 0
  %35 = extractvalue { float, float } %33, 1
  %36 = fpext float %34 to double
  %37 = fpext float %35 to double
  %38 = alloca { double, double }, align 8
  %39 = getelementptr inbounds { double, double }, ptr %38, i32 0, i32 0
  store double %36, ptr %39, align 8
  %40 = getelementptr inbounds { double, double }, ptr %38, i32 0, i32 1
  store double %37, ptr %40, align 8
  %41 = load { double, double }, ptr %38, align 8
  %42 = extractvalue { double, double } %41, 0
  %43 = extractvalue { double, double } %41, 1
  %44 = fcmp oeq double %42, 1.000000e+00
  %45 = fcmp oeq double %43, 2.000000e+00
  %46 = and i1 %44, %45
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %46)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintComplex"({ double, double })

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)
