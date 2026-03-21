; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/allocacstrs'
source_filename = "github.com/goplus/llgo/cl/_testlibc/allocacstrs"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@1 = private unnamed_addr constant [1 x i8] c"b", align 1
@2 = private unnamed_addr constant [1 x i8] c"c", align 1
@3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/allocacstrs.main"() {
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
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca { i64, i64, i64 }, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %19, align 8
  %20 = call i64 @runtime.AllocZHidden(i64 48)
  store i64 %20, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %20)
  %21 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %0, align 4
  %23 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 3)
  %24 = mul i64 %23, 16
  %25 = call i64 @runtime.AdvanceHiddenPointer(i64 %22, i64 %24)
  store i64 %25, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %25)
  %26 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %2, align 4
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %28, align 8
  call void @runtime.StoreHiddenPointee(i64 %27, ptr %28, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 16)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %29 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %0, align 4
  %31 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 3)
  %32 = mul i64 %31, 16
  %33 = call i64 @runtime.AdvanceHiddenPointer(i64 %30, i64 %32)
  store i64 %33, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %33)
  %34 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %4, align 4
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %36, align 8
  call void @runtime.StoreHiddenPointee(i64 %35, ptr %36, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 16)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 3)
  %40 = mul i64 %39, 16
  %41 = call i64 @runtime.AdvanceHiddenPointer(i64 %38, i64 %40)
  store i64 %41, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %41)
  %42 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load i64, ptr %6, align 4
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %44, align 8
  call void @runtime.StoreHiddenPointee(i64 %43, ptr %44, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %0, align 4
  %47 = and i64 %46, 72057594037927935
  %48 = lshr i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = shl i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = xor i64 %53, 25399393228665167
  %55 = inttoptr i64 %54 to ptr
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %55, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 3, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 3, 2
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, ptr %59, align 8
  %60 = icmp eq ptr %59, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %59, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, ptr %9, align 8
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 0
  %63 = ptrtoint ptr %62 to i64
  %64 = and i64 %63, 72057594037927935
  %65 = xor i64 %64, 25399393228665167
  %66 = shl i64 %65, 17
  %67 = select i1 false, i64 0, i64 %66
  %68 = lshr i64 %65, 39
  %69 = select i1 false, i64 0, i64 %68
  %70 = or i64 %67, %69
  %71 = and i64 %70, 72057594037927935
  %72 = or i64 %71, -6557241057451442176
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 1
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 2
  %75 = insertvalue { i64, i64, i64 } undef, i64 %72, 0
  %76 = insertvalue { i64, i64, i64 } %75, i64 %73, 1
  %77 = insertvalue { i64, i64, i64 } %76, i64 %74, 2
  store { i64, i64, i64 } %77, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %59, align 8
  call void @runtime.TouchConservativeSlot(ptr %59, i64 24)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, 1
  %81 = add i64 %80, 1
  %82 = alloca ptr, i64 %81, align 8
  br label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_6
  %83 = phi i64 [ 0, %_llgo_6 ], [ %123, %_llgo_3 ]
  %84 = getelementptr ptr, ptr %82, i64 %83
  %85 = ptrtoint ptr %84 to i64
  %86 = and i64 %85, 72057594037927935
  %87 = xor i64 %86, 25399393228665167
  %88 = shl i64 %87, 17
  %89 = select i1 false, i64 0, i64 %88
  %90 = lshr i64 %87, 39
  %91 = select i1 false, i64 0, i64 %90
  %92 = or i64 %89, %91
  %93 = and i64 %92, 72057594037927935
  %94 = or i64 %93, -6557241057451442176
  store i64 %94, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %94)
  call void @runtime.ClobberPointerRegs()
  %95 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %10, align 4
  %97 = alloca ptr, align 8
  call void @runtime.LoadHiddenPointee(ptr %97, i64 %96, i64 8)
  %98 = icmp eq ptr %97, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load ptr, ptr %97, align 8
  store ptr null, ptr %97, align 8
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %100 = icmp eq ptr %99, null
  br i1 %100, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %101 = and i64 ptrtoint (ptr @3 to i64), 72057594037927935
  %102 = xor i64 %101, 25399393228665167
  %103 = shl i64 %102, 17
  %104 = select i1 false, i64 0, i64 %103
  %105 = lshr i64 %102, 39
  %106 = select i1 false, i64 0, i64 %105
  %107 = or i64 %104, %106
  %108 = and i64 %107, 72057594037927935
  %109 = or i64 %108, -6557241057451442176
  store i64 %109, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %109)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %111 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load i64, ptr %12, align 4
  %113 = and i64 %112, 72057594037927935
  %114 = lshr i64 %113, 17
  %115 = select i1 false, i64 0, i64 %114
  %116 = shl i64 %113, 39
  %117 = select i1 false, i64 0, i64 %116
  %118 = or i64 %115, %117
  %119 = and i64 %118, 72057594037927935
  %120 = xor i64 %119, 25399393228665167
  %121 = inttoptr i64 %120 to ptr
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 24)
  call void @runtime.ClobberPointerRegs()
  %122 = call i32 (ptr, ...) @printf(ptr %121, ptr %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %110)
  %123 = add i64 %83, 1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_0
  %124 = phi i64 [ 0, %_llgo_0 ], [ %137, %_llgo_5 ]
  %125 = icmp slt i64 %124, %80
  br i1 %125, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, 0
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, 1
  %128 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %124, i64 %127)
  %129 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %126, i64 %128
  %130 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %129, align 8
  %132 = getelementptr ptr, ptr %82, i64 %124
  %133 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %131, 1
  %134 = add i64 %133, 1
  %135 = alloca i8, i64 %134, align 1
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %135, %"github.com/goplus/llgo/runtime/internal/runtime.String" %131)
  store ptr %136, ptr %132, align 8
  %137 = add i64 %124, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %138 = getelementptr ptr, ptr %82, i64 %80
  store ptr null, ptr %138, align 8
  br label %_llgo_1
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)
