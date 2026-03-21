; ModuleID = 'github.com/goplus/llgo/cl/_testrt/clear'
source_filename = "github.com/goplus/llgo/cl/_testrt/clear"

%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testrt/clear.init$guard" = global i1 false, align 1
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@0 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"map[_llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1234063919, i8 0, i8 8, i8 8, i8 53, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 }, ptr @"*map[_llgo_int]_llgo_int" }, ptr @_llgo_int, ptr @_llgo_int, ptr @"github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg", { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehash", ptr @_llgo_int }, i8 8, i8 8, i16 144, i32 4 }, align 8
@2 = private unnamed_addr constant [11 x i8] c"map[int]int", align 1
@"*map[_llgo_int]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2028436283, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 }, ptr null }, ptr @"map[_llgo_int]_llgo_int" }, align 8
@"github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 144, i64 0, i32 -367355950, i8 8, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 72 }, ptr @"*github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg$fields", i64 4, i64 4 } }, align 8
@3 = private unnamed_addr constant [72 x i8] c"struct { topbits [8]uint8; keys [8]int; elems [8]int; overflow uintptr }", align 1
@"*github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1927080035, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 72 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg" }, align 8
@4 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_uint8" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@5 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@6 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@7 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@8 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 64, i64 0, i32 -1310855284, i8 8, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"[8]_llgo_int" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*[8]_llgo_int" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 8 }, align 8
@9 = private unnamed_addr constant [6 x i8] c"[8]int", align 1
@"*[8]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1841254256, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @"[8]_llgo_int" }, align 8
@10 = private unnamed_addr constant [5 x i8] c"elems", align 1
@11 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 12, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@12 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"github.com/goplus/llgo/cl/_testrt/clear.struct$RSTTp_pTKglBmcdy0CMmgLp9HSGRvgD8UwNIoMFFyOg$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"[8]_llgo_int", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"[8]_llgo_int", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 8 }, ptr @_llgo_uintptr, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

define void @"github.com/goplus/llgo/cl/_testrt/clear.Clear"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca { i64, i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  %12 = alloca ptr, align 8
  %13 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %13, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %13)
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load i64, ptr %0, align 4
  %16 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %17 = mul i64 %16, 8
  %18 = call i64 @runtime.AdvanceHiddenPointer(i64 %15, i64 %17)
  store i64 %18, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %18)
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %2, align 4
  %21 = alloca i64, align 8
  store i64 1, ptr %21, align 4
  call void @runtime.StoreHiddenPointee(i64 %20, ptr %21, i64 8)
  store i64 0, ptr %21, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %0, align 4
  %24 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %25 = mul i64 %24, 8
  %26 = call i64 @runtime.AdvanceHiddenPointer(i64 %23, i64 %25)
  store i64 %26, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %26)
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %4, align 4
  %29 = alloca i64, align 8
  store i64 2, ptr %29, align 4
  call void @runtime.StoreHiddenPointee(i64 %28, ptr %29, i64 8)
  store i64 0, ptr %29, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %30 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load i64, ptr %0, align 4
  %32 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %33 = mul i64 %32, 8
  %34 = call i64 @runtime.AdvanceHiddenPointer(i64 %31, i64 %33)
  store i64 %34, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %34)
  %35 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %6, align 4
  %37 = alloca i64, align 8
  store i64 3, ptr %37, align 4
  call void @runtime.StoreHiddenPointee(i64 %36, ptr %37, i64 8)
  store i64 0, ptr %37, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load i64, ptr %0, align 4
  %40 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %41 = mul i64 %40, 8
  %42 = call i64 @runtime.AdvanceHiddenPointer(i64 %39, i64 %41)
  store i64 %42, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %42)
  %43 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %8, align 4
  %45 = alloca i64, align 8
  store i64 4, ptr %45, align 4
  call void @runtime.StoreHiddenPointee(i64 %44, ptr %45, i64 8)
  store i64 0, ptr %45, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %46 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %0, align 4
  %48 = and i64 %47, 72057594037927935
  %49 = lshr i64 %48, 17
  %50 = select i1 false, i64 0, i64 %49
  %51 = shl i64 %48, 39
  %52 = select i1 false, i64 0, i64 %51
  %53 = or i64 %50, %52
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = inttoptr i64 %55 to ptr
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %56, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 4, 1
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 4, 2
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, ptr %60, align 8
  %61 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %60, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, ptr %11, align 8
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 0
  %64 = ptrtoint ptr %63 to i64
  %65 = and i64 %64, 72057594037927935
  %66 = xor i64 %65, 25399393228665167
  %67 = shl i64 %66, 17
  %68 = select i1 false, i64 0, i64 %67
  %69 = lshr i64 %66, 39
  %70 = select i1 false, i64 0, i64 %69
  %71 = or i64 %68, %70
  %72 = and i64 %71, 72057594037927935
  %73 = or i64 %72, -6557241057451442176
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %75 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 2
  %76 = insertvalue { i64, i64, i64 } undef, i64 %73, 0
  %77 = insertvalue { i64, i64, i64 } %76, i64 %74, 1
  %78 = insertvalue { i64, i64, i64 } %77, i64 %75, 2
  store { i64, i64, i64 } %78, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %60, align 8
  call void @runtime.TouchConservativeSlot(ptr %60, i64 24)
  call void @runtime.ClobberPointerRegs()
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %80 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceClear"(ptr @"[]_llgo_int", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %79)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %83 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %82)
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_int]_llgo_int", i64 4)
  store ptr %85, ptr %12, align 8
  %86 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load ptr, ptr %12, align 8
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %88, align 4
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %87, ptr %88)
  store i64 1, ptr %89, align 4
  call void @llvm.memset(ptr %88, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %88, i64 8)
  %90 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load ptr, ptr %12, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %92, align 4
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %91, ptr %92)
  store i64 2, ptr %93, align 4
  call void @llvm.memset(ptr %92, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %92, i64 8)
  %94 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load ptr, ptr %12, align 8
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %96, align 4
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %95, ptr %96)
  store i64 3, ptr %97, align 4
  call void @llvm.memset(ptr %96, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %96, i64 8)
  %98 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load ptr, ptr %12, align 8
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 4, ptr %100, align 4
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_int]_llgo_int", ptr %99, ptr %100)
  store i64 4, ptr %101, align 4
  call void @llvm.memset(ptr %100, i8 0, i64 8, i1 false)
  call void @runtime.TouchConservativeSlot(ptr %100, i64 8)
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %103 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load ptr, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapClear"(ptr @"map[_llgo_int]_llgo_int", ptr %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %102)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %106 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %12, align 8
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %107)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %105)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/clear.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/clear.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/clear.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceClear"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapClear"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
