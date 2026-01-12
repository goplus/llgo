; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closurecapture'
source_filename = "github.com/goplus/llgo/cl/_testrt/closurecapture"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closurecapture.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [8 x i8] c"result =", align 1

define void @"github.com/goplus/llgo/cl/_testrt/closurecapture.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closurecapture.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closurecapture.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closurecapture.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 5, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closurecapture.main$1", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 false, 2
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call i64 %5(ptr %6, i64 10)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call ptr %5(ptr %6, i64 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  call void @llvm.coro.destroy(ptr %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %13 = phi i64 [ %8, %_llgo_1 ], [ %12, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 8 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurecapture.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 5, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closurecapture.main$1", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 false, 2
  %9 = extractvalue { ptr, ptr, i1 } %8, 0
  %10 = extractvalue { ptr, ptr, i1 } %8, 1
  %11 = extractvalue { ptr, ptr, i1 } %8, 2
  br i1 %11, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %2, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %17 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %2, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %20 = call i64 %9(ptr %10, i64 10)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %21 = call ptr %9(ptr %10, i64 10)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %22 = phi i64 [ %20, %_llgo_7 ], [ %35, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 8 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %21)
  br i1 %23, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %24 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %25 = call i1 @llvm.coro.done(ptr %21)
  br i1 %25, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %24, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %21)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %29 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %15)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %33 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %21)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurecapture.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = mul i64 %1, %4
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closurecapture.main$1$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %7 = extractvalue { ptr } %2, 0
  %8 = load i64, ptr %7, align 4
  %9 = mul i64 %1, %8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %5, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %5, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

declare void @llvm.coro.destroy(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #1

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
