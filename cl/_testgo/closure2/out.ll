; ModuleID = 'github.com/goplus/llgo/cl/_testgo/closure2'
source_filename = "github.com/goplus/llgo/cl/_testgo/closure2"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/closure2.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"closure", align 1

define void @"github.com/goplus/llgo/cl/_testgo/closure2.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/closure2.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/closure2.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closure2.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca { ptr, ptr }, align 8
  %4 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %4, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %4)
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %0, align 4
  %7 = alloca i64, align 8
  store i64 1, ptr %7, align 4
  call void @runtime.StoreHiddenPointee(i64 %6, ptr %7, i64 8)
  store i64 0, ptr %7, align 4
  %8 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i64, ptr %0, align 4
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
  %21 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closure2.main$1", ptr undef }, ptr %19, 1
  store { ptr, ptr } %21, ptr %2, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load { ptr, ptr }, ptr %2, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %25 = extractvalue { ptr, ptr } %23, 1
  %26 = extractvalue { ptr, ptr } %23, 0
  %27 = call { ptr, ptr } %26(ptr %25, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  store { ptr, ptr } %27, ptr %3, align 8
  %28 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load { ptr, ptr }, ptr %3, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %31 = extractvalue { ptr, ptr } %29, 1
  %32 = extractvalue { ptr, ptr } %29, 0
  call void %32(ptr %31, i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %30)
  ret void
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testgo/closure2.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca { ptr, ptr }, align 8
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closure2.main$1$1", ptr undef }, ptr %6, 1
  store { ptr, ptr } %8, ptr %2, align 8
  %9 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load { ptr, ptr }, ptr %2, align 8
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret { ptr, ptr } %10
}

define void @"github.com/goplus/llgo/cl/_testgo/closure2.main$1$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %4, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %7)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
