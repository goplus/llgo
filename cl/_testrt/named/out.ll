; ModuleID = 'github.com/goplus/llgo/cl/_testrt/named'
source_filename = "github.com/goplus/llgo/cl/_testrt/named"

%"github.com/goplus/llgo/cl/_testrt/named.mspan" = type { ptr, ptr, ptr, %"github.com/goplus/llgo/cl/_testrt/named.minfo", i64, { ptr, ptr, i1 } }
%"github.com/goplus/llgo/cl/_testrt/named.minfo" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/named.mSpanList" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/named.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1
@1 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/named.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/named.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/named.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/named.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %2, i32 0, i32 4
  store i64 100, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %4, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %9, i32 0, i32 4
  store i64 200, ptr %10, align 4
  %11 = load ptr, ptr %0, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %11, i32 0, i32 2
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %16, i32 0, i32 1
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %23, i32 0, i32 4
  store i64 300, ptr %24, align 4
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %26, i32 0, i32 1
  store i64 10, ptr %27, align 4
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %29, i32 0, i32 0
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %0, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %34 = getelementptr inbounds { ptr }, ptr %33, i32 0, i32 0
  store ptr %0, ptr %34, align 8
  %35 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1", ptr undef, i1 undef }, ptr %33, 1
  %36 = insertvalue { ptr, ptr, i1 } %35, i1 false, 2
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %32, i32 0, i32 5
  store { ptr, ptr, i1 } %36, ptr %37, align 8
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %40, i32 0, i32 4
  %42 = load i64, ptr %41, align 4
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %47, i32 0, i32 4
  %49 = load i64, ptr %48, align 4
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %50, i32 0, i32 3
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %51, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %54, i32 0, i32 3
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %55, i32 0, i32 0
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %57, i32 0, i32 4
  %59 = load i64, ptr %58, align 4
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %60, i32 0, i32 5
  %62 = load { ptr, ptr, i1 }, ptr %61, align 8
  %63 = extractvalue { ptr, ptr, i1 } %62, 0
  %64 = extractvalue { ptr, ptr, i1 } %62, 1
  %65 = extractvalue { ptr, ptr, i1 } %62, 2
  br i1 %65, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %66 = call i64 %63(ptr %64, i64 -2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %67 = call ptr %63(ptr %64, i64 -2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %67)
  %68 = call ptr @llvm.coro.promise(ptr %67, i32 8, i1 false)
  %69 = getelementptr inbounds { ptr, i64 }, ptr %68, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  call void @llvm.coro.destroy(ptr %67)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %71 = phi i64 [ %66, %_llgo_1 ], [ %70, %_llgo_2 ]
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %72, i32 0, i32 3
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %75, i32 0, i32 5
  %77 = load { ptr, ptr, i1 }, ptr %76, align 8
  %78 = extractvalue { ptr, ptr, i1 } %77, 0
  %79 = extractvalue { ptr, ptr, i1 } %77, 1
  %80 = extractvalue { ptr, ptr, i1 } %77, 2
  br i1 %80, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3
  %81 = call i64 %78(ptr %79, i64 -3)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  %82 = call ptr %78(ptr %79, i64 -3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %82)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %82)
  %83 = call ptr @llvm.coro.promise(ptr %82, i32 8, i1 false)
  %84 = getelementptr inbounds { ptr, i64 }, ptr %83, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  call void @llvm.coro.destroy(ptr %82)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %86 = phi i64 [ %81, %_llgo_4 ], [ %85, %_llgo_5 ]
  %87 = call i32 (ptr, ...) @printf(ptr @0, i64 %42, i64 %49, i64 %53, i64 %59, i64 %71, i64 %86)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/named.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  store ptr %5, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %6, i32 0, i32 4
  store i64 100, ptr %7, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %8, i32 0, i32 0
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %13, i32 0, i32 4
  store i64 200, ptr %14, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %15, i32 0, i32 2
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %20, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %27, i32 0, i32 4
  store i64 300, ptr %28, align 4
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %30, i32 0, i32 1
  store i64 10, ptr %31, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %33, i32 0, i32 0
  store ptr %34, ptr %35, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %38 = getelementptr inbounds { ptr }, ptr %37, i32 0, i32 0
  store ptr %4, ptr %38, align 8
  %39 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1", ptr undef, i1 undef }, ptr %37, 1
  %40 = insertvalue { ptr, ptr, i1 } %39, i1 false, 2
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %36, i32 0, i32 5
  store { ptr, ptr, i1 } %40, ptr %41, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %42, i32 0, i32 0
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %44, i32 0, i32 4
  %46 = load i64, ptr %45, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mSpanList", ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %51, i32 0, i32 4
  %53 = load i64, ptr %52, align 4
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %54, i32 0, i32 3
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %55, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %58, i32 0, i32 3
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %61, i32 0, i32 4
  %63 = load i64, ptr %62, align 4
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %64, i32 0, i32 5
  %66 = load { ptr, ptr, i1 }, ptr %65, align 8
  %67 = extractvalue { ptr, ptr, i1 } %66, 0
  %68 = extractvalue { ptr, ptr, i1 } %66, 1
  %69 = extractvalue { ptr, ptr, i1 } %66, 2
  br i1 %69, label %_llgo_9, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %70 = call i64 @llvm.coro.size.i64()
  %71 = call ptr @malloc(i64 %70)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %72 = phi ptr [ null, %_llgo_0 ], [ %71, %_llgo_2 ]
  %73 = call ptr @llvm.coro.begin(token %2, ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %74 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %74, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_18, %_llgo_11, %_llgo_3
  %75 = call i1 @llvm.coro.end(ptr %73, i1 false, token none)
  ret ptr %73

_llgo_5:                                          ; preds = %_llgo_17, %_llgo_20, %_llgo_18, %_llgo_13, %_llgo_11, %_llgo_3
  %76 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %76, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_22, %_llgo_5
  %77 = call ptr @llvm.coro.free(token %2, ptr %73)
  call void @free(ptr %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %78 = call i64 %67(ptr %68, i64 -2)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_1
  %79 = call ptr %67(ptr %68, i64 -2)
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_14, %_llgo_8
  %80 = phi i64 [ %78, %_llgo_8 ], [ %97, %_llgo_14 ]
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %81, i32 0, i32 3
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.minfo", ptr %82, i32 0, i32 0
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %84, i32 0, i32 5
  %86 = load { ptr, ptr, i1 }, ptr %85, align 8
  %87 = extractvalue { ptr, ptr, i1 } %86, 0
  %88 = extractvalue { ptr, ptr, i1 } %86, 1
  %89 = extractvalue { ptr, ptr, i1 } %86, 2
  br i1 %89, label %_llgo_16, label %_llgo_15

_llgo_11:                                         ; preds = %_llgo_9
  %90 = call ptr @llvm.coro.promise(ptr %79, i32 8, i1 false)
  %91 = getelementptr inbounds { ptr, i64 }, ptr %90, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %91, ptr %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %79)
  %92 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %92, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_11
  %93 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %79)
  br i1 %93, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %94 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %94)
  br label %_llgo_5

_llgo_14:                                         ; preds = %_llgo_12
  %95 = call ptr @llvm.coro.promise(ptr %79, i32 8, i1 false)
  %96 = getelementptr inbounds { ptr, i64 }, ptr %95, i32 0, i32 1
  %97 = load i64, ptr %96, align 4
  call void @llvm.coro.destroy(ptr %79)
  br label %_llgo_10

_llgo_15:                                         ; preds = %_llgo_10
  %98 = call i64 %87(ptr %88, i64 -3)
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_10
  %99 = call ptr %87(ptr %88, i64 -3)
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_21, %_llgo_15
  %100 = phi i64 [ %98, %_llgo_15 ], [ %109, %_llgo_21 ]
  %101 = call i32 (ptr, ...) @printf(ptr @1, i64 %46, i64 %53, i64 %57, i64 %63, i64 %80, i64 %100)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_16
  %102 = call ptr @llvm.coro.promise(ptr %99, i32 8, i1 false)
  %103 = getelementptr inbounds { ptr, i64 }, ptr %102, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %103, ptr %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %99)
  %104 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %104, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_19:                                         ; preds = %_llgo_18
  %105 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %99)
  br i1 %105, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %106 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %106)
  br label %_llgo_5

_llgo_21:                                         ; preds = %_llgo_19
  %107 = call ptr @llvm.coro.promise(ptr %99, i32 8, i1 false)
  %108 = getelementptr inbounds { ptr, i64 }, ptr %107, i32 0, i32 1
  %109 = load i64, ptr %108, align 4
  call void @llvm.coro.destroy(ptr %99)
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/named.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %4, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %6, %1
  ret i64 %7
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/named.main$1$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %6 = load { ptr }, ptr %0, align 8
  %7 = extractvalue { ptr } %6, 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/named.mspan", ptr %8, i32 0, i32 4
  %10 = load i64, ptr %9, align 4
  %11 = mul i64 %10, %1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %11, ptr %12, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %4, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %18 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %4, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

declare void @llvm.coro.destroy(ptr)

declare i32 @printf(ptr, ...)

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

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: read) }
