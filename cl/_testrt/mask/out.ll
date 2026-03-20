; ModuleID = 'github.com/goplus/llgo/cl/_testrt/mask'
source_filename = "github.com/goplus/llgo/cl/_testrt/mask"

@"github.com/goplus/llgo/cl/_testrt/mask.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/mask.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/mask.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/mask.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/mask.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1 = call i32 @"github.com/goplus/llgo/cl/_testrt/mask.mask"(i8 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %3 = sext i32 %1 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl"(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %4)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %8 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8"(i8 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %7)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %10 = sext i8 %8 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %12 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u"(i8 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %11)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %14 = zext i8 %12 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %13)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %16 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8"(i8 127, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %15)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %18 = sext i8 %16 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %17)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %20 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u"(i8 127, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %19)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %22 = zext i8 %20 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %24 = call i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr"(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %27 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8"(i8 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %29 = sext i8 %27 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %31 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8u"(i8 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %30)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %33 = zext i8 %31 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %32)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %35 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8"(i8 127, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %34)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = sext i8 %35 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/mask.mask"(i8 %0) {
_llgo_0:
  %1 = sext i8 %0 to i32
  %2 = shl i32 %1, 31
  %3 = select i1 false, i32 0, i32 %2
  %4 = ashr i32 %3, 31
  ret i32 %4
}

define i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl"(i64 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = icmp uge i64 %1, 64
  %4 = shl i64 %0, %1
  %5 = select i1 %3, i64 0, i64 %4
  ret i64 %5
}

define i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8"(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = shl i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

define i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u"(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = shl i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr"(i64 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = icmp uge i64 %1, 64
  %4 = select i1 %3, i64 63, i64 %1
  %5 = ashr i64 %0, %4
  ret i64 %5
}

define i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8"(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = select i1 %4, i8 7, i8 %3
  %6 = ashr i8 %0, %5
  ret i8 %6
}

define i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8u"(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = lshr i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1)
