; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectmkfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectmkfn"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard" = global i1 false, align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_string" }, align 8
@0 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1385668625, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 24 }, ptr @"*_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU$fields", i64 2, i64 2 } }, align 8
@2 = private unnamed_addr constant [24 x i8] c"func(string, int) string", align 1
@"*_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1397580055, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 24 }, ptr null }, ptr @"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" }, align 8
@3 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1371530963, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 24 }, ptr @"*_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1546681513, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 24 }, ptr null }, ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" }, align 8
@"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$in" = weak_odr constant [2 x ptr] [ptr @_llgo_string, ptr @_llgo_int], align 8
@"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@4 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@5 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@6 = private unnamed_addr constant [3 x i8] c"any", align 1
@7 = private unnamed_addr constant [57 x i8] c"struct{$f func(string, int) string; $data unsafe.Pointer}", align 1
@8 = private unnamed_addr constant [3 x i8] c"abc", align 1
@9 = private unnamed_addr constant [6 x i8] c"abcabc", align 1
@10 = private unnamed_addr constant [5 x i8] c"error", align 1

define void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard", align 1
  call void @reflect.init()
  call void @strings.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca { i64, i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %15 = alloca { i64, i64, i64 }, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %16, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %18 = alloca %reflect.Value, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %20 = alloca { ptr, ptr }, align 8
  %21 = alloca { i64, i64 }, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  %23 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %23, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %23)
  %24 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %0, align 4
  %26 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %27 = mul i64 %26, 16
  %28 = call i64 @runtime.AdvanceHiddenPointer(i64 %25, i64 %27)
  store i64 %28, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %28)
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %29, 1
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %31)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %4, align 8
  %33 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %2, align 4
  %35 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, ptr %37, align 8
  call void @runtime.StoreHiddenPointee(i64 %34, ptr %37, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 16)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %38 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load i64, ptr %0, align 4
  %40 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %41 = mul i64 %40, 16
  %42 = call i64 @runtime.AdvanceHiddenPointer(i64 %39, i64 %41)
  store i64 %42, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %42)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 0, ptr %43, align 4
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %43, 1
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %46 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %45)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %7, align 8
  %47 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %5, align 4
  %49 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %51, align 8
  call void @runtime.StoreHiddenPointee(i64 %48, ptr %51, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %51, align 8
  call void @runtime.TouchConservativeSlot(ptr %51, i64 16)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %52 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load i64, ptr %0, align 4
  %54 = and i64 %53, 72057594037927935
  %55 = lshr i64 %54, 17
  %56 = select i1 false, i64 0, i64 %55
  %57 = shl i64 %54, 39
  %58 = select i1 false, i64 0, i64 %57
  %59 = or i64 %56, %58
  %60 = and i64 %59, 72057594037927935
  %61 = xor i64 %60, 25399393228665167
  %62 = inttoptr i64 %61 to ptr
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %62, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 2, 1
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 2, 2
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, ptr %66, align 8
  %67 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %66, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, ptr %9, align 8
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, 0
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
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, 1
  %81 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, 2
  %82 = insertvalue { i64, i64, i64 } undef, i64 %79, 0
  %83 = insertvalue { i64, i64, i64 } %82, i64 %80, 1
  %84 = insertvalue { i64, i64, i64 } %83, i64 %81, 2
  store { i64, i64, i64 } %84, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %66, align 8
  call void @runtime.TouchConservativeSlot(ptr %66, i64 24)
  call void @runtime.ClobberPointerRegs()
  %85 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %85, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %85)
  %86 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %10, align 4
  %88 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %89 = mul i64 %88, 16
  %90 = call i64 @runtime.AdvanceHiddenPointer(i64 %87, i64 %89)
  store i64 %90, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %90)
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %91, align 8
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %91, 1
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %94 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %93)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %94, ptr %14, align 8
  %95 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %12, align 4
  %97 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %14, align 8
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %98, ptr %99, align 8
  call void @runtime.StoreHiddenPointee(i64 %96, ptr %99, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %99, align 8
  call void @runtime.TouchConservativeSlot(ptr %99, i64 16)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 16)
  call void @runtime.ClobberPointerRegs()
  %100 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load i64, ptr %10, align 4
  %102 = and i64 %101, 72057594037927935
  %103 = lshr i64 %102, 17
  %104 = select i1 false, i64 0, i64 %103
  %105 = shl i64 %102, 39
  %106 = select i1 false, i64 0, i64 %105
  %107 = or i64 %104, %106
  %108 = and i64 %107, 72057594037927935
  %109 = xor i64 %108, 25399393228665167
  %110 = inttoptr i64 %109 to ptr
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %110, 0
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 1, 1
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 1, 2
  %114 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, ptr %114, align 8
  %115 = icmp eq ptr %114, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %115)
  %116 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %114, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, ptr %16, align 8
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, 0
  %118 = ptrtoint ptr %117 to i64
  %119 = and i64 %118, 72057594037927935
  %120 = xor i64 %119, 25399393228665167
  %121 = shl i64 %120, 17
  %122 = select i1 false, i64 0, i64 %121
  %123 = lshr i64 %120, 39
  %124 = select i1 false, i64 0, i64 %123
  %125 = or i64 %122, %124
  %126 = and i64 %125, 72057594037927935
  %127 = or i64 %126, -6557241057451442176
  %128 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, 1
  %129 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, 2
  %130 = insertvalue { i64, i64, i64 } undef, i64 %127, 0
  %131 = insertvalue { i64, i64, i64 } %130, i64 %128, 1
  %132 = insertvalue { i64, i64, i64 } %131, i64 %129, 2
  store { i64, i64, i64 } %132, ptr %15, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %114, align 8
  call void @runtime.TouchConservativeSlot(ptr %114, i64 24)
  call void @runtime.ClobberPointerRegs()
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %134 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  %136 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  call void @runtime.ClobberPointerRegs()
  %138 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %133)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %138, ptr %17, align 8
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %140 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %17, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  call void @runtime.ClobberPointerRegs()
  %142 = call %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %141, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %139)
  store %reflect.Value %142, ptr %18, align 8
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %144 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load %reflect.Value, ptr %18, align 8
  store %reflect.Value zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  call void @runtime.ClobberPointerRegs()
  %146 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %145)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %143)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %146, ptr %19, align 8
  %147 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %147)
  %148 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %19, align 8
  %149 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %148, 0
  %150 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU", ptr %149)
  br i1 %150, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr %151, align 8
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %151, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %152)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %148, 1
  %154 = load { ptr, ptr }, ptr %153, align 8
  store { ptr, ptr } %154, ptr %20, align 8
  %155 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load { ptr, ptr }, ptr %20, align 8
  %157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 16)
  call void @runtime.ClobberPointerRegs()
  %158 = extractvalue { ptr, ptr } %156, 1
  %159 = extractvalue { ptr, ptr } %156, 0
  %160 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %159(ptr %158, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %157)
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %160, ptr %161, align 8
  %162 = icmp eq ptr %161, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %162)
  %163 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %161, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %163, ptr %22, align 8
  %164 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %163, 0
  %165 = ptrtoint ptr %164 to i64
  %166 = and i64 %165, 72057594037927935
  %167 = xor i64 %166, 25399393228665167
  %168 = shl i64 %167, 17
  %169 = select i1 false, i64 0, i64 %168
  %170 = lshr i64 %167, 39
  %171 = select i1 false, i64 0, i64 %170
  %172 = or i64 %169, %171
  %173 = and i64 %172, 72057594037927935
  %174 = or i64 %173, -6557241057451442176
  %175 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %163, 1
  %176 = insertvalue { i64, i64 } undef, i64 %174, 0
  %177 = insertvalue { i64, i64 } %176, i64 %175, 1
  store { i64, i64 } %177, ptr %21, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %161, align 8
  call void @runtime.TouchConservativeSlot(ptr %161, i64 16)
  call void @runtime.ClobberPointerRegs()
  %178 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  %180 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %179, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 })
  %181 = xor i1 %180, true
  store { i64, i64 } zeroinitializer, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %181, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %182 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr %149, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 57 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %182)
  unreachable

_llgo_5:                                          ; No predecessors!
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %reflect.Value, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca %reflect.Value, align 8
  %9 = alloca { i64, i64 }, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca %reflect.Value, align 8
  %16 = alloca { i64, i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, ptr %18, align 8
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %18, align 8
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, 0
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, 1
  %23 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %22)
  %24 = getelementptr inbounds %reflect.Value, ptr %21, i64 %23
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %1, align 4
  %37 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %37, i64 %36, i64 24)
  %38 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %reflect.Value, ptr %37, align 8
  store %reflect.Value zeroinitializer, ptr %37, align 8
  store %reflect.Value %39, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %41 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load %reflect.Value, ptr %3, align 8
  store %reflect.Value zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  call void @runtime.ClobberPointerRegs()
  %43 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %40)
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %43, ptr %44, align 8
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %44, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, ptr %5, align 8
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, 0
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, 1
  %59 = insertvalue { i64, i64 } undef, i64 %57, 0
  %60 = insertvalue { i64, i64 } %59, i64 %58, 1
  store { i64, i64 } %60, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 16)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %18, align 8
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 0
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %65 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 %64)
  %66 = getelementptr inbounds %reflect.Value, ptr %63, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = and i64 %67, 72057594037927935
  %69 = xor i64 %68, 25399393228665167
  %70 = shl i64 %69, 17
  %71 = select i1 false, i64 0, i64 %70
  %72 = lshr i64 %69, 39
  %73 = select i1 false, i64 0, i64 %72
  %74 = or i64 %71, %73
  %75 = and i64 %74, 72057594037927935
  %76 = or i64 %75, -6557241057451442176
  store i64 %76, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %76)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load i64, ptr %6, align 4
  %79 = alloca %reflect.Value, align 8
  call void @runtime.LoadHiddenPointee(ptr %79, i64 %78, i64 24)
  %80 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load %reflect.Value, ptr %79, align 8
  store %reflect.Value zeroinitializer, ptr %79, align 8
  store %reflect.Value %81, ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %83 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load %reflect.Value, ptr %8, align 8
  store %reflect.Value zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  %85 = call i64 @reflect.Value.Int(%reflect.Value %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %82)
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %87 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  %89 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @strings.Repeat(%"github.com/goplus/llgo/runtime/internal/runtime.String" %88, i64 %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %86)
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, ptr %90, align 8
  %91 = icmp eq ptr %90, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %90, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %92, ptr %10, align 8
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %92, 0
  %94 = ptrtoint ptr %93 to i64
  %95 = and i64 %94, 72057594037927935
  %96 = xor i64 %95, 25399393228665167
  %97 = shl i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = lshr i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = or i64 %102, -6557241057451442176
  %104 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %92, 1
  %105 = insertvalue { i64, i64 } undef, i64 %103, 0
  %106 = insertvalue { i64, i64 } %105, i64 %104, 1
  store { i64, i64 } %106, ptr %9, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %90, align 8
  call void @runtime.TouchConservativeSlot(ptr %90, i64 16)
  call void @runtime.ClobberPointerRegs()
  %107 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %107, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %107)
  %108 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load i64, ptr %11, align 4
  %110 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %111 = mul i64 %110, 24
  %112 = call i64 @runtime.AdvanceHiddenPointer(i64 %109, i64 %111)
  store i64 %112, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %112)
  %113 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %10, align 8
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, ptr %115, align 8
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %115, 1
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { i64, i64 } zeroinitializer, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  %118 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %116)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %117)
  store %reflect.Value %118, ptr %15, align 8
  %119 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load i64, ptr %13, align 4
  %121 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load %reflect.Value, ptr %15, align 8
  %123 = alloca %reflect.Value, align 8
  store %reflect.Value %122, ptr %123, align 8
  call void @runtime.StoreHiddenPointee(i64 %120, ptr %123, i64 24)
  store %reflect.Value zeroinitializer, ptr %123, align 8
  call void @runtime.TouchConservativeSlot(ptr %123, i64 24)
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store %reflect.Value zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  %124 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load i64, ptr %11, align 4
  %126 = and i64 %125, 72057594037927935
  %127 = lshr i64 %126, 17
  %128 = select i1 false, i64 0, i64 %127
  %129 = shl i64 %126, 39
  %130 = select i1 false, i64 0, i64 %129
  %131 = or i64 %128, %130
  %132 = and i64 %131, 72057594037927935
  %133 = xor i64 %132, 25399393228665167
  %134 = inttoptr i64 %133 to ptr
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %134, 0
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, i64 1, 1
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %136, i64 1, 2
  %138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, ptr %138, align 8
  %139 = icmp eq ptr %138, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %139)
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %138, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, ptr %17, align 8
  %141 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 0
  %142 = ptrtoint ptr %141 to i64
  %143 = and i64 %142, 72057594037927935
  %144 = xor i64 %143, 25399393228665167
  %145 = shl i64 %144, 17
  %146 = select i1 false, i64 0, i64 %145
  %147 = lshr i64 %144, 39
  %148 = select i1 false, i64 0, i64 %147
  %149 = or i64 %146, %148
  %150 = and i64 %149, 72057594037927935
  %151 = or i64 %150, -6557241057451442176
  %152 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 1
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 2
  %154 = insertvalue { i64, i64, i64 } undef, i64 %151, 0
  %155 = insertvalue { i64, i64, i64 } %154, i64 %152, 1
  %156 = insertvalue { i64, i64, i64 } %155, i64 %153, 2
  store { i64, i64, i64 } %156, ptr %16, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %138, align 8
  call void @runtime.TouchConservativeSlot(ptr %138, i64 24)
  call void @runtime.ClobberPointerRegs()
  %157 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %157)
  %158 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %17, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %158
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @reflect.init()

declare void @strings.init()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface", { ptr, ptr })

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1")
  %3 = tail call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value)

declare i64 @reflect.Value.Int(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @strings.Repeat(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
