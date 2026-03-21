; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tprecurfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/tprecurfn"

%"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]" = type { { ptr, ptr }, ptr }

@"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { ptr, ptr }, align 8
  %5 = alloca %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 24, i1 false)
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %5, i32 0, i32 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %8, i32 0, i32 0
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %0, align 4
  %23 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1", ptr null }, ptr %23, align 8
  call void @runtime.StoreHiddenPointee(i64 %22, ptr %23, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 16)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr %8, ptr %7, align 8
  %24 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %5, i32 0, i32 1
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load ptr, ptr %25, align 8
  store %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %27, i32 0, i32 0
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
  store i64 %39, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %39)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load i64, ptr %2, align 4
  %42 = alloca { ptr, ptr }, align 8
  call void @runtime.LoadHiddenPointee(ptr %42, i64 %41, i64 16)
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { ptr, ptr }, ptr %42, align 8
  store { ptr, ptr } zeroinitializer, ptr %42, align 8
  store { ptr, ptr } %44, ptr %4, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load { ptr, ptr }, ptr %4, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %48 = extractvalue { ptr, ptr } %46, 1
  %49 = extractvalue { ptr, ptr } %46, 0
  call void %49(ptr %48, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %47)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1")
  tail call void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
