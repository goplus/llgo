; ModuleID = 'async'
source_filename = "async"

%"github.com/goplus/llgo/x/async.Promise[int]" = type { ptr, i64 }

@"async.init$guard" = global i1 false, align 1

define ptr @async.GenInts() presplitcoroutine {
entry:
  %promise = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %need.dyn.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.dyn.alloc, label %alloc, label %_llgo_5

alloc:                                            ; preds = %entry
  %frame.size = call i64 @llvm.coro.size.i64()
  %frame = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %frame.size)
  br label %_llgo_5

clean:                                            ; preds = %_llgo_8, %_llgo_7, %_llgo_6, %_llgo_5
  %0 = call ptr @llvm.coro.free(token %id, ptr %hdl)
  br label %suspend

suspend:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_6, %_llgo_5, %clean
  %1 = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %promise

trap:                                             ; preds = %_llgo_8
  call void @llvm.trap()
  unreachable

_llgo_5:                                          ; preds = %alloc, %entry
  %frame1 = phi ptr [ null, %entry ], [ %frame, %alloc ]
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %frame1)
  store ptr %hdl, ptr %promise, align 8
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 1)
  %2 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %2, label %suspend [
    i8 0, label %_llgo_6
    i8 1, label %clean
  ]

_llgo_6:                                          ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 2)
  %3 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %3, label %suspend [
    i8 0, label %_llgo_7
    i8 1, label %clean
  ]

_llgo_7:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 3)
  %4 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %4, label %suspend [
    i8 0, label %_llgo_8
    i8 1, label %clean
  ]

_llgo_8:                                          ; preds = %_llgo_7
  %5 = call i8 @llvm.coro.suspend(token %id, i1 true)
  switch i8 %5, label %suspend [
    i8 0, label %trap
    i8 1, label %clean
  ]
}

define i64 @async.UseGenInts() {
_llgo_0:
  %0 = call ptr @async.WrapGenInts()
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %1 = call i64 @"github.com/goplus/llgo/x/async.(*Promise).Value[int]"(ptr %0)
  %2 = add i64 %3, %1
  call void @"github.com/goplus/llgo/x/async.(*Promise).Next[int]"(ptr %0)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret i64 %3

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = phi i64 [ 0, %_llgo_0 ], [ %2, %_llgo_1 ]
  %4 = call i1 @"github.com/goplus/llgo/x/async.(*Promise).Done[int]"(ptr %0)
  br i1 %4, label %_llgo_2, label %_llgo_1
}

define ptr @async.WrapGenInts() presplitcoroutine {
entry:
  %promise = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %need.dyn.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.dyn.alloc, label %alloc, label %_llgo_5

alloc:                                            ; preds = %entry
  %frame.size = call i64 @llvm.coro.size.i64()
  %frame = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %frame.size)
  br label %_llgo_5

clean:                                            ; preds = %_llgo_5
  %0 = call ptr @llvm.coro.free(token %id, ptr %hdl)
  br label %suspend

suspend:                                          ; preds = %_llgo_5, %clean
  %1 = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %promise

trap:                                             ; preds = %_llgo_5
  call void @llvm.trap()
  unreachable

_llgo_5:                                          ; preds = %alloc, %entry
  %frame1 = phi ptr [ null, %entry ], [ %frame, %alloc ]
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %frame1)
  store ptr %hdl, ptr %promise, align 8
  %2 = call ptr @async.GenInts()
  %3 = call i8 @llvm.coro.suspend(token %id, i1 true)
  switch i8 %3, label %suspend [
    i8 0, label %trap
    i8 1, label %clean
  ]
}

define void @async.init() {
_llgo_0:
  %0 = load i1, ptr @"async.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"async.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr)

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token)

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64()

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly)

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token)

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap()

define void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/x/async.Promise[int]", ptr %0, i32 0, i32 1
  store i64 %1, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1)

define i1 @"github.com/goplus/llgo/x/async.(*Promise).Done[int]"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/x/async.Promise[int]", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i1 @llvm.coro.done(ptr %2)
  %4 = zext i1 %3 to i64
  %5 = trunc i64 %4 to i8
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

define i64 @"github.com/goplus/llgo/x/async.(*Promise).Value[int]"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/x/async.Promise[int]", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define void @"github.com/goplus/llgo/x/async.(*Promise).Next[int]"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/x/async.Promise[int]", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @llvm.coro.resume(ptr %2)
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly)

declare void @llvm.coro.resume(ptr)

