; ModuleID = 'github.com/goplus/llgo/cl/_testrt/namedslice'
source_filename = "github.com/goplus/llgo/cl/_testrt/namedslice"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/namedslice", align 1
@1 = private unnamed_addr constant [7 x i8] c"MyBytes", align 1
@_llgo_uint8 = linkonce global ptr null, align 8
@"[]_llgo_uint8" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [9 x i8] c"bad slice", align 1
@_llgo_string = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/cl/_testrt/namedslice.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/namedslice.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/namedslice.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, i64 0, 1
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, i64 0, 2
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 0
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", align 8
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %11 = load ptr, ptr @_llgo_string, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr %12, 1
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %15)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 1
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  %18 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 0
  %19 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %18, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %20 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } [ %19, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %21 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %20, 0
  %22 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %20, 1
  br i1 %22, label %_llgo_2, label %_llgo_1
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testrt/namedslice.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 23, i64 24, i64 0, i64 0)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @_llgo_uint8, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %7, ptr @_llgo_uint8, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_uint8, align 8
  %9 = load ptr, ptr @"[]_llgo_uint8", align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %11)
  store ptr %12, ptr @"[]_llgo_uint8", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %13 = load ptr, ptr @"[]_llgo_uint8", align 8
  br i1 %4, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %13, ptr %14, ptr %15)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %18, ptr @_llgo_string, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)
