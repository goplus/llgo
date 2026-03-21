; ModuleID = 'github.com/goplus/llgo/cl/_testgo/strucintf'
source_filename = "github.com/goplus/llgo/cl/_testgo/strucintf"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1455090933, i8 8, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, ptr @"*github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, align 8
@0 = private unnamed_addr constant [16 x i8] c"struct { v int }", align 1
@"*github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1267158908, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" }, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/strucintf", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [11 x i8] c"Foo: not ok", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 588020711, i8 8, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr @"*_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk$fields", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [16 x i8] c"struct { V int }", align 1
@"*_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2112228924, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr null }, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" }, align 8
@6 = private unnamed_addr constant [1 x i8] c"V", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [11 x i8] c"Bar: not ok", align 1
@8 = private unnamed_addr constant [9 x i8] c"F: not ok", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testgo/strucintf.Foo"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds { i64 }, ptr %2, i32 0, i32 0
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 72057594037927935
  %7 = xor i64 %6, 25399393228665167
  %8 = shl i64 %7, 17
  %9 = select i1 false, i64 0, i64 %8
  %10 = lshr i64 %7, 39
  %11 = select i1 false, i64 0, i64 %10
  %12 = or i64 %9, %11
  %13 = and i64 %12, 72057594037927935
  %14 = or i64 %13, -6557241057451442176
  store i64 %14, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %14)
  call void @runtime.ClobberPointerRegs()
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load i64, ptr %0, align 4
  %17 = alloca i64, align 8
  store i64 1, ptr %17, align 4
  call void @runtime.StoreHiddenPointee(i64 %16, ptr %17, i64 8)
  store i64 0, ptr %17, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load { i64 }, ptr %2, align 4
  store { i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", ptr %21, ptr %2)
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", ptr undef }, ptr %21, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22
}

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %10 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testgo/strucintf.Foo"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %0, align 8
  %11 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %11, i8 0, i64 8, i1 false)
  %12 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, 0
  %15 = icmp eq ptr %14, @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88"
  br i1 %15, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %16 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = getelementptr inbounds { i64 }, ptr %11, i32 0, i32 0
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = shl i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = lshr i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = or i64 %26, -6557241057451442176
  store i64 %27, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %27)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %1, align 4
  %30 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %30, i64 %29, i64 8)
  %31 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %30, align 4
  store i64 0, ptr %30, align 4
  store { i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.Bar"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %34)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %3, align 8
  %36 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %36, i8 0, i64 8, i1 false)
  %37 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %3, align 8
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, 0
  %40 = icmp eq ptr %39, @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk"
  br i1 %40, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %41)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
  %42 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds { i64 }, ptr %36, i32 0, i32 0
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
  store i64 %53, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %53)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %4, align 4
  %56 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %56, i64 %55, i64 8)
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load i64, ptr %56, align 4
  store i64 0, ptr %56, align 4
  store { i64 } zeroinitializer, ptr %36, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %59)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %60 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %60, i8 0, i64 8, i1 false)
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %62 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.F"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %61)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62, ptr %6, align 8
  %63 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %6, align 8
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, 0
  %66 = icmp eq ptr %65, @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88"
  br i1 %66, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %67)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
  %68 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = getelementptr inbounds { i64 }, ptr %60, i32 0, i32 0
  %70 = ptrtoint ptr %69 to i64
  %71 = and i64 %70, 72057594037927935
  %72 = xor i64 %71, 25399393228665167
  %73 = shl i64 %72, 17
  %74 = select i1 false, i64 0, i64 %73
  %75 = lshr i64 %72, 39
  %76 = select i1 false, i64 0, i64 %75
  %77 = or i64 %74, %76
  %78 = and i64 %77, 72057594037927935
  %79 = or i64 %78, -6557241057451442176
  store i64 %79, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %79)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i64, ptr %7, align 4
  %82 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %82, i64 %81, i64 8)
  %83 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %82, align 4
  store i64 0, ptr %82, align 4
  store { i64 } zeroinitializer, ptr %60, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %85)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret void

_llgo_9:                                          ; preds = %_llgo_18
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %86)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
  %87 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, 1
  %88 = load { i64 }, ptr %87, align 4
  %89 = insertvalue { { i64 }, i1 } undef, { i64 } %88, 0
  %90 = insertvalue { { i64 }, i1 } %89, i1 true, 1
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %91 = phi { { i64 }, i1 } [ %90, %_llgo_10 ], [ zeroinitializer, %_llgo_11 ]
  %92 = extractvalue { { i64 }, i1 } %91, 0
  store { i64 } %92, ptr %11, align 4
  %93 = extractvalue { { i64 }, i1 } %91, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %93, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, 1
  %95 = load { i64 }, ptr %94, align 4
  %96 = insertvalue { { i64 }, i1 } undef, { i64 } %95, 0
  %97 = insertvalue { { i64 }, i1 } %96, i1 true, 1
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %98 = phi { { i64 }, i1 } [ %97, %_llgo_13 ], [ zeroinitializer, %_llgo_14 ]
  %99 = extractvalue { { i64 }, i1 } %98, 0
  store { i64 } %99, ptr %36, align 4
  %100 = extractvalue { { i64 }, i1 } %98, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %100, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, 1
  %102 = load { i64 }, ptr %101, align 4
  %103 = insertvalue { { i64 }, i1 } undef, { i64 } %102, 0
  %104 = insertvalue { { i64 }, i1 } %103, i1 true, 1
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %105 = phi { { i64 }, i1 } [ %104, %_llgo_16 ], [ zeroinitializer, %_llgo_17 ]
  %106 = extractvalue { { i64 }, i1 } %105, 0
  store { i64 } %106, ptr %60, align 4
  %107 = extractvalue { { i64 }, i1 } %105, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %107, label %_llgo_7, label %_llgo_9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.Bar"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.F"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
