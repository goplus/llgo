; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call i32 @main.mask(i8 1)
  %3 = sext i32 %2 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  %5 = call i64 @main.mask_shl(i64 127, i64 5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %5)
  %6 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %6)
  %7 = call i8 @main.mask_shl8(i8 127, i64 5)
  %8 = sext i8 %7 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %8)
  %9 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %9)
  %10 = call i8 @main.mask_shl8u(i8 127, i64 5)
  %11 = zext i8 %10 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %11)
  %12 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %12)
  %13 = call i8 @main.mask_shl8(i8 127, i64 16)
  %14 = sext i8 %13 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %14)
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %15)
  %16 = call i8 @main.mask_shl8u(i8 127, i64 16)
  %17 = zext i8 %16 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %17)
  %18 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %18)
  %19 = call i64 @main.mask_shr(i64 127, i64 5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %19)
  %20 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @6, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %20)
  %21 = call i8 @main.mask_shr8(i8 127, i64 5)
  %22 = sext i8 %21 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %22)
  %23 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @7, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  %24 = call i8 @main.mask_shr8u(i8 127, i64 5)
  %25 = zext i8 %24 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %25)
  %26 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @8, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %26)
  %27 = call i8 @main.mask_shr8(i8 127, i64 16)
  %28 = sext i8 %27 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %28)
  %29 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @9, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %29)
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
  call void @"github.com/goplus/llgo/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = icmp uge i64 %1, 64
  %4 = shl i64 %0, %1
  %5 = select i1 %3, i64 0, i64 %4
  ret i64 %5
}

define i8 @main.mask_shl8(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = shl i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

define i8 @main.mask_shl8u(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = shl i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

define i64 @main.mask_shr(i64 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = icmp uge i64 %1, 64
  %4 = select i1 %3, i64 63, i64 %1
  %5 = ashr i64 %0, %4
  ret i64 %5
}

define i8 @main.mask_shr8(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = select i1 %4, i8 7, i8 %3
  %6 = ashr i8 %0, %5
  ret i8 %6
}

define i8 @main.mask_shr8u(i8 %0, i64 %1) {
_llgo_0:
  %2 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertNegativeShift"(i1 %2)
  %3 = trunc i64 %1 to i8
  %4 = icmp uge i8 %3, 8
  %5 = lshr i8 %0, %3
  %6 = select i1 %4, i8 0, i8 %5
  ret i8 %6
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertNegativeShift"(i1)
