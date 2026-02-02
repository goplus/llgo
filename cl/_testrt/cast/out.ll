; ModuleID = 'github.com/goplus/llgo/cl/_testrt/cast'
source_filename = "github.com/goplus/llgo/cl/_testrt/cast"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/cast.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", i64 0 }
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float %0, i32 %1) {
_llgo_0:
  %2 = fptosi float %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = icmp ne i32 %3, %1
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %5, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float %0, i32 %1) {
_llgo_0:
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fptosi float %0 to i64
  %4 = fptoui float %0 to i64
  %5 = select i1 %2, i64 %3, i64 %4
  %6 = trunc i64 %5 to i32
  %7 = icmp ne i32 %6, %1
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float %0, double %1) {
_llgo_0:
  %2 = fpext float %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float %0, i8 %1) {
_llgo_0:
  %2 = fptosi float %0 to i64
  %3 = trunc i64 %2 to i8
  %4 = icmp ne i8 %3, %1
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %5, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float %0, i8 %1) {
_llgo_0:
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fptosi float %0 to i64
  %4 = fptoui float %0 to i64
  %5 = select i1 %2, i64 %3, i64 %4
  %6 = trunc i64 %5 to i8
  %7 = icmp ne i8 %6, %1
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64"(i32 %0, i64 %1) {
_llgo_0:
  %2 = sext i32 %0 to i64
  %3 = icmp ne i64 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double %0, float %1) {
_llgo_0:
  %2 = fptrunc double %0 to float
  %3 = fcmp une float %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 %0, double %1) {
_llgo_0:
  %2 = uitofp i64 %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 %0, double %1) {
_llgo_0:
  %2 = sitofp i64 %0 to double
  %3 = fcmp une double %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 %0, i8 %1) {
_llgo_0:
  %2 = trunc i64 %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 %0, i8 %1) {
_llgo_0:
  %2 = trunc i64 %0 to i8
  %3 = icmp ne i8 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.cvtUinptr"(i32 %0, i64 %1) {
_llgo_0:
  %2 = sext i32 %0 to i64
  %3 = icmp ne i64 %2, %1
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %6 = trunc i64 %1 to i32
  %7 = icmp ne i32 %6, %0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/cast.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/cast.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cast.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 0, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 127, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 128, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 -128, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 -129, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8"(i64 256, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 0, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 255, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 256, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 257, i8 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to8U"(i64 -1, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x3FB99999A0000000, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x405FC66660000000, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x4060033340000000, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0xC060033340000000, i8 -128)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0xC060233340000000, i8 127)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8"(float 0x40700199A0000000, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 0.000000e+00, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 2.550000e+02, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 2.560000e+02, i8 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float 2.570000e+02, i8 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto8U"(float -1.000000e+00, i8 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 0.000000e+00, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 1.500000e+00, i32 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 0x41D1194D80000000, i32 1147483648)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32"(float 0xC1E0000000000000, i32 -2147483648)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0.000000e+00, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 1.500000e+00, i32 1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0x41F0000000000000, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0x41F3B9ACA0000000, i32 1000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0xC1F0000000000000, i32 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0xC1D34BE880000000, i32 -1294967296)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto32U"(float 0xBFF19999A0000000, i32 -1)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float 0.000000e+00, double 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float 1.500000e+00, double 1.500000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float 1.000000e+10, double 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32Fto64F"(float -1.000000e+10, double -1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double 0.000000e+00, float 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double 1.500000e+00, float 1.500000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double 1.000000e+10, float 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Fto32F"(double -1.000000e+10, float -1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 0, double 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 10000000000, double 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 9223372036854775807, double 0x43E0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64to64F"(i64 -9223372036854775807, double 0xC3E0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 0, double 0.000000e+00)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 10000000000, double 1.000000e+10)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 9223372036854775807, double 0x43E0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt64Uto64F"(i64 -1, double 0x43F0000000000000)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64"(i32 0, i64 0)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvt32to64"(i32 2147483647, i64 2147483647)
  call void @"github.com/goplus/llgo/cl/_testrt/cast.cvtUinptr"(i32 1024, i64 1024)
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
