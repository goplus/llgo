; ModuleID = 'github.com/goplus/llgo/cl/_testrt/freevars'
source_filename = "github.com/goplus/llgo/cl/_testrt/freevars"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/freevars.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/freevars.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/freevars.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/freevars.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { ptr, ptr }, align 8
  %4 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %4, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %4)
  %5 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %1, align 4
  %7 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %0, ptr %7, align 8
  call void @runtime.StoreHiddenPointee(i64 %6, ptr %7, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i64, ptr %1, align 4
  %10 = and i64 %9, 72057594037927935
  %11 = lshr i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = shl i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = inttoptr i64 %17 to ptr
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1", ptr undef }, ptr %19, 1
  store { ptr, ptr } %21, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load { ptr, ptr }, ptr %3, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %25 = extractvalue { ptr, ptr } %23, 1
  %26 = extractvalue { ptr, ptr } %23, 0
  call void %26(ptr %25, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { ptr }, ptr %0, align 8
  %4 = alloca { ptr, ptr }, align 8
  %5 = alloca { ptr, ptr }, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr null, 1
  %13 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  %14 = xor i1 %13, true
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %15 = extractvalue { ptr } %3, 0
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load { ptr, ptr }, ptr %15, align 8
  store { ptr, ptr } %17, ptr %4, align 8
  %18 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load { ptr, ptr }, ptr %4, align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %21 = extractvalue { ptr, ptr } %19, 1
  %22 = extractvalue { ptr, ptr } %19, 0
  call void %22(ptr %21, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %20)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %23 = extractvalue { ptr } %3, 0
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load { ptr, ptr }, ptr %23, align 8
  store { ptr, ptr } %25, ptr %5, align 8
  %26 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load { ptr, ptr }, ptr %5, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  %29 = extractvalue { ptr, ptr } %27, 1
  %30 = extractvalue { ptr, ptr } %27, 0
  call void %30(ptr %29, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$2")
  tail call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @runtime.ClobberPointerRegs()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
