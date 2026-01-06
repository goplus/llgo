; ModuleID = 'github.com/goplus/llgo/cl/_testpull/loop'
source_filename = "github.com/goplus/llgo/cl/_testpull/loop"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/loop.init$guard" = global i1 false, align 1

define ptr @"github.com/goplus/llgo/cl/_testpull/loop.Compute"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/loop.Compute$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/loop.Compute$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = extractvalue { ptr } %2, 0
  %6 = load i64, ptr %5, align 4
  %7 = mul i64 %4, %6
  %8 = extractvalue { ptr, ptr } %1, 1
  %9 = extractvalue { ptr, ptr } %1, 0
  call void %9(ptr %8, i64 %7)
  ret void
}

define { i8, i64, i64, i64, ptr } @Loop(i64 %0) {
_llgo_0:
  %1 = alloca { i8, i64, i64, i64, ptr }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 40, i1 false)
  %2 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = load { i8, i64, i64, i64, ptr }, ptr %1, align 8
  ret { i8, i64, i64, i64, ptr } %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"Loop$Poll"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  %2 = load i8, ptr %1, align 1
  switch i8 %2, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %3 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %3, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %4, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 3, ptr %5, align 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  %6 = getelementptr inbounds { i8, i64, i64, i64, ptr }, ptr %0, i32 0, i32 0
  store i8 4, ptr %6, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define void @"github.com/goplus/llgo/cl/_testpull/loop.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/loop.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/loop.init$guard", align 1
  call void @"github.com/goplus/llgo/async.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.AsyncFuture[int]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
