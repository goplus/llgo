; ModuleID = 'github.com/goplus/llgo/cl/_testgo/closureall'
source_filename = "github.com/goplus/llgo/cl/_testgo/closureall"

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
%"github.com/goplus/llgo/cl/_testgo/closureall.S" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/closureall.Fn" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/closureall.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/closureall.S", align 1
@1 = private unnamed_addr constant [3 x i8] c"Inc", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -744503389, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc" }] }, align 8
@2 = private unnamed_addr constant [6 x i8] c"main.S", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 147929472, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc" }] }, align 8
@3 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testgo/closureall", align 1
@4 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr @"*_llgo_int" }, align 8
@5 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@6 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@7 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc"(%"github.com/goplus/llgo/cl/_testgo/closureall.S" %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.S" %0, ptr %4, align 4
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %4, i32 0, i32 0
  %7 = ptrtoint ptr %6 to i64
  %8 = and i64 %7, 72057594037927935
  %9 = xor i64 %8, 25399393228665167
  %10 = shl i64 %9, 17
  %11 = select i1 false, i64 0, i64 %10
  %12 = lshr i64 %9, 39
  %13 = select i1 false, i64 0, i64 %12
  %14 = or i64 %11, %13
  %15 = and i64 %14, 72057594037927935
  %16 = or i64 %15, -6557241057451442176
  store i64 %16, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %16)
  call void @runtime.ClobberPointerRegs()
  %17 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %2, align 4
  %19 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %19, i64 %18, i64 8)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %19, align 4
  store i64 0, ptr %19, align 4
  store %"github.com/goplus/llgo/cl/_testgo/closureall.S" zeroinitializer, ptr %4, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = add i64 %21, %1
  ret i64 %22
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @runtime.ClobberPointerRegs()
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %6, i32 0, i32 0
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
  store i64 %18, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %2, align 4
  %21 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %21, i64 %20, i64 8)
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %21, align 4
  store i64 0, ptr %21, align 4
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = add i64 %23, %1
  ret i64 %24
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @runtime.ClobberPointerRegs()
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %9 = ptrtoint ptr %6 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %18)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %2, align 4
  %21 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  call void @runtime.LoadHiddenPointee(ptr %21, i64 %20, i64 8)
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %21, align 4
  store %"github.com/goplus/llgo/cl/_testgo/closureall.S" zeroinitializer, ptr %21, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc")
  %25 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc"(%"github.com/goplus/llgo/cl/_testgo/closureall.S" %23, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret i64 %25

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i32 @"github.com/goplus/llgo/cl/_testgo/closureall.callCallback"(ptr %0, i32 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %3 = call i32 %0(i32 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret i32 %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.globalAdd"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", align 8
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { ptr, ptr }, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = alloca ptr, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %10 = call %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %10, ptr %0, align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %12 = call %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree"(i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %11)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %12, ptr %1, align 8
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", ptr %0, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  %16 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %14, 1
  %17 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %14, 0
  %18 = call i64 %17(ptr %16, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %15)
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", ptr %1, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %20, 1
  %23 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %20, 0
  %24 = call i64 %23(ptr %22, i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %26 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.globalAdd"(i64 1, i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %27 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %27, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %27)
  %28 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %2, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %38, i32 0, i32 0
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = shl i64 %43, 17
  %45 = select i1 false, i64 0, i64 %44
  %46 = lshr i64 %43, 39
  %47 = select i1 false, i64 0, i64 %46
  %48 = or i64 %45, %47
  %49 = and i64 %48, 72057594037927935
  %50 = or i64 %49, -6557241057451442176
  store i64 %50, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %50)
  call void @runtime.ClobberPointerRegs()
  %51 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load i64, ptr %4, align 4
  %53 = alloca i64, align 8
  store i64 5, ptr %53, align 4
  call void @runtime.StoreHiddenPointee(i64 %52, ptr %53, i64 8)
  store i64 0, ptr %53, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %2, align 4
  %56 = and i64 %55, 72057594037927935
  %57 = lshr i64 %56, 17
  %58 = select i1 false, i64 0, i64 %57
  %59 = shl i64 %56, 39
  %60 = select i1 false, i64 0, i64 %59
  %61 = or i64 %58, %60
  %62 = and i64 %61, 72057594037927935
  %63 = xor i64 %62, 25399393228665167
  %64 = inttoptr i64 %63 to ptr
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %66 = getelementptr inbounds { ptr }, ptr %65, i32 0, i32 0
  store ptr %64, ptr %66, align 8
  %67 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$bound", ptr undef }, ptr %65, 1
  store { ptr, ptr } %67, ptr %6, align 8
  %68 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load { ptr, ptr }, ptr %6, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %71 = extractvalue { ptr, ptr } %69, 1
  %72 = extractvalue { ptr, ptr } %69, 0
  %73 = call i64 %72(ptr %71, i64 7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %70)
  %74 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %2, align 4
  %76 = and i64 %75, 72057594037927935
  %77 = lshr i64 %76, 17
  %78 = select i1 false, i64 0, i64 %77
  %79 = shl i64 %76, 39
  %80 = select i1 false, i64 0, i64 %79
  %81 = or i64 %78, %80
  %82 = and i64 %81, 72057594037927935
  %83 = xor i64 %82, 25399393228665167
  %84 = inttoptr i64 %83 to ptr
  %85 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$thunk"(ptr %84, i64 8)
  %86 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %2, align 4
  %88 = and i64 %87, 72057594037927935
  %89 = lshr i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = shl i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = xor i64 %94, 25399393228665167
  %96 = inttoptr i64 %95 to ptr
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S")
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %97, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %98, ptr %96, 1
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %99)
  %101 = icmp ne ptr %100, null
  br i1 %101, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %103 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %102, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, ptr %103, align 8
  %104 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.interface{Add(int) int}.Add$bound", ptr undef }, ptr %102, 1
  store { ptr, ptr } %104, ptr %7, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %105 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = load { ptr, ptr }, ptr %7, align 8
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %108 = extractvalue { ptr, ptr } %106, 1
  %109 = extractvalue { ptr, ptr } %106, 0
  %110 = call i64 %109(ptr %108, i64 9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %107)
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %112 = call double @sqrt(double 4.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %111)
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %114 = call i32 @abs(i32 -3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %113)
  store ptr @"github.com/goplus/llgo/cl/_testgo/closureall.main$1", ptr %8, align 8
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %116 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load ptr, ptr %8, align 8
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %118 = call i32 @"github.com/goplus/llgo/cl/_testgo/closureall.callCallback"(ptr %117, i32 7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %115)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %119 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 26 }, ptr %100, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 26 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %119)
  unreachable

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i32 @"github.com/goplus/llgo/cl/_testgo/closureall.main$1"(i32 %0) {
_llgo_0:
  %1 = add i32 %0, 1
  ret i32 %1
}

define %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", align 8
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1", ptr null }, ptr %0, align 8
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", ptr %0, align 8
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1"(i64 %0) {
_llgo_0:
  %1 = add i64 %0, 1
  ret i64 %1
}

define %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree"(i64 %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { ptr, ptr }, align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", align 8
  %5 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %5, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %5)
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load i64, ptr %1, align 4
  %8 = alloca i64, align 8
  store i64 %0, ptr %8, align 4
  call void @runtime.StoreHiddenPointee(i64 %7, ptr %8, i64 8)
  store i64 0, ptr %8, align 4
  %9 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load i64, ptr %1, align 4
  %11 = and i64 %10, 72057594037927935
  %12 = lshr i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = shl i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = xor i64 %17, 25399393228665167
  %19 = inttoptr i64 %18 to ptr
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %21 = getelementptr inbounds { ptr }, ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree$1", ptr undef }, ptr %20, 1
  store { ptr, ptr } %22, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load { ptr, ptr }, ptr %3, align 8
  %25 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", align 8
  store { ptr, ptr } %24, ptr %25, align 8
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", ptr %25, align 8
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %27, ptr %4, align 8
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %29
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %4, align 4
  %7 = add i64 %1, %6
  ret i64 %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @unsafe.init()

declare void @"github.com/goplus/lib/c.init"()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$bound"(ptr %0, i64 %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %4, i64 %1)
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$thunk"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @runtime.ClobberPointerRegs()
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %4, i64 %1)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %5
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.interface{Add(int) int}.Add$bound"(ptr %0, i64 %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %4 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 0
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11, i64 %1)
  ret i64 %13
}

declare double @sqrt(double)

declare i32 @abs(i32)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1")
  %3 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
