; ModuleID = 'async'
source_filename = "async"

%"github.com/goplus/llgo/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/x/async.Promise[int]" = type { ptr, i64 }

@"async.init$guard" = global i1 false, align 1
@__llgo_defer = linkonce global i32 0, align 4
@0 = private unnamed_addr constant [16 x i8] c"GenIntsWithDefer", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [6 x i8] c"panic:", align 1

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

define ptr @async.GenIntsWithDefer() presplitcoroutine {
entry:
  %promise = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %need.dyn.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.dyn.alloc, label %alloc, label %_llgo_5

alloc:                                            ; preds = %entry
  %frame.size = call i64 @llvm.coro.size.i64()
  %frame = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %frame.size)
  br label %_llgo_5

clean:                                            ; preds = %_llgo_6, %_llgo_9
  %0 = call ptr @llvm.coro.free(token %id, ptr %hdl)
  br label %suspend

suspend:                                          ; preds = %_llgo_6, %_llgo_9, %clean
  %1 = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %promise

trap:                                             ; preds = %_llgo_6
  call void @llvm.trap()
  unreachable

_llgo_5:                                          ; preds = %alloc, %entry
  %frame1 = phi ptr [ null, %entry ], [ %frame, %alloc ]
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %frame1)
  store ptr %hdl, ptr %promise, align 8
  %2 = alloca ptr, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 8)
  %4 = load i32, ptr @__llgo_defer, align 4
  %5 = call ptr @pthread_getspecific(i32 %4)
  %6 = alloca i8, i64 196, align 1
  %7 = alloca i8, i64 40, align 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 2
  store ptr %5, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 3
  store ptr blockaddress(@async.GenIntsWithDefer, %_llgo_7), ptr %11, align 8
  %12 = call i32 @pthread_setspecific(i32 %4, ptr %7)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 3
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 4
  %16 = call i32 @sigsetjmp(ptr %6, i32 0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @0, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 16, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = load ptr, ptr @_llgo_string, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %21, ptr %23, align 8
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 0
  store ptr %22, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 1
  store ptr %23, ptr %26, align 8
  %27 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %27)
  unreachable
  %28 = load ptr, ptr %3, align 8
  %29 = call i8 @llvm.coro.suspend(token %id, i1 true)
  switch i8 %29, label %suspend [
    i8 0, label %trap
    i8 1, label %clean
  ]

_llgo_7:                                          ; preds = %_llgo_10
  store ptr blockaddress(@async.GenIntsWithDefer, %_llgo_8), ptr %14, align 8
  %30 = load i64, ptr %13, align 4
  call void @"async.GenIntsWithDefer$1"()
  %31 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, align 8
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %31, 2
  %33 = call i32 @pthread_setspecific(i32 %4, ptr %32)
  %34 = load ptr, ptr %15, align 8
  indirectbr ptr %34, [label %_llgo_8]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_7
  call void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr %5)
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  %35 = load ptr, ptr %3, align 8
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 1)
  %36 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %36, label %suspend [
    i8 0, label %_llgo_6
    i8 1, label %clean
  ]

_llgo_10:                                         ; preds = %_llgo_5
  store ptr blockaddress(@async.GenIntsWithDefer, %_llgo_8), ptr %15, align 8
  %37 = load ptr, ptr %14, align 8
  indirectbr ptr %37, [label %_llgo_8, label %_llgo_7]

_llgo_11:                                         ; No predecessors!
}

define void @"async.GenIntsWithDefer$1"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/internal/runtime.Recover"()
  %1 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %0, %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer)
  %2 = xor i1 %1, true
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i64 0
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @1, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 6, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  %9 = load ptr, ptr @_llgo_string, align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %8, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, i32 0, i32 0
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, i32 0, i32 1
  store ptr %10, ptr %13, align 8
  %14 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %14, ptr %4, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i64 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %3, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 2, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 2, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  %21 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
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
  call void @fmt.init()
  call void @"async.init$after"()
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

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @pthread_getspecific(i32)

declare i32 @pthread_setspecific(i32, ptr)

declare i32 @sigsetjmp(ptr, i32)

declare void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr)

define void @"async.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load i32, ptr @__llgo_defer, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call i32 @pthread_key_create(ptr @__llgo_defer, ptr null)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/internal/runtime.Recover"()

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/internal/runtime.Slice")

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

declare void @fmt.init()

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly)

declare void @llvm.coro.resume(ptr)

declare i32 @pthread_key_create(ptr, ptr)

