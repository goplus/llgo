; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tprecur'
source_filename = "github.com/goplus/llgo/cl/_testgo/tprecur"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/tprecur.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define void @"github.com/goplus/llgo/cl/_testgo/tprecur.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tprecur.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tprecur.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecur.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/tprecur.recursive"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecur.recursive"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur1[github.com/goplus/llgo/cl/_testgo/tprecur.T.0.1]"(i64 5)
  %1 = icmp ne i64 %0, 110
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %2, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void

_llgo_3:                                          ; No predecessors!
  unreachable
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur1[github.com/goplus/llgo/cl/_testgo/tprecur.T.0.1]"(i64 %0) {
_llgo_0:
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  ret i64 1

_llgo_2:                                          ; preds = %_llgo_3
  %2 = sub i64 %0, 1
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur2[github.com/goplus/llgo/cl/_testgo/tprecur.T.0.1]"(i64 %2)
  %4 = mul i64 %0, %3
  ret i64 %4

_llgo_3:                                          ; preds = %_llgo_0
  %5 = icmp eq i64 %0, 1
  br i1 %5, label %_llgo_1, label %_llgo_2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur2[github.com/goplus/llgo/cl/_testgo/tprecur.T.0.1]"(i64 %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 8)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi i64 [ -1, %_llgo_0 ], [ %8, %_llgo_2 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %6
  br i1 %9, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %10 = add i64 %8, 1
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %13 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %8, i64 %12)
  %14 = getelementptr inbounds i64, ptr %11, i64 %13
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = shl i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = lshr i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = or i64 %23, -6557241057451442176
  store i64 %24, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %1, align 4
  %27 = alloca i64, align 8
  store i64 %10, ptr %27, align 4
  call void @runtime.StoreHiddenPointee(i64 %26, ptr %27, i64 8)
  store i64 0, ptr %27, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %29 = phi i64 [ 0, %_llgo_3 ], [ %52, %_llgo_5 ]
  %30 = phi i64 [ -1, %_llgo_3 ], [ %31, %_llgo_5 ]
  %31 = add i64 %30, 1
  %32 = icmp slt i64 %31, %28
  br i1 %32, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %35 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %31, i64 %34)
  %36 = getelementptr inbounds i64, ptr %33, i64 %35
  %37 = ptrtoint ptr %36 to i64
  %38 = and i64 %37, 72057594037927935
  %39 = xor i64 %38, 25399393228665167
  %40 = shl i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = lshr i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = or i64 %45, -6557241057451442176
  store i64 %46, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %46)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %3, align 4
  %49 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %49, i64 %48, i64 8)
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %49, align 4
  store i64 0, ptr %49, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = add i64 %29, %51
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %53 = sub i64 %0, 1
  %54 = call i64 @"github.com/goplus/llgo/cl/_testgo/tprecur.recur1[github.com/goplus/llgo/cl/_testgo/tprecur.T.0.1]"(i64 %53)
  %55 = add i64 %29, %54
  ret i64 %55
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)
