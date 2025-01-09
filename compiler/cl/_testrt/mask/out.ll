; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call i32 @main.mask(i8 1)
  %3 = sext i32 %2 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i64 @main.mask_shl(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i8 @main.mask_shl8(i8 127, i64 5)
  %6 = sext i8 %5 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @main.mask_shl8u(i8 127, i64 5)
  %8 = zext i8 %7 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = call i8 @main.mask_shl8(i8 127, i64 16)
  %10 = sext i8 %9 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call i8 @main.mask_shl8u(i8 127, i64 16)
  %12 = zext i8 %11 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call i64 @main.mask_shr(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call i8 @main.mask_shr8(i8 127, i64 5)
  %15 = sext i8 %14 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call i8 @main.mask_shr8u(i8 127, i64 5)
  %17 = zext i8 %16 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call i8 @main.mask_shr8(i8 127, i64 16)
  %19 = sext i8 %18 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define i32 @main.mask(i8 %0) {
_llgo_0:
  %1 = sext i8 %0 to i32
  %2 = shl i32 %1, 31
  %3 = select i1 false, i32 0, i32 %2
  %4 = ashr i32 %3, 31
  ret i32 %4
}

define i64 @main.mask_shl(i64 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = icmp uge i64 %1, 64
  %4 = shl i64 %0, %1
  %5 = select i1 %3, i64 0, i64 %4
  ret i64 %5
}

define i8 @main.mask_shl8(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = shl i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

define i8 @main.mask_shl8u(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = shl i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

define i64 @main.mask_shr(i64 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = icmp uge i64 %1, 64
  %4 = select i1 %3, i64 63, i64 %1
  %5 = ashr i64 %0, %4
  ret i64 %5
}

define i8 @main.mask_shr8(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = select i1 %4, i8 7, i8 %3
  %6 = ashr i8 %0, %5
  ret i8 %6
}

define i8 @main.mask_shr8u(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = lshr i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1)
