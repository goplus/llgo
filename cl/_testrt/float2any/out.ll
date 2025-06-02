; ModuleID = 'github.com/goplus/llgo/cl/_testrt/float2any'
source_filename = "github.com/goplus/llgo/cl/_testrt/float2any"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/float2any.init$guard" = global i1 false, align 1
@_llgo_float32 = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [36 x i8] c"type assertion any -> float32 failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [9 x i8] c"error f32", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [36 x i8] c"type assertion any -> float64 failed", align 1
@3 = private unnamed_addr constant [9 x i8] c"error f64", align 1

define void @"github.com/goplus/llgo/cl/_testrt/float2any.check32"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 0
  %3 = load ptr, ptr @_llgo_float32, align 8
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 1
  %11 = ptrtoint ptr %10 to i64
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32 %12 to float
  %14 = fcmp une float %13, 0x400921FB60000000
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %15 = load ptr, ptr @_llgo_string, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 36 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %16, 1
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %19, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %19)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/float2any.check64"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 0
  %3 = load ptr, ptr @_llgo_float64, align 8
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 1
  %11 = ptrtoint ptr %10 to i64
  %12 = bitcast i64 %11 to double
  %13 = fcmp une double %12, 0x400921FB53C8D4F1
  br i1 %13, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %14 = load ptr, ptr @_llgo_string, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 36 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %18)
  unreachable
}

define float @"github.com/goplus/llgo/cl/_testrt/float2any.f32"() {
_llgo_0:
  ret float 0x400921FB60000000
}

define double @"github.com/goplus/llgo/cl/_testrt/float2any.f64"() {
_llgo_0:
  ret double 0x400921FB53C8D4F1
}

define void @"github.com/goplus/llgo/cl/_testrt/float2any.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/float2any.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/float2any.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/float2any.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/float2any.main"() {
_llgo_0:
  %0 = call float @"github.com/goplus/llgo/cl/_testrt/float2any.f32"()
  %1 = load ptr, ptr @_llgo_float32, align 8
  %2 = bitcast float %0 to i32
  %3 = inttoptr i32 %2 to ptr
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %6, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/float2any.check32"(ptr %6)
  %7 = call double @"github.com/goplus/llgo/cl/_testrt/float2any.f64"()
  %8 = load ptr, ptr @_llgo_float64, align 8
  %9 = bitcast double %7 to i64
  %10 = inttoptr i64 %9 to ptr
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %10, 1
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %13, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/float2any.check64"(ptr %13)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/float2any.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  store ptr %2, ptr @_llgo_float32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_float64, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %8, ptr @_llgo_float64, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)
