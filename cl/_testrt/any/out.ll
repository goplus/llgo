; ModuleID = 'github.com/goplus/llgo/cl/_testrt/any'
source_filename = "github.com/goplus/llgo/cl/_testrt/any"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/any.init$guard" = global i1 false, align 1
@_llgo_int8 = linkonce global ptr null, align 8
@"*_llgo_int8" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [58 x i8] c"type assertion any -> *github.com/goplus/lib/c.Char failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [32 x i8] c"type assertion any -> int failed", align 1
@2 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1

define ptr @"github.com/goplus/llgo/cl/_testrt/any.hi"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 0
  %3 = load ptr, ptr @_llgo_int8, align 8
  %4 = load ptr, ptr @"*_llgo_int8", align 8
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 1
  ret ptr %6

_llgo_2:                                          ; preds = %_llgo_0
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 58 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %11)
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testrt/any.incVal"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 1
  %6 = ptrtoint ptr %5 to i64
  %7 = add i64 %6, 1
  ret i64 %7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 32 }, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %9, 1
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %12)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/any.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/any.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/any.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/any.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/any.main"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_int8", align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, ptr @3, 1
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/any.hi"(ptr %3)
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr inttoptr (i64 100 to ptr), 1
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %8, align 8
  %9 = call i64 @"github.com/goplus/llgo/cl/_testrt/any.incVal"(ptr %8)
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %4, ptr %10, align 8
  %11 = call i32 @printf(ptr @2, ptr %10, i64 %9)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/any.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %2, ptr @_llgo_int8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @"*_llgo_int8", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %6)
  store ptr %6, ptr @"*_llgo_int8", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %9, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %12, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
