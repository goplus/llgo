; ModuleID = 'github.com/goplus/llgo/cl/_testrt/mapclosure'
source_filename = "github.com/goplus/llgo/cl/_testrt/mapclosure"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/mapclosure.list" = global %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/mapclosure.op" = global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/mapclosure", align 1
@1 = private unnamed_addr constant [4 x i8] c"Type", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"$f", align 1
@4 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"map[_llgo_string]_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@6 = private unnamed_addr constant [4 x i8] c"keys", align 1
@7 = private unnamed_addr constant [5 x i8] c"elems", align 1
@8 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@9 = private unnamed_addr constant [4 x i8] c"demo", align 1
@10 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [3 x i8] c"typ", align 1
@"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [1 x i8] c"s", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = linkonce global ptr null, align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [5 x i8] c"error", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.demo"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %8(ptr %7)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %9
}

define void @"github.com/goplus/llgo/cl/_testrt/mapclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$after"()
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type", align 8
  %3 = load ptr, ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE", align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = load ptr, ptr @"_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  %6 = load ptr, ptr @"map[_llgo_string]_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %6, i64 1)
  %8 = load ptr, ptr @"map[_llgo_string]_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %9, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %8, ptr %7, ptr %9)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/mapclosure.demo", ptr null }, ptr %10, align 8
  store ptr %7, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.op", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %12 = getelementptr inbounds { ptr, ptr }, ptr %11, i64 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/mapclosure.demo", ptr null }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.list", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/mapclosure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr %1, align 8
  %2 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.op", align 8
  %3 = load ptr, ptr @"map[_llgo_string]_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %3, ptr %2, ptr %4)
  %6 = load { ptr, ptr }, ptr %5, align 8
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.list", align 8
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %10 = icmp sge i64 0, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds { ptr, ptr }, ptr %8, i64 0
  %12 = load { ptr, ptr }, ptr %11, align 8
  %13 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ", align 8
  %14 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ", align 8
  %15 = load ptr, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %15, ptr %14)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %0, 1
  %19 = extractvalue { ptr, ptr } %6, 1
  %20 = extractvalue { ptr, ptr } %6, 0
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %20(ptr %19, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18)
  %22 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ", align 8
  %23 = load ptr, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %23, ptr %22)
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %0, 1
  %27 = extractvalue { ptr, ptr } %12, 1
  %28 = extractvalue { ptr, ptr } %12, 0
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %28(ptr %27, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26)
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %21, %"github.com/goplus/llgo/runtime/internal/runtime.String" %29)
  %31 = xor i1 %30, true
  br i1 %31, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %32 = load ptr, ptr @_llgo_string, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %33, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %32, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr %33, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define void @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %3, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %14 = getelementptr ptr, ptr %13, i64 0
  store ptr %12, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %18)
  store ptr %18, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %5, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %20 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr undef }, ptr %19, 1
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %21, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %20, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  %27 = load ptr, ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE", align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %30 = getelementptr ptr, ptr %29, i64 0
  store ptr %26, ptr %30, align 8
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %29, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 1, 1
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 1, 2
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %36 = getelementptr ptr, ptr %35, i64 0
  store ptr %34, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %35, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 1, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 1, 2
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %40)
  store ptr %40, ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %41 = load ptr, ptr @_llgo_Pointer, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %43)
  store ptr %43, ptr @_llgo_Pointer, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  %45 = load ptr, ptr @"_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %48 = getelementptr ptr, ptr %47, i64 0
  store ptr %44, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 1, 2
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %54 = getelementptr ptr, ptr %53, i64 0
  store ptr %52, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 1, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 1, 2
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i1 false)
  %59 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %58, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %61 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %60, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %63 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %62, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %59, ptr %63, align 8
  %64 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %62, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %61, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %62, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 2, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 2, 2
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67)
  store ptr %68, ptr @"_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  %71 = load ptr, ptr @"map[_llgo_string]_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %75 = getelementptr ptr, ptr %74, i64 0
  store ptr %69, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 1, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 1, 2
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %81 = getelementptr ptr, ptr %80, i64 0
  store ptr %79, ptr %81, align 8
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %80, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 1, 1
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, i64 1, 2
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84, i1 false)
  %86 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %85, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %88 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %87, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %90 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %89, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %86, ptr %90, align 8
  %91 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %89, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %88, ptr %91, align 8
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 2, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 2, 2
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %96)
  %98 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr %97, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %99)
  %101 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr %100, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %103 = getelementptr ptr, ptr %102, i64 0
  store ptr %70, ptr %103, align 8
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %102, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 1, 1
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, i64 1, 2
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %109 = getelementptr ptr, ptr %108, i64 0
  store ptr %107, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %108, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 1, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 1, 2
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i1 false)
  %114 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %113, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %116 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %115, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %117, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %114, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %117, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %116, ptr %119, align 8
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %117, 0
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 2, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 2, 2
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122)
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %123)
  %125 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %124, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %127 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr %126, i64 264, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %98, ptr %129, align 8
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %101, ptr %130, align 8
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %125, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %127, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %128, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 4, 1
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 4, 2
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, i64 272, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135)
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %73, ptr %95, ptr %136, i64 12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %137)
  store ptr %137, ptr @"map[_llgo_string]_llgo_closure$vc5ZLfKV4flbpeFUtiJWFVJOxWgjZ8JlkoV1ZmTbVIQ", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %138, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ", align 8
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %140 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 1 }, ptr %139, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %142 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %141, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %140, ptr %142, align 8
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %141, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i64 1, 1
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %144, i64 1, 2
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %145)
  store ptr %146, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %147 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %148 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %149 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %148, 1
  %150 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %149, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String", 2
  %151 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %150, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String", 3
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %153 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %152, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %151, ptr %153, align 8
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %152, 0
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, i64 1, 1
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %138, ptr %147, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156)
  %157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, i64 25, i64 16, i64 0, i64 1)
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %157)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %158)
  store ptr %158, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ", align 8
  %159 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %160 = load ptr, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %162 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr undef }, ptr %159, 1
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %164 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %163, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %162, ptr %164, align 8
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %163, 0
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %165, i64 1, 1
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %166, i64 1, 2
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167)
  store ptr %168, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.String" @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/mapclosure.demo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = tail call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.demo"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
