; ModuleID = 'github.com/goplus/llgo/cl/_testpull/conditional'
source_filename = "github.com/goplus/llgo/cl/_testpull/conditional"

%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/conditional.init$guard" = global i1 false, align 1

define { i8, i1, ptr, ptr } @Conditional(i1 %0) {
_llgo_0:
  %1 = alloca { i8, i1, ptr, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  %2 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %1, i32 0, i32 1
  store i1 %0, ptr %3, align 1
  %4 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = load { i8, i1, ptr, ptr }, ptr %1, align 8
  ret { i8, i1, ptr, ptr } %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define { i1, i64 } @"Conditional$Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %4, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_9, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_11, label %_llgo_12

_llgo_5:                                          ; preds = %_llgo_13, %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret { i1, i64 } zeroinitializer

_llgo_7:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_2
  %11 = load ptr, ptr %5, align 8
  %12 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %11, ptr %1)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/async.Poll[int]" %12, ptr %13, align 4
  %14 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 0
  %15 = load i1, ptr %14, align 1
  br i1 %15, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %16 = getelementptr inbounds { i1, i64 }, ptr %13, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %18, align 1
  br label %_llgo_3

_llgo_10:                                         ; preds = %_llgo_8
  ret { i1, i64 } zeroinitializer

_llgo_11:                                         ; preds = %_llgo_4
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_4
  %19 = load ptr, ptr %8, align 8
  %20 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr %19, ptr %1)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/async.Poll[int]" %20, ptr %21, align 4
  %22 = getelementptr inbounds { i1, i64 }, ptr %21, i32 0, i32 0
  %23 = load i1, ptr %22, align 1
  br i1 %23, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %24 = getelementptr inbounds { i1, i64 }, ptr %21, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds { i8, i1, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %26, align 1
  br label %_llgo_5

_llgo_14:                                         ; preds = %_llgo_12
  ret { i1, i64 } zeroinitializer
}

declare %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*github.com/goplus/llgo/async.AsyncFuture[int]).Poll"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define ptr @"github.com/goplus/llgo/cl/_testpull/conditional.StepA"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/conditional.StepA$1", ptr null })
  ret ptr %0
}

define void @"github.com/goplus/llgo/cl/_testpull/conditional.StepA$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = extractvalue { ptr, ptr } %0, 1
  %2 = extractvalue { ptr, ptr } %0, 0
  call void %2(ptr %1, i64 10)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testpull/conditional.StepB"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/conditional.StepB$1", ptr null })
  ret ptr %0
}

define void @"github.com/goplus/llgo/cl/_testpull/conditional.StepB$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = extractvalue { ptr, ptr } %0, 1
  %2 = extractvalue { ptr, ptr } %0, 0
  call void %2(ptr %1, i64 20)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpull/conditional.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/conditional.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/conditional.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/conditional.StepA$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testpull/conditional.StepA$1"({ ptr, ptr } %1)
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/conditional.StepB$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testpull/conditional.StepB$1"({ ptr, ptr } %1)
  ret void
}

declare void @"github.com/goplus/llgo/async.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
