; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpabi'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpabi"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/tpabi.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -44854603, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 18 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Demo", ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Demo" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info", ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info" }] }, align 8
@2 = private unnamed_addr constant [18 x i8] c"main.T[string,int]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 1550197268, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 18 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info", ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int].Info" }] }, align 8
@3 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/tpabi", align 1
@4 = private unnamed_addr constant [1 x i8] c"m", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr @"*_llgo_string" }, align 8
@5 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@6 = private unnamed_addr constant [1 x i8] c"n", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr @"*_llgo_int" }, align 8
@7 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@8 = private unnamed_addr constant [4 x i8] c"Info", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@9 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@10 = private unnamed_addr constant [4 x i8] c"Demo", align 1
@"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 362715907, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 20 }, ptr @"*_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs$imethods", i64 1, i64 1 } }, align 8
@11 = private unnamed_addr constant [20 x i8] c"interface { Demo() }", align 1
@"*_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2055694132, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 20 }, ptr null }, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" }, align 8
@"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@12 = private unnamed_addr constant [54 x i8] c"github.com/goplus/llgo/cl/_testrt/tpabi.T[string, int]", align 1

define void @"github.com/goplus/llgo/cl/_testrt/tpabi.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpabi.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr null, ptr %16, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr null, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  call void @llvm.memset(ptr %19, i8 0, i64 24, i1 false)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %19, i32 0, i32 0
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 72057594037927935
  %24 = xor i64 %23, 25399393228665167
  %25 = shl i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = lshr i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = or i64 %30, -6557241057451442176
  store i64 %31, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %31)
  call void @runtime.ClobberPointerRegs()
  %32 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %19, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i64
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = shl i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = lshr i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = or i64 %42, -6557241057451442176
  store i64 %43, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %43)
  call void @runtime.ClobberPointerRegs()
  %44 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %0, align 4
  %46 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %46, align 8
  call void @runtime.StoreHiddenPointee(i64 %45, ptr %46, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %46, align 8
  call void @runtime.TouchConservativeSlot(ptr %46, i64 16)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %2, align 4
  %49 = alloca i64, align 8
  store i64 1, ptr %49, align 4
  call void @runtime.StoreHiddenPointee(i64 %48, ptr %49, i64 8)
  store i64 0, ptr %49, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %50 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %19, align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 24)
  call void @runtime.ClobberPointerRegs()
  %52 = extractvalue %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %51, 0
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %52, ptr %53, align 8
  %54 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %53, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %55, ptr %6, align 8
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %55, 0
  %57 = ptrtoint ptr %56 to i64
  %58 = and i64 %57, 72057594037927935
  %59 = xor i64 %58, 25399393228665167
  %60 = shl i64 %59, 17
  %61 = select i1 false, i64 0, i64 %60
  %62 = lshr i64 %59, 39
  %63 = select i1 false, i64 0, i64 %62
  %64 = or i64 %61, %63
  %65 = and i64 %64, 72057594037927935
  %66 = or i64 %65, -6557241057451442176
  %67 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %55, 1
  %68 = insertvalue { i64, i64 } undef, i64 %66, 0
  %69 = insertvalue { i64, i64 } %68, i64 %67, 1
  store { i64, i64 } %69, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %53, align 8
  call void @runtime.TouchConservativeSlot(ptr %53, i64 16)
  call void @runtime.ClobberPointerRegs()
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %71 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %70)
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %74 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %73, i32 0, i32 0
  %76 = ptrtoint ptr %75 to i64
  %77 = and i64 %76, 72057594037927935
  %78 = xor i64 %77, 25399393228665167
  %79 = shl i64 %78, 17
  %80 = select i1 false, i64 0, i64 %79
  %81 = lshr i64 %78, 39
  %82 = select i1 false, i64 0, i64 %81
  %83 = or i64 %80, %82
  %84 = and i64 %83, 72057594037927935
  %85 = or i64 %84, -6557241057451442176
  store i64 %85, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %85)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %73, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i64
  %89 = and i64 %88, 72057594037927935
  %90 = xor i64 %89, 25399393228665167
  %91 = shl i64 %90, 17
  %92 = select i1 false, i64 0, i64 %91
  %93 = lshr i64 %90, 39
  %94 = select i1 false, i64 0, i64 %93
  %95 = or i64 %92, %94
  %96 = and i64 %95, 72057594037927935
  %97 = or i64 %96, -6557241057451442176
  store i64 %97, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %97)
  call void @runtime.ClobberPointerRegs()
  %98 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load i64, ptr %7, align 4
  %100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %100, align 8
  call void @runtime.StoreHiddenPointee(i64 %99, ptr %100, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %100, align 8
  call void @runtime.TouchConservativeSlot(ptr %100, i64 16)
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %101 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load i64, ptr %9, align 4
  %103 = alloca i64, align 8
  store i64 100, ptr %103, align 4
  call void @runtime.StoreHiddenPointee(i64 %102, ptr %103, i64 8)
  store i64 0, ptr %103, align 4
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]")
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %104, 0
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %105, ptr %73, 1
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %106)
  %108 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %106, 0
  %109 = getelementptr ptr, ptr %108, i64 3
  %110 = load ptr, ptr %109, align 8
  %111 = insertvalue { ptr, ptr } undef, ptr %110, 0
  %112 = insertvalue { ptr, ptr } %111, ptr %107, 1
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %114 = extractvalue { ptr, ptr } %112, 1
  %115 = extractvalue { ptr, ptr } %112, 0
  call void %115(ptr %114)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %113)
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %117 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %117)
  %118 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %119 = getelementptr inbounds i64, ptr %116, i64 %118
  %120 = ptrtoint ptr %119 to i64
  %121 = and i64 %120, 72057594037927935
  %122 = xor i64 %121, 25399393228665167
  %123 = shl i64 %122, 17
  %124 = select i1 false, i64 0, i64 %123
  %125 = lshr i64 %122, 39
  %126 = select i1 false, i64 0, i64 %125
  %127 = or i64 %124, %126
  %128 = and i64 %127, 72057594037927935
  %129 = or i64 %128, -6557241057451442176
  store i64 %129, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %129)
  call void @runtime.ClobberPointerRegs()
  %130 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %132 = getelementptr inbounds i64, ptr %116, i64 %131
  %133 = ptrtoint ptr %132 to i64
  %134 = and i64 %133, 72057594037927935
  %135 = xor i64 %134, 25399393228665167
  %136 = shl i64 %135, 17
  %137 = select i1 false, i64 0, i64 %136
  %138 = lshr i64 %135, 39
  %139 = select i1 false, i64 0, i64 %138
  %140 = or i64 %137, %139
  %141 = and i64 %140, 72057594037927935
  %142 = or i64 %141, -6557241057451442176
  store i64 %142, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %142)
  call void @runtime.ClobberPointerRegs()
  %143 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %145 = getelementptr inbounds i64, ptr %116, i64 %144
  %146 = ptrtoint ptr %145 to i64
  %147 = and i64 %146, 72057594037927935
  %148 = xor i64 %147, 25399393228665167
  %149 = shl i64 %148, 17
  %150 = select i1 false, i64 0, i64 %149
  %151 = lshr i64 %148, 39
  %152 = select i1 false, i64 0, i64 %151
  %153 = or i64 %150, %152
  %154 = and i64 %153, 72057594037927935
  %155 = or i64 %154, -6557241057451442176
  store i64 %155, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %155)
  call void @runtime.ClobberPointerRegs()
  %156 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %156)
  %157 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %158 = getelementptr inbounds i64, ptr %116, i64 %157
  %159 = ptrtoint ptr %158 to i64
  %160 = and i64 %159, 72057594037927935
  %161 = xor i64 %160, 25399393228665167
  %162 = shl i64 %161, 17
  %163 = select i1 false, i64 0, i64 %162
  %164 = lshr i64 %161, 39
  %165 = select i1 false, i64 0, i64 %164
  %166 = or i64 %163, %165
  %167 = and i64 %166, 72057594037927935
  %168 = or i64 %167, -6557241057451442176
  store i64 %168, ptr %17, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %18, i64 %168)
  call void @runtime.ClobberPointerRegs()
  %169 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = load i64, ptr %11, align 4
  %171 = alloca i64, align 8
  store i64 1, ptr %171, align 4
  call void @runtime.StoreHiddenPointee(i64 %170, ptr %171, i64 8)
  store i64 0, ptr %171, align 4
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  %172 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load i64, ptr %13, align 4
  %174 = alloca i64, align 8
  store i64 2, ptr %174, align 4
  call void @runtime.StoreHiddenPointee(i64 %173, ptr %174, i64 8)
  store i64 0, ptr %174, align 4
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  %175 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %175)
  %176 = load i64, ptr %15, align 4
  %177 = alloca i64, align 8
  store i64 3, ptr %177, align 4
  call void @runtime.StoreHiddenPointee(i64 %176, ptr %177, i64 8)
  store i64 0, ptr %177, align 4
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  %178 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load i64, ptr %17, align 4
  %180 = alloca i64, align 8
  store i64 4, ptr %180, align 4
  call void @runtime.StoreHiddenPointee(i64 %179, ptr %180, i64 8)
  store i64 0, ptr %180, align 4
  store i64 0, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  %181 = getelementptr [4 x i64], ptr %116, i64 1
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %181)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %182)
  %183 = getelementptr [4 x i64], ptr %116, i64 1
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %183)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %184)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Demo"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 0
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %21, i64 %20, i64 16)
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %21, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %21, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %23, ptr %24, align 8
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, ptr %4, align 8
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, 0
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = shl i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = lshr i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = or i64 %36, -6557241057451442176
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, 1
  %39 = insertvalue { i64, i64 } undef, i64 %37, 0
  %40 = insertvalue { i64, i64 } %39, i64 %38, 1
  store { i64, i64 } %40, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %41 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = shl i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = lshr i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = or i64 %51, -6557241057451442176
  store i64 %52, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %52)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %5, align 4
  %55 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %55, i64 %54, i64 8)
  %56 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load i64, ptr %55, align 4
  store i64 0, ptr %55, align 4
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 54 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int].Info"(%"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %4)
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int].Info"(%"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  call void @llvm.memset(ptr %7, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %7, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %22, i64 %21, i64 16)
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, ptr %25, align 8
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, ptr %4, align 8
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, 0
  %29 = ptrtoint ptr %28 to i64
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = shl i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = lshr i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = or i64 %37, -6557241057451442176
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, 1
  %40 = insertvalue { i64, i64 } undef, i64 %38, 0
  %41 = insertvalue { i64, i64 } %40, i64 %39, 1
  store { i64, i64 } %41, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %7, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i64
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = shl i64 %46, 17
  %48 = select i1 false, i64 0, i64 %47
  %49 = lshr i64 %46, 39
  %50 = select i1 false, i64 0, i64 %49
  %51 = or i64 %48, %50
  %52 = and i64 %51, 72057594037927935
  %53 = or i64 %52, -6557241057451442176
  store i64 %53, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %53)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %5, align 4
  %56 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %56, i64 %55, i64 8)
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load i64, ptr %56, align 4
  store i64 0, ptr %56, align 4
  store %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %59 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
