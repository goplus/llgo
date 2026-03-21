; ModuleID = 'github.com/goplus/llgo/cl/_testrt/concat'
source_filename = "github.com/goplus/llgo/cl/_testrt/concat"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/concat.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"...", align 1
@1 = private unnamed_addr constant [5 x i8] c"Hello", align 1
@2 = private unnamed_addr constant [1 x i8] c" ", align 1
@3 = private unnamed_addr constant [5 x i8] c"World", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/concat.concat"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ zeroinitializer, %_llgo_0 ], [ %49, %_llgo_2 ]
  %8 = phi i64 [ -1, %_llgo_0 ], [ %9, %_llgo_2 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, %6
  br i1 %10, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %13 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %9, i64 %12)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, i64 %13
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
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %27, i64 %26, i64 16)
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %27, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %29, ptr %30, align 8
  %31 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %30, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %32, ptr %4, align 8
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %32, 0
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
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %32, 1
  %45 = insertvalue { i64, i64 } undef, i64 %43, 0
  %46 = insertvalue { i64, i64 } %45, i64 %44, 1
  store { i64, i64 } %46, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %49 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %7, %"github.com/goplus/llgo/runtime/internal/runtime.String" %48)
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %7
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/concat.info"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = alloca { i64, i64 }, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, ptr %6, align 8
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, ptr %2, align 8
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, 0
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
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, 1
  %21 = insertvalue { i64, i64 } undef, i64 %19, 0
  %22 = insertvalue { i64, i64 } %21, i64 %20, 1
  store { i64, i64 } %22, ptr %1, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %25 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %24, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, ptr %26, align 8
  %27 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %26, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %28, ptr %4, align 8
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %28, 0
  %30 = ptrtoint ptr %29 to i64
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = shl i64 %32, 17
  %34 = select i1 false, i64 0, i64 %33
  %35 = lshr i64 %32, 39
  %36 = select i1 false, i64 0, i64 %35
  %37 = or i64 %34, %36
  %38 = and i64 %37, 72057594037927935
  %39 = or i64 %38, -6557241057451442176
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %28, 1
  %41 = insertvalue { i64, i64 } undef, i64 %39, 0
  %42 = insertvalue { i64, i64 } %41, i64 %40, 1
  store { i64, i64 } %42, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 16)
  call void @runtime.ClobberPointerRegs()
  store { i64, i64 } zeroinitializer, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %44
}

define void @"github.com/goplus/llgo/cl/_testrt/concat.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/concat.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/concat.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/concat.main"() {
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
  %8 = alloca { i64, i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  %10 = alloca { i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %11, align 8
  %12 = call i64 @runtime.AllocZHidden(i64 48)
  store i64 %12, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %12)
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load i64, ptr %0, align 4
  %15 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %16 = mul i64 %15, 16
  %17 = call i64 @runtime.AdvanceHiddenPointer(i64 %14, i64 %16)
  store i64 %17, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %17)
  %18 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %2, align 4
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %20, align 8
  call void @runtime.StoreHiddenPointee(i64 %19, ptr %20, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 16)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %0, align 4
  %23 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %24 = mul i64 %23, 16
  %25 = call i64 @runtime.AdvanceHiddenPointer(i64 %22, i64 %24)
  store i64 %25, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %25)
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %28, align 8
  call void @runtime.StoreHiddenPointee(i64 %27, ptr %28, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 16)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %29 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %0, align 4
  %31 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %32 = mul i64 %31, 16
  %33 = call i64 @runtime.AdvanceHiddenPointer(i64 %30, i64 %32)
  store i64 %33, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %33)
  %34 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %6, align 4
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr %36, align 8
  call void @runtime.StoreHiddenPointee(i64 %35, ptr %36, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = and i64 %38, 72057594037927935
  %40 = lshr i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = shl i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = inttoptr i64 %46 to ptr
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 3, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 3, 2
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, ptr %51, align 8
  %52 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %51, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, ptr %9, align 8
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 0
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 72057594037927935
  %57 = xor i64 %56, 25399393228665167
  %58 = shl i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = lshr i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = or i64 %63, -6557241057451442176
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 1
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 2
  %67 = insertvalue { i64, i64, i64 } undef, i64 %64, 0
  %68 = insertvalue { i64, i64, i64 } %67, i64 %65, 1
  %69 = insertvalue { i64, i64, i64 } %68, i64 %66, 2
  store { i64, i64, i64 } %69, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %51, align 8
  call void @runtime.TouchConservativeSlot(ptr %51, i64 24)
  call void @runtime.ClobberPointerRegs()
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %71 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  call void @runtime.ClobberPointerRegs()
  %73 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/concat.concat"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %70)
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %73, ptr %74, align 8
  %75 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %74, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %76, ptr %11, align 8
  %77 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %76, 0
  %78 = ptrtoint ptr %77 to i64
  %79 = and i64 %78, 72057594037927935
  %80 = xor i64 %79, 25399393228665167
  %81 = shl i64 %80, 17
  %82 = select i1 false, i64 0, i64 %81
  %83 = lshr i64 %80, 39
  %84 = select i1 false, i64 0, i64 %83
  %85 = or i64 %82, %84
  %86 = and i64 %85, 72057594037927935
  %87 = or i64 %86, -6557241057451442176
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %76, 1
  %89 = insertvalue { i64, i64 } undef, i64 %87, 0
  %90 = insertvalue { i64, i64 } %89, i64 %88, 1
  store { i64, i64 } %90, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %74, align 8
  call void @runtime.TouchConservativeSlot(ptr %74, i64 16)
  call void @runtime.ClobberPointerRegs()
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %92 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  store { i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @runtime.AllocZHidden(i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
