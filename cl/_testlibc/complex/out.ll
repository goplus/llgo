; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"abs(3+4i):", align 1
@1 = private unnamed_addr constant [11 x i8] c"real(3+4i):", align 1
@2 = private unnamed_addr constant [11 x i8] c"imag(3+4i):", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.f({ float, float } %0, { float, float } %1) {
_llgo_0:
  %2 = call float @cabsf({ float, float } %0)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 10, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %7 = fpext float %2 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %8 = extractvalue { float, float } %1, 0
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @1, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 11, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %12)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %13 = fpext float %8 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %14 = extractvalue { float, float } %1, 1
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @2, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 11, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %19 = fpext float %14 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

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
  store float 3.000000e+00, ptr %3, align 4
  %4 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1
  store float 4.000000e+00, ptr %4, align 4
  %5 = load { float, float }, ptr %2, align 4
  call void @main.f({ float, float } %5, { float, float } { float 3.000000e+00, float 4.000000e+00 })
  ret i32 0
}

declare float @cabsf({ float, float })

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.init"()
