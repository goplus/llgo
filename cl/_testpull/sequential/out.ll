; ModuleID = 'github.com/goplus/llgo/cl/_testpull/sequential'
source_filename = "github.com/goplus/llgo/cl/_testpull/sequential"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }

@"github.com/goplus/llgo/cl/_testpull/sequential.init$guard" = global i1 false, align 1

define { i8, i64, ptr, ptr } @Sequential() {
_llgo_0:
  %0 = alloca { i8, i64, ptr, ptr }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 32, i1 false)
  %1 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 1
  store i64 0, ptr %2, align 4
  %3 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 3
  store ptr null, ptr %4, align 8
  %5 = load { i8, i64, ptr, ptr }, ptr %0, align 8
  ret { i8, i64, ptr, ptr } %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"Sequential$Poll"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  %2 = load i8, ptr %1, align 1
  switch i8 %2, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %3 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 1, ptr %3, align 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds { i8, i64, ptr, ptr }, ptr %0, i32 0, i32 0
  store i8 2, ptr %4, align 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer

_llgo_3:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer

_llgo_4:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/sequential.StepA"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/sequential.StepA$1", ptr null })
  ret ptr %0
}

define void @"github.com/goplus/llgo/cl/_testpull/sequential.StepA$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = extractvalue { ptr, ptr } %0, 1
  %2 = extractvalue { ptr, ptr } %0, 0
  call void %2(ptr %1, i64 10)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testpull/sequential.StepB"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testpull/sequential.StepB$1", ptr undef }, ptr %2, 1
  %5 = call ptr @"github.com/goplus/llgo/async.Async[int]"({ ptr, ptr } %4)
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testpull/sequential.StepB$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = mul i64 %4, 2
  %6 = extractvalue { ptr, ptr } %1, 1
  %7 = extractvalue { ptr, ptr } %1, 0
  call void %7(ptr %6, i64 %5)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testpull/sequential.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testpull/sequential.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testpull/sequential.init$guard", align 1
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

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testpull/sequential.StepA$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testpull/sequential.StepA$1"({ ptr, ptr } %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
