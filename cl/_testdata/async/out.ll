; ModuleID = 'github.com/goplus/llgo/cl/_testdata/async'
source_filename = "github.com/goplus/llgo/cl/_testdata/async"

%"github.com/goplus/llgo/internal/runtime.Defer" = type { ptr, i64, ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/x/async.Promise[int]" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testdata/async.init$guard" = global i1 false, align 1
@__llgo_defer = linkonce global i32 0, align 4
@0 = private unnamed_addr constant [16 x i8] c"GenIntsWithDefer", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [6 x i8] c"panic:", align 1

define ptr @"github.com/goplus/llgo/cl/_testdata/async.GenInts"() #0 {
entry:
  %promise = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %need.dyn.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.dyn.alloc, label %alloc, label %_llgo_4

alloc:                                            ; preds = %entry
  %frame.size = call i64 @llvm.coro.size.i64()
  %frame = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %frame.size)
  br label %_llgo_4

clean:                                            ; preds = %_llgo_7, %_llgo_6, %_llgo_5, %_llgo_4
  %0 = call ptr @llvm.coro.free(token %id, ptr %hdl)
  br label %suspend

suspend:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_4, %clean
  %1 = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %promise

_llgo_4:                                          ; preds = %alloc, %entry
  %frame1 = phi ptr [ null, %entry ], [ %frame, %alloc ]
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %frame1)
  store ptr %hdl, ptr %promise, align 8
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 1)
  %2 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %2, label %suspend [
    i8 0, label %_llgo_5
    i8 1, label %clean
  ]

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 2)
  %3 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %3, label %suspend [
    i8 0, label %_llgo_6
    i8 1, label %clean
  ]

_llgo_6:                                          ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 3)
  %4 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %4, label %suspend [
    i8 0, label %_llgo_7
    i8 1, label %clean
  ]

_llgo_7:                                          ; preds = %_llgo_6
  br label %clean
}

define ptr @"github.com/goplus/llgo/cl/_testdata/async.GenIntsWithDefer"() #0 {
entry:
  %promise = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %need.dyn.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.dyn.alloc, label %alloc, label %_llgo_4

alloc:                                            ; preds = %entry
  %frame.size = call i64 @llvm.coro.size.i64()
  %frame = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %frame.size)
  br label %_llgo_4

clean:                                            ; preds = %_llgo_5, %_llgo_8
  %0 = call ptr @llvm.coro.free(token %id, ptr %hdl)
  br label %suspend

suspend:                                          ; preds = %_llgo_8, %clean
  %1 = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %promise

_llgo_4:                                          ; preds = %alloc, %entry
  %frame1 = phi ptr [ null, %entry ], [ %frame, %alloc ]
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %frame1)
  store ptr %hdl, ptr %promise, align 8
  %2 = alloca ptr, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 8)
  %4 = load i32, ptr @__llgo_defer, align 4
  %5 = call ptr @pthread_getspecific(i32 %4)
  %6 = alloca i8, i64 196, align 1
  %7 = alloca i8, i64 32, align 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 2
  store ptr %5, ptr %10, align 8
  %11 = call i32 @pthread_setspecific(i32 %4, ptr %7)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, i32 0, i32 3
  %14 = call i32 @sigsetjmp(ptr %6, i32 0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %_llgo_8, label %_llgo_9

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_7
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @0, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 16, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %19, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i32 0, i32 0
  store ptr %20, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i32 0, i32 1
  store ptr %21, ptr %24, align 8
  %25 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %25)
  unreachable
  %26 = load ptr, ptr %3, align 8
  br label %clean

_llgo_6:                                          ; preds = %_llgo_9
  %27 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/cl/_testdata/async.GenIntsWithDefer$1"()
  %28 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, align 8
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %28, 2
  %30 = call i32 @pthread_setspecific(i32 %4, ptr %29)
  %31 = load ptr, ptr %13, align 8
  indirectbr ptr %31, [label %_llgo_7]

_llgo_7:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr %5)
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  %32 = load ptr, ptr %3, align 8
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 1)
  %33 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %33, label %suspend [
    i8 0, label %_llgo_5
    i8 1, label %clean
  ]

_llgo_9:                                          ; preds = %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testdata/async.GenIntsWithDefer", %_llgo_7), ptr %13, align 8
  br label %_llgo_6

_llgo_10:                                         ; No predecessors!
}

define void @"github.com/goplus/llgo/cl/_testdata/async.GenIntsWithDefer$1"() {
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

define i64 @"github.com/goplus/llgo/cl/_testdata/async.UseGenInts"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testdata/async.WrapGenInts"()
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %1 = call i64 @"github.com/goplus/llgo/x/async.(*Promise).Next[int]"(ptr %0)
  %2 = add i64 %3, %1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret i64 %3

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = phi i64 [ 0, %_llgo_0 ], [ %2, %_llgo_1 ]
  %4 = call i1 @"github.com/goplus/llgo/x/async.(*Promise).Done[int]"(ptr %0)
  br i1 %4, label %_llgo_2, label %_llgo_1
}

define ptr @"github.com/goplus/llgo/cl/_testdata/async.WrapGenInts"() #0 {
entry:
  %promise = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %need.dyn.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.dyn.alloc, label %alloc, label %_llgo_4

alloc:                                            ; preds = %entry
  %frame.size = call i64 @llvm.coro.size.i64()
  %frame = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %frame.size)
  br label %_llgo_4

clean:                                            ; preds = %_llgo_4
  %0 = call ptr @llvm.coro.free(token %id, ptr %hdl)
  br label %suspend

suspend:                                          ; preds = %clean
  %1 = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %promise

_llgo_4:                                          ; preds = %alloc, %entry
  %frame1 = phi ptr [ null, %entry ], [ %frame, %alloc ]
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %frame1)
  store ptr %hdl, ptr %promise, align 8
  %2 = call ptr @"github.com/goplus/llgo/cl/_testdata/async.GenInts"()
  br label %clean
}

define void @"github.com/goplus/llgo/cl/_testdata/async.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/async.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/async.init$guard", align 1
  call void @fmt.init()
  call void @"github.com/goplus/llgo/cl/_testdata/async.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #1

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #2

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #3

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr, i64)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @pthread_getspecific(i32)

declare i32 @pthread_setspecific(i32, ptr)

declare i32 @sigsetjmp(ptr, i32)

declare void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr)

define void @"github.com/goplus/llgo/cl/_testdata/async.init$after"() {
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

define i64 @"github.com/goplus/llgo/x/async.(*Promise).Next[int]"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/x/async.Promise[int]", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @llvm.coro.resume(ptr %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/x/async.Promise[int]", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  ret i64 %4
}

declare void @fmt.init()

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #5

declare void @llvm.coro.resume(ptr)

declare i32 @pthread_key_create(ptr, ptr)

attributes #0 = { "presplitcoroutine" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
attributes #5 = { nounwind memory(argmem: readwrite) }
