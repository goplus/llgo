; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/atomic'
source_filename = "github.com/goplus/llgo/cl/_testlibc/atomic"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testlibc/atomic.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"store: %ld\0A\00", align 1
@1 = private unnamed_addr constant [18 x i8] c"ret: %ld, v: %ld\0A\00", align 1
@2 = private unnamed_addr constant [25 x i8] c"ret: %ld vs 100, v: %ld\0A\00", align 1
@3 = private unnamed_addr constant [25 x i8] c"ret: %ld vs 101, v: %ld\0A\00", align 1
@4 = private unnamed_addr constant [18 x i8] c"ret: %ld, v: %ld\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/atomic.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/atomic.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/atomic.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/atomic.main"() {
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
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca { i64, i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  store ptr null, ptr %25, align 8
  %26 = alloca { i64, i64, i64 }, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %27, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  store ptr null, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = alloca { i64, i64, i64 }, align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  store ptr null, ptr %39, align 8
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  store ptr null, ptr %41, align 8
  %42 = alloca i64, align 8
  %43 = alloca ptr, align 8
  store ptr null, ptr %43, align 8
  %44 = alloca i64, align 8
  %45 = alloca ptr, align 8
  store ptr null, ptr %45, align 8
  %46 = alloca { i64, i64, i64 }, align 8
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %47, align 8
  %48 = alloca i64, align 8
  call void @llvm.memset(ptr %48, i8 0, i64 8, i1 false)
  store atomic i64 100, ptr %48 seq_cst, align 4
  %49 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  store i64 %57, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %57)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load atomic i64, ptr %48 seq_cst, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %61 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %0, align 4
  %63 = and i64 %62, 72057594037927935
  %64 = lshr i64 %63, 17
  %65 = select i1 false, i64 0, i64 %64
  %66 = shl i64 %63, 39
  %67 = select i1 false, i64 0, i64 %66
  %68 = or i64 %65, %67
  %69 = and i64 %68, 72057594037927935
  %70 = xor i64 %69, 25399393228665167
  %71 = inttoptr i64 %70 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  %72 = call i32 (ptr, ...) @printf(ptr %71, i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %60)
  %73 = atomicrmw add ptr %48, i64 1 seq_cst, align 8
  %74 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = shl i64 %75, 17
  %77 = select i1 false, i64 0, i64 %76
  %78 = lshr i64 %75, 39
  %79 = select i1 false, i64 0, i64 %78
  %80 = or i64 %77, %79
  %81 = and i64 %80, 72057594037927935
  %82 = or i64 %81, -6557241057451442176
  store i64 %82, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %82)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %48, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %86 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %8, align 4
  %88 = and i64 %87, 72057594037927935
  %89 = lshr i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = shl i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = xor i64 %94, 25399393228665167
  %96 = inttoptr i64 %95 to ptr
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  call void @runtime.ClobberPointerRegs()
  %97 = call i32 (ptr, ...) @printf(ptr %96, i64 %73, i64 %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %85)
  %98 = cmpxchg ptr %48, i64 100, i64 102 seq_cst seq_cst, align 8
  %99 = extractvalue { i64, i1 } %98, 1
  %100 = and i64 ptrtoint (ptr @2 to i64), 72057594037927935
  %101 = xor i64 %100, 25399393228665167
  %102 = shl i64 %101, 17
  %103 = select i1 false, i64 0, i64 %102
  %104 = lshr i64 %101, 39
  %105 = select i1 false, i64 0, i64 %104
  %106 = or i64 %103, %105
  %107 = and i64 %106, 72057594037927935
  %108 = or i64 %107, -6557241057451442176
  store i64 %108, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %108)
  call void @runtime.ClobberPointerRegs()
  %109 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load i64, ptr %48, align 4
  %111 = extractvalue { i64, i1 } %98, 0
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  call void @runtime.ClobberPointerRegs()
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %113 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %18, align 4
  %115 = and i64 %114, 72057594037927935
  %116 = lshr i64 %115, 17
  %117 = select i1 false, i64 0, i64 %116
  %118 = shl i64 %115, 39
  %119 = select i1 false, i64 0, i64 %118
  %120 = or i64 %117, %119
  %121 = and i64 %120, 72057594037927935
  %122 = xor i64 %121, 25399393228665167
  %123 = inttoptr i64 %122 to ptr
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 24)
  call void @runtime.ClobberPointerRegs()
  %124 = call i32 (ptr, ...) @printf(ptr %123, i64 %111, i64 %110)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %112)
  %125 = cmpxchg ptr %48, i64 101, i64 102 seq_cst seq_cst, align 8
  %126 = extractvalue { i64, i1 } %125, 1
  %127 = and i64 ptrtoint (ptr @3 to i64), 72057594037927935
  %128 = xor i64 %127, 25399393228665167
  %129 = shl i64 %128, 17
  %130 = select i1 false, i64 0, i64 %129
  %131 = lshr i64 %128, 39
  %132 = select i1 false, i64 0, i64 %131
  %133 = or i64 %130, %132
  %134 = and i64 %133, 72057594037927935
  %135 = or i64 %134, -6557241057451442176
  store i64 %135, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %135)
  call void @runtime.ClobberPointerRegs()
  %136 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = load i64, ptr %48, align 4
  %138 = extractvalue { i64, i1 } %125, 0
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %140 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load i64, ptr %28, align 4
  %142 = and i64 %141, 72057594037927935
  %143 = lshr i64 %142, 17
  %144 = select i1 false, i64 0, i64 %143
  %145 = shl i64 %142, 39
  %146 = select i1 false, i64 0, i64 %145
  %147 = or i64 %144, %146
  %148 = and i64 %147, 72057594037927935
  %149 = xor i64 %148, 25399393228665167
  %150 = inttoptr i64 %149 to ptr
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  call void @runtime.ClobberPointerRegs()
  %151 = call i32 (ptr, ...) @printf(ptr %150, i64 %138, i64 %137)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %139)
  %152 = atomicrmw sub ptr %48, i64 1 seq_cst, align 8
  %153 = and i64 ptrtoint (ptr @4 to i64), 72057594037927935
  %154 = xor i64 %153, 25399393228665167
  %155 = shl i64 %154, 17
  %156 = select i1 false, i64 0, i64 %155
  %157 = lshr i64 %154, 39
  %158 = select i1 false, i64 0, i64 %157
  %159 = or i64 %156, %158
  %160 = and i64 %159, 72057594037927935
  %161 = or i64 %160, -6557241057451442176
  store i64 %161, ptr %38, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %39, i64 %161)
  call void @runtime.ClobberPointerRegs()
  %162 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %162)
  %163 = load i64, ptr %48, align 4
  store i64 0, ptr %48, align 4
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %42, align 4
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  store ptr null, ptr %43, align 8
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %44, align 4
  call void @runtime.TouchConservativeSlot(ptr %44, i64 8)
  store ptr null, ptr %45, align 8
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  call void @runtime.ClobberPointerRegs()
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %165 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %165)
  %166 = load i64, ptr %38, align 4
  %167 = and i64 %166, 72057594037927935
  %168 = lshr i64 %167, 17
  %169 = select i1 false, i64 0, i64 %168
  %170 = shl i64 %167, 39
  %171 = select i1 false, i64 0, i64 %170
  %172 = or i64 %169, %171
  %173 = and i64 %172, 72057594037927935
  %174 = xor i64 %173, 25399393228665167
  %175 = inttoptr i64 %174 to ptr
  store i64 0, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store ptr null, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  store i64 0, ptr %40, align 4
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  store ptr null, ptr %41, align 8
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %46, align 4
  call void @runtime.TouchConservativeSlot(ptr %46, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 24)
  call void @runtime.ClobberPointerRegs()
  %176 = call i32 (ptr, ...) @printf(ptr %175, i64 %152, i64 %163)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %164)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare void @"github.com/goplus/lib/c/sync/atomic.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
