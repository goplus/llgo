; ModuleID = 'github.com/goplus/llgo/cl/_testrt/typed'
source_filename = "github.com/goplus/llgo/cl/_testrt/typed"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/typed.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 2060475939, i8 5, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/typed.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/typed.T" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1929458979, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T" }, align 8
@2 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/typed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_string" }, align 8
@3 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -516701993, i8 13, i8 8, i8 8, i8 17, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/typed.A" }, ptr @_llgo_int, ptr @"[]_llgo_int", i64 2 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@4 = private unnamed_addr constant [6 x i8] c"main.A", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/typed.A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1349224428, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr @"*_llgo_int" }, align 8
@5 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -1129561019, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr @"*[]_llgo_int" }, ptr @_llgo_int }, align 8
@6 = private unnamed_addr constant [5 x i8] c"[]int", align 1
@"*[]_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1428175521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr null }, ptr @"[]_llgo_int" }, align 8

define void @"github.com/goplus/llgo/cl/_testrt/typed.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/typed.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/typed.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/typed.main"() {
_llgo_0:
  %0 = alloca { i64, i64 }, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1, align 8
  %2 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T", ptr undef }, ptr %14, 1
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %16, align 8
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %16, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, ptr %1, align 8
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, 0
  %20 = ptrtoint ptr %19 to i64
  %21 = and i64 %20, 72057594037927935
  %22 = xor i64 %21, 25399393228665167
  %23 = shl i64 %22, 17
  %24 = select i1 false, i64 0, i64 %23
  %25 = lshr i64 %22, 39
  %26 = select i1 false, i64 0, i64 %25
  %27 = or i64 %24, %26
  %28 = and i64 %27, 72057594037927935
  %29 = or i64 %28, -6557241057451442176
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, 1
  %31 = insertvalue { i64, i64 } undef, i64 %29, 0
  %32 = insertvalue { i64, i64 } %31, i64 %30, 1
  store { i64, i64 } %32, ptr %0, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  call void @runtime.ClobberPointerRegs()
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %34 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  store { i64, i64 } zeroinitializer, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, 0
  %37 = icmp eq ptr %36, @_llgo_string
  br i1 %37, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, 1
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %38, align 8
  %40 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %39, 0
  %41 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %40, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %42 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } [ %41, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %42, ptr %2, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %44 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }, ptr %2, align 8
  %46 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %45, 0
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, ptr %47, align 8
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %47, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, ptr %4, align 8
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, 0
  %51 = ptrtoint ptr %50 to i64
  %52 = and i64 %51, 72057594037927935
  %53 = xor i64 %52, 25399393228665167
  %54 = shl i64 %53, 17
  %55 = select i1 false, i64 0, i64 %54
  %56 = lshr i64 %53, 39
  %57 = select i1 false, i64 0, i64 %56
  %58 = or i64 %55, %57
  %59 = and i64 %58, 72057594037927935
  %60 = or i64 %59, -6557241057451442176
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, 1
  %62 = insertvalue { i64, i64 } undef, i64 %60, 0
  %63 = insertvalue { i64, i64 } %62, i64 %61, 1
  store { i64, i64 } %63, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 16)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %66 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }, ptr %2, align 8
  %68 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %67, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %43)
  %69 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %69, i8 0, i64 16, i1 false)
  %70 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %72 = getelementptr inbounds i64, ptr %69, i64 %71
  %73 = ptrtoint ptr %72 to i64
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = shl i64 %75, 17
  %77 = select i1 false, i64 0, i64 %76
  %78 = lshr i64 %75, 39
  %79 = select i1 false, i64 0, i64 %78
  %80 = or i64 %77, %79
  %81 = and i64 %80, 72057594037927935
  %82 = or i64 %81, -6557241057451442176
  store i64 %82, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %82)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %85 = getelementptr inbounds i64, ptr %69, i64 %84
  %86 = ptrtoint ptr %85 to i64
  %87 = and i64 %86, 72057594037927935
  %88 = xor i64 %87, 25399393228665167
  %89 = shl i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = lshr i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = or i64 %94, -6557241057451442176
  store i64 %95, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %95)
  call void @runtime.ClobberPointerRegs()
  %96 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load i64, ptr %5, align 4
  %98 = alloca i64, align 8
  store i64 1, ptr %98, align 4
  call void @runtime.StoreHiddenPointee(i64 %97, ptr %98, i64 8)
  store i64 0, ptr %98, align 4
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %99 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = load i64, ptr %7, align 4
  %101 = alloca i64, align 8
  store i64 2, ptr %101, align 4
  call void @runtime.StoreHiddenPointee(i64 %100, ptr %101, i64 8)
  store i64 0, ptr %101, align 4
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %102 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = load [2 x i64], ptr %69, align 4
  store [2 x i64] zeroinitializer, ptr %69, align 4
  call void @runtime.ClobberPointerRegs()
  %104 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A", ptr %105, ptr %69)
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A", ptr undef }, ptr %105, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %106, ptr %9, align 8
  %107 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %107, i8 0, i64 16, i1 false)
  %108 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %9, align 8
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %109, 0
  %111 = icmp eq ptr %110, @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A"
  br i1 %111, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %112 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %109, 1
  %113 = load [2 x i64], ptr %112, align 4
  %114 = insertvalue { [2 x i64], i1 } undef, [2 x i64] %113, 0
  %115 = insertvalue { [2 x i64], i1 } %114, i1 true, 1
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %116 = phi { [2 x i64], i1 } [ %115, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %117 = extractvalue { [2 x i64], i1 } %116, 0
  store [2 x i64] %117, ptr %107, align 4
  %118 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %120 = getelementptr inbounds i64, ptr %107, i64 %119
  %121 = ptrtoint ptr %120 to i64
  %122 = and i64 %121, 72057594037927935
  %123 = xor i64 %122, 25399393228665167
  %124 = shl i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = lshr i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = or i64 %129, -6557241057451442176
  store i64 %130, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %130)
  call void @runtime.ClobberPointerRegs()
  %131 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load i64, ptr %10, align 4
  %133 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %133, i64 %132, i64 8)
  %134 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %133, align 4
  store i64 0, ptr %133, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %136 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %138 = getelementptr inbounds i64, ptr %107, i64 %137
  %139 = ptrtoint ptr %138 to i64
  %140 = and i64 %139, 72057594037927935
  %141 = xor i64 %140, 25399393228665167
  %142 = shl i64 %141, 17
  %143 = select i1 false, i64 0, i64 %142
  %144 = lshr i64 %141, 39
  %145 = select i1 false, i64 0, i64 %144
  %146 = or i64 %143, %145
  %147 = and i64 %146, 72057594037927935
  %148 = or i64 %147, -6557241057451442176
  store i64 %148, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %148)
  call void @runtime.ClobberPointerRegs()
  %149 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %149)
  %150 = load i64, ptr %12, align 4
  %151 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %151, i64 %150, i64 8)
  %152 = icmp eq ptr %151, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %152)
  %153 = load i64, ptr %151, align 4
  store i64 0, ptr %151, align 4
  store [2 x i64] zeroinitializer, ptr %107, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %155 = extractvalue { [2 x i64], i1 } %116, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %153)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %154)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
