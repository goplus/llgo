; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Defer" = type { ptr, i64, ptr, ptr }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@__llgo_defer = linkonce global ptr null
@3 = private unnamed_addr constant [7 x i8] c"world\0A\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"bye\0A\00", align 1

define i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %0, 1
  %2 = icmp sgt i64 %1, 2
  ret i1 %2
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 5, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = call i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %5)
  %7 = load i32, ptr @__llgo_defer, align 4
  %8 = call ptr @pthread_getspecific(i32 %7)
  %9 = alloca i8, i64 196, align 1
  %10 = alloca i8, i64 32, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %10, i32 0, i32 1
  store i64 0, ptr %12, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %10, i32 0, i32 2
  store ptr %8, ptr %13, align 8
  %14 = call i32 @pthread_setspecific(i32 %7, ptr %10)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %10, i32 0, i32 1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %10, i32 0, i32 3
  %17 = call i32 @sigsetjmp(ptr %9, i32 0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %_llgo_5, label %_llgo_8

_llgo_1:                                          ; preds = %_llgo_5
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @2, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 5, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %22, 1
  %24 = add i64 %23, 1
  %25 = alloca i8, i64 %24, align 1
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr %25, %"github.com/goplus/llgo/internal/runtime.String" %22)
  %27 = load i64, ptr %15, align 4
  %28 = or i64 %27, 1
  store i64 %28, ptr %15, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  store ptr blockaddress(@main, %_llgo_9), ptr %16, align 8
  br label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_5
  %29 = load i64, ptr %15, align 4
  %30 = or i64 %29, 2
  store i64 %30, ptr %15, align 4
  br label %_llgo_2

_llgo_4:                                          ; No predecessors!
  ret i32 0

_llgo_5:                                          ; preds = %_llgo_0
  br i1 %6, label %_llgo_1, label %_llgo_3

_llgo_6:                                          ; preds = %_llgo_2, %_llgo_8
  %31 = load i64, ptr %15, align 4
  %32 = call i32 (ptr, ...) @printf(ptr @4)
  %33 = and i64 %31, 2
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %_llgo_10, label %_llgo_11

_llgo_7:                                          ; preds = %_llgo_13
  call void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr %8)
  unreachable

_llgo_8:                                          ; preds = %_llgo_0
  store ptr blockaddress(@main, %_llgo_7), ptr %16, align 8
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_13
  ret i32 0

_llgo_10:                                         ; preds = %_llgo_6
  %35 = call i32 (ptr, ...) @printf(ptr @3)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_6
  %36 = and i64 %31, 1
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %38 = call i32 (ptr, ...) @printf(ptr @1, ptr %26)
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %39 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %10, align 8
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %39, 2
  %41 = call i32 @pthread_setspecific(i32 %7, ptr %40)
  %42 = load ptr, ptr %16, align 8
  indirectbr ptr %42, [label %_llgo_7, label %_llgo_9]
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/internal/runtime.String")

declare i32 @printf(ptr, ...)

declare ptr @pthread_getspecific(i32)

declare i32 @pthread_setspecific(i32, ptr)

declare i32 @sigsetjmp(ptr, i32)

declare void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr)

define void @"main.init$after"() {
_llgo_0:
  %0 = load i32, ptr @__llgo_defer, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call i32 @pthread_key_create(ptr @__llgo_defer, ptr null)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare i32 @pthread_key_create(ptr, ptr)
