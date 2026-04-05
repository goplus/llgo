; ModuleID = 'github.com/goplus/llgo/cl/_testdata/print'
source_filename = "github.com/goplus/llgo/cl/_testdata/print"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testdata/print.stringStruct" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testdata/print.slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testdata/print.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testdata/print.minhexdigits" = global i64 0, align 8
@0 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"llgo", align 1
@_llgo_float32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 62173712, i8 4, i8 4, i8 4, i8 13, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"*_llgo_float32" }, align 8
@2 = private unnamed_addr constant [7 x i8] c"float32", align 1
@"*_llgo_float32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1426958587, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr null }, ptr @_llgo_float32 }, align 8
@_llgo_float64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1233032631, i8 4, i8 8, i8 8, i8 14, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, ptr @"*_llgo_float64" }, align 8
@3 = private unnamed_addr constant [7 x i8] c"float64", align 1
@"*_llgo_float64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1664509894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@4 = private unnamed_addr constant [10 x i8] c"check bool", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr @"*_llgo_string" }, align 8
@5 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 1, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr @"*_llgo_bool" }, align 8
@6 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@7 = private unnamed_addr constant [8 x i8] c"check &^", align 1
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 5, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"*_llgo_int32" }, align 8
@8 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 3, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"*_llgo_int8" }, align 8
@9 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@_llgo_int16 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 1041867489, i8 12, i8 2, i8 2, i8 4, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"*_llgo_int16" }, align 8
@10 = private unnamed_addr constant [5 x i8] c"int16", align 1
@"*_llgo_int16" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 575772759, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr null }, ptr @_llgo_int16 }, align 8
@_llgo_int64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 394795202, i8 12, i8 8, i8 8, i8 6, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"*_llgo_int64" }, align 8
@11 = private unnamed_addr constant [5 x i8] c"int64", align 1
@"*_llgo_int64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1901231210, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr null }, ptr @_llgo_int64 }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 }, ptr @"*_llgo_int" }, align 8
@12 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@13 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@_llgo_uint16 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -75471123, i8 12, i8 2, i8 2, i8 9, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr @"*_llgo_uint16" }, align 8
@14 = private unnamed_addr constant [6 x i8] c"uint16", align 1
@"*_llgo_uint16" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 530818523, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr null }, ptr @_llgo_uint16 }, align 8
@_llgo_uint32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 -625909322, i8 12, i8 4, i8 4, i8 10, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr @"*_llgo_uint32" }, align 8
@15 = private unnamed_addr constant [6 x i8] c"uint32", align 1
@"*_llgo_uint32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1605480511, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 }, ptr null }, ptr @_llgo_uint32 }, align 8
@_llgo_uint64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1994022077, i8 12, i8 8, i8 8, i8 11, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr @"*_llgo_uint64" }, align 8
@16 = private unnamed_addr constant [6 x i8] c"uint64", align 1
@"*_llgo_uint64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 89591114, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 6 }, ptr null }, ptr @_llgo_uint64 }, align 8
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 12, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@17 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@_llgo_complex128 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -185553283, i8 4, i8 8, i8 8, i8 16, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c128equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 10 }, ptr @"*_llgo_complex128" }, align 8
@18 = private unnamed_addr constant [10 x i8] c"complex128", align 1
@"*_llgo_complex128" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -210097625, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 10 }, ptr null }, ptr @_llgo_complex128 }, align 8
@_llgo_uint = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 172771804, i8 12, i8 8, i8 8, i8 7, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"*_llgo_uint" }, align 8
@19 = private unnamed_addr constant [4 x i8] c"uint", align 1
@"*_llgo_uint" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1001256076, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr null }, ptr @_llgo_uint }, align 8
@_llgo_complex64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1545857875, i8 4, i8 4, i8 4, i8 15, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 9 }, ptr @"*_llgo_complex64" }, align 8
@20 = private unnamed_addr constant [9 x i8] c"complex64", align 1
@"*_llgo_complex64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1953092460, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 9 }, ptr null }, ptr @_llgo_complex64 }, align 8
@21 = private unnamed_addr constant [1 x i8] c"(", align 1
@22 = private unnamed_addr constant [2 x i8] c"i)", align 1
@23 = private unnamed_addr constant [4 x i8] c"true", align 1
@24 = private unnamed_addr constant [5 x i8] c"false", align 1
@25 = private unnamed_addr constant [3 x i8] c"NaN", align 1
@26 = private unnamed_addr constant [4 x i8] c"+Inf", align 1
@27 = private unnamed_addr constant [4 x i8] c"-Inf", align 1
@28 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@29 = private unnamed_addr constant [1 x i8] c"-", align 1
@30 = private unnamed_addr constant [1 x i8] c" ", align 1
@31 = private unnamed_addr constant [1 x i8] c"\0A", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testdata/print.bytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testdata/print.stringStructOf"(ptr %1)
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/print.stringStruct", ptr %3, i32 0, i32 0
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/print.slice", ptr %2, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/print.stringStruct", ptr %3, i32 0, i32 1
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load i64, ptr %11, align 4
  %14 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/print.slice", ptr %2, i32 0, i32 1
  store i64 %13, ptr %15, align 4
  %16 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/print.stringStruct", ptr %3, i32 0, i32 1
  %18 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %17, align 4
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/print.slice", ptr %2, i32 0, i32 2
  store i64 %19, ptr %21, align 4
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23
}

define void @"github.com/goplus/llgo/cl/_testdata/print.gwrite"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %4 = phi i64 [ -1, %_llgo_2 ], [ %5, %_llgo_4 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %9 = icmp slt i64 %5, 0
  %10 = icmp sge i64 %5, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = getelementptr inbounds i8, ptr %7, i64 %5
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load i8, ptr %12, align 1
  %15 = call i32 (ptr, ...) @printf(ptr @0, i8 %14)
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_3
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/print.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/print.init$guard", align 1
  store i64 0, ptr @"github.com/goplus/llgo/cl/_testdata/print.minhexdigits", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 1024)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  call void @"github.com/goplus/llgo/cl/_testdata/print.printhex"(i64 305441743)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  call void @"github.com/goplus/llgo/cl/_testdata/print.prinxor"(i64 1)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  call void @"github.com/goplus/llgo/cl/_testdata/print.prinsub"(i64 100)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  call void @"github.com/goplus/llgo/cl/_testdata/print.prinusub"(i64 -1)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  call void @"github.com/goplus/llgo/cl/_testdata/print.prinfsub"(double 1.001000e+02)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store float 1.000000e+09, ptr %0, align 4
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float32, ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/_testdata/print.printany"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store double 2.000000e+09, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_float64, ptr undef }, ptr %2, 1
  call void @"github.com/goplus/llgo/cl/_testdata/print.printany"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  br i1 true, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %4, i64 0
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 10 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %6, align 8
  %9 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %4, i64 1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i1 true, ptr %11, align 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_bool, ptr undef }, ptr %11, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %10, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 2, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 2, 2
  call void @"github.com/goplus/llgo/cl/_testdata/print.println"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3, %_llgo_0
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %16, i64 0
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 8 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %18, align 8
  %21 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %16, i64 1
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i1 true, ptr %23, align 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_bool, ptr undef }, ptr %23, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %22, align 8
  %25 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %16, i64 2
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i1 true, ptr %27, align 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_bool, ptr undef }, ptr %27, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr %26, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 3, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 3, 2
  call void @"github.com/goplus/llgo/cl/_testdata/print.println"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 256)
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 0
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i1 true, ptr %35, align 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_bool, ptr undef }, ptr %35, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %34, align 8
  %37 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i1 false, ptr %39, align 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_bool, ptr undef }, ptr %39, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %38, align 8
  %41 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 2
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 97, ptr %43, align 4
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr undef }, ptr %43, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %42, align 8
  %45 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 3
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 65, ptr %47, align 4
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr undef }, ptr %47, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %46, align 8
  %49 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 4
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 20013, ptr %51, align 4
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr undef }, ptr %51, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %50, align 8
  %53 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 5
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i8 1, ptr %55, align 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int8, ptr undef }, ptr %55, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %54, align 8
  %57 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 6
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store i16 2, ptr %59, align 2
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int16, ptr undef }, ptr %59, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %60, ptr %58, align 8
  %61 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 7
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 3, ptr %63, align 4
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int32, ptr undef }, ptr %63, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, ptr %62, align 8
  %65 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 4, ptr %67, align 4
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int64, ptr undef }, ptr %67, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %68, ptr %66, align 8
  %69 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 9
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 5, ptr %71, align 4
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %71, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr %70, align 8
  %73 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 10
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1)
  store i8 1, ptr %75, align 1
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint8, ptr undef }, ptr %75, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %74, align 8
  %77 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 11
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store i16 2, ptr %79, align 2
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint16, ptr undef }, ptr %79, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %80, ptr %78, align 8
  %81 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 12
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 4)
  store i32 3, ptr %83, align 4
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint32, ptr undef }, ptr %83, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %82, align 8
  %85 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 13
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 4, ptr %87, align 4
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uint64, ptr undef }, ptr %87, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr %86, align 8
  %89 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 14
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 5, ptr %91, align 4
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_uintptr, ptr undef }, ptr %91, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %92, ptr %90, align 8
  %93 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %32, i64 15
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %95, align 8
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %95, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %96, ptr %94, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %32, 0
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i64 16, 1
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 16, 2
  call void @"github.com/goplus/llgo/cl/_testdata/print.println"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99)
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %101 = icmp eq ptr %100, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %100, i64 0
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { double, double } { double 1.000000e+00, double 2.000000e+00 }, ptr %103, align 8
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_complex128, ptr undef }, ptr %103, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %104, ptr %102, align 8
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %100, 0
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, i64 1, 1
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, i64 1, 2
  call void @"github.com/goplus/llgo/cl/_testdata/print.println"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  br i1 true, label %_llgo_1, label %_llgo_2
}

define void @"github.com/goplus/llgo/cl/_testdata/print.prinfsub"(double %0) {
_llgo_0:
  %1 = fneg double %0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.prinsub"(i64 %0) {
_llgo_0:
  %1 = sub i64 0, %0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printany"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = icmp eq ptr %1, @_llgo_bool
  br i1 %2, label %_llgo_35, label %_llgo_36

_llgo_1:                                          ; preds = %_llgo_34, %_llgo_85, %_llgo_32, %_llgo_30, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_6, %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_37
  call void @"github.com/goplus/llgo/cl/_testdata/print.printbool"(i1 %53)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_37
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %4 = icmp eq ptr %3, @_llgo_int
  br i1 %4, label %_llgo_38, label %_llgo_39

_llgo_4:                                          ; preds = %_llgo_40
  call void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %60)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_40
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %6 = icmp eq ptr %5, @_llgo_int8
  br i1 %6, label %_llgo_41, label %_llgo_42

_llgo_6:                                          ; preds = %_llgo_43
  %7 = sext i8 %67 to i64
  call void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %7)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_43
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %9 = icmp eq ptr %8, @_llgo_int16
  br i1 %9, label %_llgo_44, label %_llgo_45

_llgo_8:                                          ; preds = %_llgo_46
  %10 = sext i16 %74 to i64
  call void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %10)
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_46
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %12 = icmp eq ptr %11, @_llgo_int32
  br i1 %12, label %_llgo_47, label %_llgo_48

_llgo_10:                                         ; preds = %_llgo_49
  %13 = sext i32 %81 to i64
  call void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %13)
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_49
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %15 = icmp eq ptr %14, @_llgo_int64
  br i1 %15, label %_llgo_50, label %_llgo_51

_llgo_12:                                         ; preds = %_llgo_52
  call void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %88)
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_52
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %17 = icmp eq ptr %16, @_llgo_uint
  br i1 %17, label %_llgo_53, label %_llgo_54

_llgo_14:                                         ; preds = %_llgo_55
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %95)
  br label %_llgo_1

_llgo_15:                                         ; preds = %_llgo_55
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %19 = icmp eq ptr %18, @_llgo_uint8
  br i1 %19, label %_llgo_56, label %_llgo_57

_llgo_16:                                         ; preds = %_llgo_58
  %20 = zext i8 %102 to i64
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %20)
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_58
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %22 = icmp eq ptr %21, @_llgo_uint16
  br i1 %22, label %_llgo_59, label %_llgo_60

_llgo_18:                                         ; preds = %_llgo_61
  %23 = zext i16 %109 to i64
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %23)
  br label %_llgo_1

_llgo_19:                                         ; preds = %_llgo_61
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %25 = icmp eq ptr %24, @_llgo_uint32
  br i1 %25, label %_llgo_62, label %_llgo_63

_llgo_20:                                         ; preds = %_llgo_64
  %26 = zext i32 %116 to i64
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %26)
  br label %_llgo_1

_llgo_21:                                         ; preds = %_llgo_64
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %28 = icmp eq ptr %27, @_llgo_uint64
  br i1 %28, label %_llgo_65, label %_llgo_66

_llgo_22:                                         ; preds = %_llgo_67
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %123)
  br label %_llgo_1

_llgo_23:                                         ; preds = %_llgo_67
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %30 = icmp eq ptr %29, @_llgo_uintptr
  br i1 %30, label %_llgo_68, label %_llgo_69

_llgo_24:                                         ; preds = %_llgo_70
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %130)
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_70
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %32 = icmp eq ptr %31, @_llgo_float32
  br i1 %32, label %_llgo_71, label %_llgo_72

_llgo_26:                                         ; preds = %_llgo_73
  %33 = fpext float %137 to double
  call void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %33)
  br label %_llgo_1

_llgo_27:                                         ; preds = %_llgo_73
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %35 = icmp eq ptr %34, @_llgo_float64
  br i1 %35, label %_llgo_74, label %_llgo_75

_llgo_28:                                         ; preds = %_llgo_76
  call void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %144)
  br label %_llgo_1

_llgo_29:                                         ; preds = %_llgo_76
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %37 = icmp eq ptr %36, @_llgo_complex64
  br i1 %37, label %_llgo_77, label %_llgo_78

_llgo_30:                                         ; preds = %_llgo_79
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 1 })
  %38 = extractvalue { float, float } %151, 0
  %39 = fpext float %38 to double
  call void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %39)
  %40 = extractvalue { float, float } %151, 1
  %41 = fpext float %40 to double
  call void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %41)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 })
  br label %_llgo_1

_llgo_31:                                         ; preds = %_llgo_79
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %43 = icmp eq ptr %42, @_llgo_complex128
  br i1 %43, label %_llgo_80, label %_llgo_81

_llgo_32:                                         ; preds = %_llgo_82
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 1 })
  %44 = extractvalue { double, double } %158, 0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %44)
  %45 = extractvalue { double, double } %158, 1
  call void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %45)
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 2 })
  br label %_llgo_1

_llgo_33:                                         ; preds = %_llgo_82
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %47 = icmp eq ptr %46, @_llgo_string
  br i1 %47, label %_llgo_83, label %_llgo_84

_llgo_34:                                         ; preds = %_llgo_85
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %165)
  br label %_llgo_1

_llgo_35:                                         ; preds = %_llgo_0
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %49 = load i1, ptr %48, align 1
  %50 = insertvalue { i1, i1 } undef, i1 %49, 0
  %51 = insertvalue { i1, i1 } %50, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_0
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %52 = phi { i1, i1 } [ %51, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %53 = extractvalue { i1, i1 } %52, 0
  %54 = extractvalue { i1, i1 } %52, 1
  br i1 %54, label %_llgo_2, label %_llgo_3

_llgo_38:                                         ; preds = %_llgo_3
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %56 = load i64, ptr %55, align 4
  %57 = insertvalue { i64, i1 } undef, i64 %56, 0
  %58 = insertvalue { i64, i1 } %57, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_3
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %59 = phi { i64, i1 } [ %58, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %60 = extractvalue { i64, i1 } %59, 0
  %61 = extractvalue { i64, i1 } %59, 1
  br i1 %61, label %_llgo_4, label %_llgo_5

_llgo_41:                                         ; preds = %_llgo_5
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %63 = load i8, ptr %62, align 1
  %64 = insertvalue { i8, i1 } undef, i8 %63, 0
  %65 = insertvalue { i8, i1 } %64, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_5
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %66 = phi { i8, i1 } [ %65, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %67 = extractvalue { i8, i1 } %66, 0
  %68 = extractvalue { i8, i1 } %66, 1
  br i1 %68, label %_llgo_6, label %_llgo_7

_llgo_44:                                         ; preds = %_llgo_7
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %70 = load i16, ptr %69, align 2
  %71 = insertvalue { i16, i1 } undef, i16 %70, 0
  %72 = insertvalue { i16, i1 } %71, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_7
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %73 = phi { i16, i1 } [ %72, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %74 = extractvalue { i16, i1 } %73, 0
  %75 = extractvalue { i16, i1 } %73, 1
  br i1 %75, label %_llgo_8, label %_llgo_9

_llgo_47:                                         ; preds = %_llgo_9
  %76 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %77 = load i32, ptr %76, align 4
  %78 = insertvalue { i32, i1 } undef, i32 %77, 0
  %79 = insertvalue { i32, i1 } %78, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_9
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %80 = phi { i32, i1 } [ %79, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %81 = extractvalue { i32, i1 } %80, 0
  %82 = extractvalue { i32, i1 } %80, 1
  br i1 %82, label %_llgo_10, label %_llgo_11

_llgo_50:                                         ; preds = %_llgo_11
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %84 = load i64, ptr %83, align 4
  %85 = insertvalue { i64, i1 } undef, i64 %84, 0
  %86 = insertvalue { i64, i1 } %85, i1 true, 1
  br label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_11
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %87 = phi { i64, i1 } [ %86, %_llgo_50 ], [ zeroinitializer, %_llgo_51 ]
  %88 = extractvalue { i64, i1 } %87, 0
  %89 = extractvalue { i64, i1 } %87, 1
  br i1 %89, label %_llgo_12, label %_llgo_13

_llgo_53:                                         ; preds = %_llgo_13
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %91 = load i64, ptr %90, align 4
  %92 = insertvalue { i64, i1 } undef, i64 %91, 0
  %93 = insertvalue { i64, i1 } %92, i1 true, 1
  br label %_llgo_55

_llgo_54:                                         ; preds = %_llgo_13
  br label %_llgo_55

_llgo_55:                                         ; preds = %_llgo_54, %_llgo_53
  %94 = phi { i64, i1 } [ %93, %_llgo_53 ], [ zeroinitializer, %_llgo_54 ]
  %95 = extractvalue { i64, i1 } %94, 0
  %96 = extractvalue { i64, i1 } %94, 1
  br i1 %96, label %_llgo_14, label %_llgo_15

_llgo_56:                                         ; preds = %_llgo_15
  %97 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %98 = load i8, ptr %97, align 1
  %99 = insertvalue { i8, i1 } undef, i8 %98, 0
  %100 = insertvalue { i8, i1 } %99, i1 true, 1
  br label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_15
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %101 = phi { i8, i1 } [ %100, %_llgo_56 ], [ zeroinitializer, %_llgo_57 ]
  %102 = extractvalue { i8, i1 } %101, 0
  %103 = extractvalue { i8, i1 } %101, 1
  br i1 %103, label %_llgo_16, label %_llgo_17

_llgo_59:                                         ; preds = %_llgo_17
  %104 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %105 = load i16, ptr %104, align 2
  %106 = insertvalue { i16, i1 } undef, i16 %105, 0
  %107 = insertvalue { i16, i1 } %106, i1 true, 1
  br label %_llgo_61

_llgo_60:                                         ; preds = %_llgo_17
  br label %_llgo_61

_llgo_61:                                         ; preds = %_llgo_60, %_llgo_59
  %108 = phi { i16, i1 } [ %107, %_llgo_59 ], [ zeroinitializer, %_llgo_60 ]
  %109 = extractvalue { i16, i1 } %108, 0
  %110 = extractvalue { i16, i1 } %108, 1
  br i1 %110, label %_llgo_18, label %_llgo_19

_llgo_62:                                         ; preds = %_llgo_19
  %111 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %112 = load i32, ptr %111, align 4
  %113 = insertvalue { i32, i1 } undef, i32 %112, 0
  %114 = insertvalue { i32, i1 } %113, i1 true, 1
  br label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_19
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %115 = phi { i32, i1 } [ %114, %_llgo_62 ], [ zeroinitializer, %_llgo_63 ]
  %116 = extractvalue { i32, i1 } %115, 0
  %117 = extractvalue { i32, i1 } %115, 1
  br i1 %117, label %_llgo_20, label %_llgo_21

_llgo_65:                                         ; preds = %_llgo_21
  %118 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %119 = load i64, ptr %118, align 4
  %120 = insertvalue { i64, i1 } undef, i64 %119, 0
  %121 = insertvalue { i64, i1 } %120, i1 true, 1
  br label %_llgo_67

_llgo_66:                                         ; preds = %_llgo_21
  br label %_llgo_67

_llgo_67:                                         ; preds = %_llgo_66, %_llgo_65
  %122 = phi { i64, i1 } [ %121, %_llgo_65 ], [ zeroinitializer, %_llgo_66 ]
  %123 = extractvalue { i64, i1 } %122, 0
  %124 = extractvalue { i64, i1 } %122, 1
  br i1 %124, label %_llgo_22, label %_llgo_23

_llgo_68:                                         ; preds = %_llgo_23
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %126 = load i64, ptr %125, align 4
  %127 = insertvalue { i64, i1 } undef, i64 %126, 0
  %128 = insertvalue { i64, i1 } %127, i1 true, 1
  br label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_23
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %129 = phi { i64, i1 } [ %128, %_llgo_68 ], [ zeroinitializer, %_llgo_69 ]
  %130 = extractvalue { i64, i1 } %129, 0
  %131 = extractvalue { i64, i1 } %129, 1
  br i1 %131, label %_llgo_24, label %_llgo_25

_llgo_71:                                         ; preds = %_llgo_25
  %132 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %133 = load float, ptr %132, align 4
  %134 = insertvalue { float, i1 } undef, float %133, 0
  %135 = insertvalue { float, i1 } %134, i1 true, 1
  br label %_llgo_73

_llgo_72:                                         ; preds = %_llgo_25
  br label %_llgo_73

_llgo_73:                                         ; preds = %_llgo_72, %_llgo_71
  %136 = phi { float, i1 } [ %135, %_llgo_71 ], [ zeroinitializer, %_llgo_72 ]
  %137 = extractvalue { float, i1 } %136, 0
  %138 = extractvalue { float, i1 } %136, 1
  br i1 %138, label %_llgo_26, label %_llgo_27

_llgo_74:                                         ; preds = %_llgo_27
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %140 = load double, ptr %139, align 8
  %141 = insertvalue { double, i1 } undef, double %140, 0
  %142 = insertvalue { double, i1 } %141, i1 true, 1
  br label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_27
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %143 = phi { double, i1 } [ %142, %_llgo_74 ], [ zeroinitializer, %_llgo_75 ]
  %144 = extractvalue { double, i1 } %143, 0
  %145 = extractvalue { double, i1 } %143, 1
  br i1 %145, label %_llgo_28, label %_llgo_29

_llgo_77:                                         ; preds = %_llgo_29
  %146 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %147 = load { float, float }, ptr %146, align 4
  %148 = insertvalue { { float, float }, i1 } undef, { float, float } %147, 0
  %149 = insertvalue { { float, float }, i1 } %148, i1 true, 1
  br label %_llgo_79

_llgo_78:                                         ; preds = %_llgo_29
  br label %_llgo_79

_llgo_79:                                         ; preds = %_llgo_78, %_llgo_77
  %150 = phi { { float, float }, i1 } [ %149, %_llgo_77 ], [ zeroinitializer, %_llgo_78 ]
  %151 = extractvalue { { float, float }, i1 } %150, 0
  %152 = extractvalue { { float, float }, i1 } %150, 1
  br i1 %152, label %_llgo_30, label %_llgo_31

_llgo_80:                                         ; preds = %_llgo_31
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %154 = load { double, double }, ptr %153, align 8
  %155 = insertvalue { { double, double }, i1 } undef, { double, double } %154, 0
  %156 = insertvalue { { double, double }, i1 } %155, i1 true, 1
  br label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_31
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %157 = phi { { double, double }, i1 } [ %156, %_llgo_80 ], [ zeroinitializer, %_llgo_81 ]
  %158 = extractvalue { { double, double }, i1 } %157, 0
  %159 = extractvalue { { double, double }, i1 } %157, 1
  br i1 %159, label %_llgo_32, label %_llgo_33

_llgo_83:                                         ; preds = %_llgo_33
  %160 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %161 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %160, align 8
  %162 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %161, 0
  %163 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %162, i1 true, 1
  br label %_llgo_85

_llgo_84:                                         ; preds = %_llgo_33
  br label %_llgo_85

_llgo_85:                                         ; preds = %_llgo_84, %_llgo_83
  %164 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } [ %163, %_llgo_83 ], [ zeroinitializer, %_llgo_84 ]
  %165 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %164, 0
  %166 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %164, 1
  br i1 %166, label %_llgo_34, label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printbool"(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 })
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 5 })
  br label %_llgo_2
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printfloat"(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 3 })
  ret void

_llgo_2:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 })
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %2 = fadd double %0, %0
  %3 = fcmp oeq double %2, %0
  br i1 %3, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_10
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 })
  ret void

_llgo_5:                                          ; preds = %_llgo_7
  %4 = fadd double %0, %0
  %5 = fcmp oeq double %4, %0
  br i1 %5, label %_llgo_9, label %_llgo_10

_llgo_6:                                          ; preds = %_llgo_3
  %6 = fcmp ogt double %0, 0.000000e+00
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %7 = phi i1 [ false, %_llgo_3 ], [ %6, %_llgo_6 ]
  br i1 %7, label %_llgo_2, label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_10
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 14)
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 43, ptr %10, align 1
  %11 = fcmp oeq double %0, 0.000000e+00
  br i1 %11, label %_llgo_11, label %_llgo_13

_llgo_9:                                          ; preds = %_llgo_5
  %12 = fcmp olt double %0, 0.000000e+00
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_5
  %13 = phi i1 [ false, %_llgo_5 ], [ %12, %_llgo_9 ]
  br i1 %13, label %_llgo_4, label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %14 = fdiv double 1.000000e+00, %0
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %_llgo_14, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_24, %_llgo_23, %_llgo_14, %_llgo_11
  %16 = phi double [ %0, %_llgo_11 ], [ %39, %_llgo_23 ], [ %0, %_llgo_14 ], [ %42, %_llgo_24 ]
  %17 = phi i64 [ 0, %_llgo_11 ], [ %32, %_llgo_23 ], [ 0, %_llgo_14 ], [ %41, %_llgo_24 ]
  br label %_llgo_25

_llgo_13:                                         ; preds = %_llgo_8
  %18 = fcmp olt double %0, 0.000000e+00
  br i1 %18, label %_llgo_15, label %_llgo_17

_llgo_14:                                         ; preds = %_llgo_11
  %19 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 45, ptr %20, align 1
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_13
  %21 = fneg double %0
  %22 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 45, ptr %23, align 1
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %24 = add i64 %27, 1
  %25 = fdiv double %26, 1.000000e+01
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_13
  %26 = phi double [ %0, %_llgo_13 ], [ %25, %_llgo_16 ], [ %21, %_llgo_15 ]
  %27 = phi i64 [ 0, %_llgo_13 ], [ %24, %_llgo_16 ], [ 0, %_llgo_15 ]
  %28 = fcmp oge double %26, 1.000000e+01
  br i1 %28, label %_llgo_16, label %_llgo_20

_llgo_18:                                         ; preds = %_llgo_20
  %29 = sub i64 %32, 1
  %30 = fmul double %31, 1.000000e+01
  br label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_20
  br label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_18, %_llgo_17
  %31 = phi double [ %26, %_llgo_17 ], [ %30, %_llgo_18 ]
  %32 = phi i64 [ %27, %_llgo_17 ], [ %29, %_llgo_18 ]
  %33 = fcmp olt double %31, 1.000000e+00
  br i1 %33, label %_llgo_18, label %_llgo_19

_llgo_21:                                         ; preds = %_llgo_22, %_llgo_19
  %34 = phi double [ 5.000000e+00, %_llgo_19 ], [ %37, %_llgo_22 ]
  %35 = phi i64 [ 0, %_llgo_19 ], [ %38, %_llgo_22 ]
  %36 = icmp slt i64 %35, 7
  br i1 %36, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %37 = fdiv double %34, 1.000000e+01
  %38 = add i64 %35, 1
  br label %_llgo_21

_llgo_23:                                         ; preds = %_llgo_21
  %39 = fadd double %31, %34
  %40 = fcmp oge double %39, 1.000000e+01
  br i1 %40, label %_llgo_24, label %_llgo_12

_llgo_24:                                         ; preds = %_llgo_23
  %41 = add i64 %32, 1
  %42 = fdiv double %39, 1.000000e+01
  br label %_llgo_12

_llgo_25:                                         ; preds = %_llgo_26, %_llgo_12
  %43 = phi double [ %16, %_llgo_12 ], [ %57, %_llgo_26 ]
  %44 = phi i64 [ 0, %_llgo_12 ], [ %58, %_llgo_26 ]
  %45 = icmp slt i64 %44, 7
  br i1 %45, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %46 = fptosi double %43 to i64
  %47 = add i64 %44, 2
  %48 = add i64 %46, 48
  %49 = trunc i64 %48 to i8
  %50 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = icmp slt i64 %47, 0
  %52 = icmp sge i64 %47, 14
  %53 = or i1 %52, %51
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %53)
  %54 = getelementptr inbounds i8, ptr %8, i64 %47
  store i8 %49, ptr %54, align 1
  %55 = sitofp i64 %46 to double
  %56 = fsub double %43, %55
  %57 = fmul double %56, 1.000000e+01
  %58 = add i64 %44, 1
  br label %_llgo_25

_llgo_27:                                         ; preds = %_llgo_25
  %59 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = getelementptr inbounds i8, ptr %8, i64 2
  %61 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i8, ptr %60, align 1
  %63 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %62, ptr %64, align 1
  %65 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 46, ptr %66, align 1
  %67 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = getelementptr inbounds i8, ptr %8, i64 9
  store i8 101, ptr %68, align 1
  %69 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = getelementptr inbounds i8, ptr %8, i64 10
  store i8 43, ptr %70, align 1
  %71 = icmp slt i64 %17, 0
  br i1 %71, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %72 = sub i64 0, %17
  %73 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = getelementptr inbounds i8, ptr %8, i64 10
  store i8 45, ptr %74, align 1
  br label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28, %_llgo_27
  %75 = phi i64 [ %17, %_llgo_27 ], [ %72, %_llgo_28 ]
  %76 = icmp eq i64 %75, -9223372036854775808
  %77 = and i1 %76, false
  %78 = select i1 %77, i64 0, i64 %75
  %79 = select i1 %77, i64 1, i64 100
  %80 = sdiv i64 %78, %79
  %81 = select i1 %77, i64 %75, i64 %80
  %82 = trunc i64 %81 to i8
  %83 = add i8 %82, 48
  %84 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = getelementptr inbounds i8, ptr %8, i64 11
  store i8 %83, ptr %85, align 1
  %86 = icmp eq i64 %75, -9223372036854775808
  %87 = and i1 %86, false
  %88 = select i1 %87, i64 0, i64 %75
  %89 = select i1 %87, i64 1, i64 10
  %90 = sdiv i64 %88, %89
  %91 = select i1 %87, i64 %75, i64 %90
  %92 = trunc i64 %91 to i8
  %93 = urem i8 %92, 10
  %94 = add i8 %93, 48
  %95 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = getelementptr inbounds i8, ptr %8, i64 12
  store i8 %94, ptr %96, align 1
  %97 = icmp eq i64 %75, -9223372036854775808
  %98 = and i1 %97, false
  %99 = select i1 %98, i64 0, i64 %75
  %100 = select i1 %98, i64 1, i64 10
  %101 = srem i64 %99, %100
  %102 = select i1 %98, i64 0, i64 %101
  %103 = trunc i64 %102 to i8
  %104 = add i8 %103, 48
  %105 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = getelementptr inbounds i8, ptr %8, i64 13
  store i8 %104, ptr %106, align 1
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 14, 1
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i64 14, 2
  call void @"github.com/goplus/llgo/cl/_testdata/print.gwrite"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printhex"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %25, 16
  %3 = icmp sge i64 %2, 16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %3)
  %4 = getelementptr inbounds i8, ptr @28, i64 %2
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = icmp slt i64 %26, 0
  %8 = icmp sge i64 %26, 100
  %9 = or i1 %8, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds i8, ptr %1, i64 %26
  store i8 %5, ptr %10, align 1
  %11 = icmp ult i64 %25, 16
  br i1 %11, label %_llgo_5, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_3
  %12 = sub i64 %26, 1
  %13 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = icmp slt i64 %12, 0
  %15 = icmp sge i64 %12, 100
  %16 = or i1 %15, %14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %16)
  %17 = getelementptr inbounds i8, ptr %1, i64 %12
  store i8 120, ptr %17, align 1
  %18 = sub i64 %12, 1
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = icmp slt i64 %18, 0
  %21 = icmp sge i64 %18, 100
  %22 = or i1 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %22)
  %23 = getelementptr inbounds i8, ptr %1, i64 %18
  store i8 48, ptr %23, align 1
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %18, i64 100, i64 100)
  call void @"github.com/goplus/llgo/cl/_testdata/print.gwrite"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %25 = phi i64 [ %0, %_llgo_0 ], [ %28, %_llgo_4 ]
  %26 = phi i64 [ 99, %_llgo_0 ], [ %29, %_llgo_4 ]
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_1
  %28 = udiv i64 %25, 16
  %29 = sub i64 %26, 1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_1
  %30 = sub i64 100, %26
  %31 = load i64, ptr @"github.com/goplus/llgo/cl/_testdata/print.minhexdigits", align 4
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %_llgo_2, label %_llgo_4
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %0) {
_llgo_0:
  %1 = icmp slt i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 1 })
  %2 = sub i64 0, %0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = phi i64 [ %0, %_llgo_0 ], [ %2, %_llgo_1 ]
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.println"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_5 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp sge i64 %3, %6
  %9 = or i1 %8, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %5, i64 %3
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %10, align 8
  %13 = icmp ne i64 %3, 0
  br i1 %13, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/cl/_testdata/print.printnl"()
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 1 })
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  call void @"github.com/goplus/llgo/cl/_testdata/print.printany"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  br label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printnl"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 1 })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printsp"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 1 })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printstring"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testdata/print.bytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  call void @"github.com/goplus/llgo/cl/_testdata/print.gwrite"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %12, 10
  %3 = add i64 %2, 48
  %4 = trunc i64 %3 to i8
  %5 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = icmp slt i64 %13, 0
  %7 = icmp sge i64 %13, 100
  %8 = or i1 %7, %6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %8)
  %9 = getelementptr inbounds i8, ptr %1, i64 %13
  store i8 %4, ptr %9, align 1
  %10 = icmp ult i64 %12, 10
  br i1 %10, label %_llgo_2, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %13, i64 100, i64 100)
  call void @"github.com/goplus/llgo/cl/_testdata/print.gwrite"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %12 = phi i64 [ %0, %_llgo_0 ], [ %15, %_llgo_4 ]
  %13 = phi i64 [ 99, %_llgo_0 ], [ %16, %_llgo_4 ]
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %15 = udiv i64 %12, 10
  %16 = sub i64 %13, 1
  br label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testdata/print.prinusub"(i64 %0) {
_llgo_0:
  %1 = sub i64 0, %0
  call void @"github.com/goplus/llgo/cl/_testdata/print.printuint"(i64 %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/print.prinxor"(i64 %0) {
_llgo_0:
  %1 = xor i64 %0, -1
  call void @"github.com/goplus/llgo/cl/_testdata/print.printint"(i64 %1)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testdata/print.stringStructOf"(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i32 @printf(ptr, ...)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)
