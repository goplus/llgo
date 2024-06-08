; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Defer" = type { i64, ptr, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@__llgo_defer = linkonce global ptr null
@0 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@4 = private unnamed_addr constant [3 x i8] c"hi\00", align 1

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
  %2 = load ptr, ptr @__llgo_defer, align 8
  %3 = call ptr @pthread_getspecific(ptr %2)
  %4 = alloca i8, i64 24, align 1
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 0
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  store ptr %3, ptr %6, align 8
  %7 = call i32 @pthread_setspecific(ptr %2, ptr %4)
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 2
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @0, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 5, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = call i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %13)
  br i1 %14, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; No predecessors!
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @1, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 5, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = load i64, ptr %8, align 4
  %20 = or i64 %19, 1
  store i64 %20, ptr %8, align 4
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @2, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 3, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = load i64, ptr %8, align 4
  %26 = or i64 %25, 2
  store i64 %26, ptr %8, align 4
  store i64 0, ptr %9, align 4
  br label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_0
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 0
  store ptr @3, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 1
  store i64 5, ptr %29, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %31 = load i64, ptr %8, align 4
  %32 = or i64 %31, 4
  store i64 %32, ptr %8, align 4
  store i64 1, ptr %9, align 4
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %33 = load i64, ptr %8, align 4
  %34 = and i64 %33, 4
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_12
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_12
  ret i32 0

_llgo_7:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_4
  %36 = and i64 %33, 2
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %38 = and i64 %33, 1
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  call void @"main.main$1"()
  %40 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, align 8
  %41 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %40, 2
  %42 = call i32 @pthread_setspecific(ptr %2, i64 %41)
  %43 = load i64, ptr %9, align 4
  switch i64 %43, label %_llgo_5 [
    i64 1, label %_llgo_6
  ]
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.main$1"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @4, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 2, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @pthread_getspecific(i32)

declare i32 @pthread_setspecific(i32, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @__llgo_defer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call i32 @pthread_key_create(ptr @__llgo_defer, ptr null)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare i32 @pthread_key_create(ptr, ptr)
