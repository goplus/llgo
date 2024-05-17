; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

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
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt32Fto64F(float %0, double %1) {
_llgo_0:
  %2 = fpext float %0 to double
  %3 = fcmp one double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64Fto32F(double %0, float %1) {
_llgo_0:
  %2 = fptrunc double %0 to float
  %3 = fcmp one float %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @6, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64Uto64F(i64 %0, double %1) {
_llgo_0:
  %2 = uitofp i64 %0 to double
  %3 = fcmp one double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @7, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvt64to64F(i64 %0, double %1) {
_llgo_0:
  %2 = sitofp i64 %0 to double
  %3 = fcmp one double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @8, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @9, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @10, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.cvtUinptr(i32 %0, i64 %1) {
_llgo_0:
  %2 = sext i32 %0 to i64
  %3 = icmp ne i64 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @11, i64 5)
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %6 = trunc i64 %1 to i32
  %7 = icmp ne i32 %6, %0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @12, i64 5)
  %9 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %8)
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface" %9)
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

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()
