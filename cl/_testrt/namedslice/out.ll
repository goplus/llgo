; ModuleID = 'github.com/goplus/llgo/cl/_testrt/namedslice'
source_filename = "github.com/goplus/llgo/cl/_testrt/namedslice"

%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.SliceType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -429486748, i8 5, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" }, ptr @_llgo_uint8 }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@0 = private unnamed_addr constant [12 x i8] c"main.MyBytes", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1016845880, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@1 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@2 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/namedslice", align 1
@3 = private unnamed_addr constant [9 x i8] c"bad slice", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr @"*_llgo_string" }, align 8
@4 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define void @"github.com/goplus/llgo/cl/_testrt/namedslice.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/namedslice.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/namedslice.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { i64, i64, i64 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %5 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 }, align 8
  %6 = call i64 @runtime.AllocZHidden(i64 0)
  store i64 %6, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %6)
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load i64, ptr %0, align 4
  %9 = and i64 %8, 72057594037927935
  %10 = lshr i64 %9, 17
  %11 = select i1 false, i64 0, i64 %10
  %12 = shl i64 %9, 39
  %13 = select i1 false, i64 0, i64 %12
  %14 = or i64 %11, %13
  %15 = and i64 %14, 72057594037927935
  %16 = xor i64 %15, 25399393228665167
  %17 = inttoptr i64 %16 to ptr
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 0, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 0, 2
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, ptr %21, align 8
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %21, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %3, align 8
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 0
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
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 1
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, 2
  %37 = insertvalue { i64, i64, i64 } undef, i64 %34, 0
  %38 = insertvalue { i64, i64, i64 } %37, i64 %35, 1
  %39 = insertvalue { i64, i64, i64 } %38, i64 %36, 2
  store { i64, i64, i64 } %39, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 24)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes", ptr undef }, ptr %42, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %4, align 8
  %44 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %4, align 8
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, 0
  %47 = icmp eq ptr %46, @"_llgo_github.com/goplus/llgo/cl/_testrt/namedslice.MyBytes"
  br i1 %47, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %48, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, 1
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %50, align 8
  %52 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, 0
  %53 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %52, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %54 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } [ %53, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %54, ptr %5, align 8
  %55 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 }, ptr %5, align 8
  %57 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %56, 0
  %58 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 }, ptr %5, align 8
  %60 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } %59, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 32)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 32)
  call void @runtime.ClobberPointerRegs()
  br i1 %60, label %_llgo_2, label %_llgo_1

_llgo_6:                                          ; No predecessors!
  unreachable
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
