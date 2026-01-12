; ModuleID = 'github.com/goplus/llgo/cl/_testrt/mask'
source_filename = "github.com/goplus/llgo/cl/_testrt/mask"

@"github.com/goplus/llgo/cl/_testrt/mask.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/mask.init"() {
_llgo_0:
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
  %0 = call i32 @"github.com/goplus/llgo/cl/_testrt/mask.mask"(i8 1)
  %1 = sext i32 %0 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl"(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8"(i8 127, i64 5)
  %4 = sext i8 %3 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u"(i8 127, i64 5)
  %6 = zext i8 %5 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8"(i8 127, i64 16)
  %8 = sext i8 %7 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u"(i8 127, i64 16)
  %10 = zext i8 %9 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr"(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8"(i8 127, i64 5)
  %13 = sext i8 %12 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8u"(i8 127, i64 5)
  %15 = zext i8 %14 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8"(i8 127, i64 16)
  %17 = sext i8 %16 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call i32 @"github.com/goplus/llgo/cl/_testrt/mask.mask"(i8 1)
  %5 = sext i32 %4 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl"(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8"(i8 127, i64 5)
  %8 = sext i8 %7 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u"(i8 127, i64 5)
  %10 = zext i8 %9 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8"(i8 127, i64 16)
  %12 = sext i8 %11 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u"(i8 127, i64 16)
  %14 = zext i8 %13 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = call i64 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr"(i64 127, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8"(i8 127, i64 5)
  %17 = sext i8 %16 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8u"(i8 127, i64 5)
  %19 = zext i8 %18 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call i8 @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8"(i8 127, i64 16)
  %21 = sext i8 %20 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_2 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_5:                                          ; preds = %_llgo_1
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i32 @"github.com/goplus/llgo/cl/_testrt/mask.mask"(i8 %0) {
_llgo_0:
  %1 = sext i8 %0 to i32
  %2 = shl i32 %1, 31
  %3 = select i1 false, i32 0, i32 %2
  %4 = ashr i32 %3, 31
  ret i32 %4
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.mask$coro"(i8 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i32 }, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = sext i8 %0 to i32
  %6 = shl i32 %5, 31
  %7 = select i1 false, i32 0, i32 %6
  %8 = ashr i32 %7, 31
  %9 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %3, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_5:                                          ; preds = %_llgo_1
  %15 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %17 = call ptr @llvm.coro.free(token %3, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %6)
  %7 = icmp uge i64 %1, 64
  %8 = shl i64 %0, %1
  %9 = select i1 %7, i64 0, i64 %8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8$coro"(i8 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i8 }, align 8
  %3 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %6)
  %7 = trunc i64 %1 to i8
  %8 = icmp uge i8 %7, 8
  %9 = shl i8 %0, %7
  %10 = select i1 %8, i8 0, i8 %9
  %11 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %4, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %4, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.mask_shl8u$coro"(i8 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i8 }, align 8
  %3 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %6)
  %7 = trunc i64 %1 to i8
  %8 = icmp uge i8 %7, 8
  %9 = shl i8 %0, %7
  %10 = select i1 %8, i8 0, i8 %9
  %11 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %4, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %4, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr$coro"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %6)
  %7 = icmp uge i64 %1, 64
  %8 = select i1 %7, i64 63, i64 %1
  %9 = ashr i64 %0, %8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8$coro"(i8 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i8 }, align 8
  %3 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %6)
  %7 = trunc i64 %1 to i8
  %8 = icmp uge i8 %7, 8
  %9 = select i1 %8, i8 7, i8 %7
  %10 = ashr i8 %0, %9
  %11 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %4, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %4, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/mask.mask_shr8u$coro"(i8 %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i8 }, align 8
  %3 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = icmp slt i64 %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1 %6)
  %7 = trunc i64 %1 to i8
  %8 = icmp uge i8 %7, 8
  %9 = lshr i8 %0, %7
  %10 = select i1 %8, i8 0, i8 %9
  %11 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %4, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, i8 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %4, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #1

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #2

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #3

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
