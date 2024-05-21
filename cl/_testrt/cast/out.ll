; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@8 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@11 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null

define void @main.cvt32Fto32(float %0, i32 %1) {
_llgo_0:
  %2 = fptosi float %0 to i32
  %3 = icmp ne i32 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt32Fto32U(float %0, i32 %1) {
_llgo_0:
  %2 = fptoui float %0 to i32
  %3 = icmp ne i32 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @1, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt32Fto64F(float %0, double %1) {
_llgo_0:
  %2 = fpext float %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @2, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt32Fto8(float %0, i8 %1) {
_llgo_0:
  %2 = fptosi float %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @3, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt32Fto8U(float %0, i8 %1) {
_llgo_0:
  %2 = fptoui float %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @4, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt32to64(i32 %0, i64 %1) {
_llgo_0:
  %2 = sext i32 %0 to i64
  %3 = icmp ne i64 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @5, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64Fto32F(double %0, float %1) {
_llgo_0:
  %2 = fptrunc double %0 to float
  %3 = fcmp une float %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @6, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64Uto64F(i64 %0, double %1) {
_llgo_0:
  %2 = uitofp i64 %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @7, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64to64F(i64 %0, double %1) {
_llgo_0:
  %2 = sitofp i64 %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @8, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64to8(i64 %0, i8 %1) {
_llgo_0:
  %2 = trunc i64 %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @9, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64to8U(i64 %0, i8 %1) {
_llgo_0:
  %2 = trunc i64 %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @10, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvtUinptr(i32 %0, i64 %1) {
_llgo_0:
  %2 = zext i32 %0 to i64
  %3 = icmp ne i64 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @11, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %14 = trunc i64 %1 to i32
  %15 = icmp ne i32 %14, %0
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @12, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 5, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %19, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i32 0, i32 0
  store ptr %20, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i32 0, i32 1
  store ptr %21, ptr %24, align 8
  %25 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %25)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
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
  call void @main.cvt64to8(i64 0, i8 0)
  call void @main.cvt64to8(i64 127, i8 127)
  call void @main.cvt64to8(i64 128, i8 -128)
  call void @main.cvt64to8(i64 -128, i8 -128)
  call void @main.cvt64to8(i64 -129, i8 127)
  call void @main.cvt64to8(i64 256, i8 0)
  call void @main.cvt64to8U(i64 0, i8 0)
  call void @main.cvt64to8U(i64 255, i8 -1)
  call void @main.cvt64to8U(i64 256, i8 0)
  call void @main.cvt64to8U(i64 257, i8 1)
  call void @main.cvt64to8U(i64 -1, i8 -1)
  call void @main.cvt32Fto8(float 0x3FB99999A0000000, i8 0)
  call void @main.cvt32Fto8(float 0x405FC66660000000, i8 127)
  call void @main.cvt32Fto8(float 0x4060033340000000, i8 -128)
  call void @main.cvt32Fto8(float 0xC060033340000000, i8 -128)
  call void @main.cvt32Fto8(float 0xC060233340000000, i8 127)
  call void @main.cvt32Fto8(float 0x40700199A0000000, i8 0)
  call void @main.cvt32Fto8U(float 0.000000e+00, i8 0)
  call void @main.cvt32Fto8U(float 2.550000e+02, i8 -1)
  call void @main.cvt32Fto8U(float 2.560000e+02, i8 0)
  call void @main.cvt32Fto8U(float 2.570000e+02, i8 1)
  call void @main.cvt32Fto8U(float -1.000000e+00, i8 -1)
  call void @main.cvt32Fto32(float 0.000000e+00, i32 0)
  call void @main.cvt32Fto32(float 1.500000e+00, i32 1)
  call void @main.cvt32Fto32(float 0x41D1194D80000000, i32 1147483648)
  call void @main.cvt32Fto32(float 0x41E0000000000000, i32 -2147483648)
  call void @main.cvt32Fto32(float 0x41EEE6B280000000, i32 -2147483648)
  call void @main.cvt32Fto32(float 0xC1E0000000000000, i32 -2147483648)
  call void @main.cvt32Fto32(float 0xC1DFFFFF00000000, i32 -2147482624)
  call void @main.cvt32Fto32U(float 0.000000e+00, i32 0)
  call void @main.cvt32Fto32U(float 1.500000e+00, i32 1)
  call void @main.cvt32Fto32U(float 0x41F0000000000000, i32 0)
  call void @main.cvt32Fto32U(float 0x41F3B9ACA0000000, i32 1000000000)
  call void @main.cvt32Fto32U(float 0xC1F0000000000000, i32 0)
  call void @main.cvt32Fto32U(float 0xC1D34BE880000000, i32 -1294967296)
  call void @main.cvt32Fto32U(float 0xBFF19999A0000000, i32 -1)
  call void @main.cvt32Fto64F(float 0.000000e+00, double 0.000000e+00)
  call void @main.cvt32Fto64F(float 1.500000e+00, double 1.500000e+00)
  call void @main.cvt32Fto64F(float 1.000000e+10, double 1.000000e+10)
  call void @main.cvt32Fto64F(float -1.000000e+10, double -1.000000e+10)
  call void @main.cvt64Fto32F(double 0.000000e+00, float 0.000000e+00)
  call void @main.cvt64Fto32F(double 1.500000e+00, float 1.500000e+00)
  call void @main.cvt64Fto32F(double 1.000000e+10, float 1.000000e+10)
  call void @main.cvt64Fto32F(double -1.000000e+10, float -1.000000e+10)
  call void @main.cvt64to64F(i64 0, double 0.000000e+00)
  call void @main.cvt64to64F(i64 10000000000, double 1.000000e+10)
  call void @main.cvt64to64F(i64 9223372036854775807, double 0x43E0000000000000)
  call void @main.cvt64to64F(i64 -9223372036854775807, double 0xC3E0000000000000)
  call void @main.cvt64Uto64F(i64 0, double 0.000000e+00)
  call void @main.cvt64Uto64F(i64 10000000000, double 1.000000e+10)
  call void @main.cvt64Uto64F(i64 9223372036854775807, double 0x43E0000000000000)
  call void @main.cvt64Uto64F(i64 -1, double 0x43F0000000000000)
  call void @main.cvt32to64(i32 0, i64 0)
  call void @main.cvt32to64(i32 2147483647, i64 2147483647)
  call void @main.cvtUinptr(i32 1024, i64 1024)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()
