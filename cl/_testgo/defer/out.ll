; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Defer" = type { { ptr, ptr }, i64, ptr, i64 }

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
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = load ptr, ptr @__llgo_defer, align 8
  %3 = call ptr @pthread_getspecific(ptr %2)
  %4 = alloca i8, i64 40, align 1
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 2
  store ptr %3, ptr %7, align 8
  %8 = call i32 @pthread_setspecific(ptr %2, ptr %4)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 3
  %11 = load i64, ptr %9, align 4
  %12 = or i64 %11, 1
  store i64 %12, ptr %9, align 4
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @0, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 5, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = call i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %16)
  br i1 %17, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; No predecessors!
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @1, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 5, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = load i64, ptr %9, align 4
  %23 = or i64 %22, 2
  store i64 %23, ptr %9, align 4
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @2, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 3, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = load i64, ptr %9, align 4
  %29 = or i64 %28, 4
  store i64 %29, ptr %9, align 4
  store i64 0, ptr %10, align 4
  br label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_0
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @3, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 5, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = load i64, ptr %9, align 4
  %35 = or i64 %34, 8
  store i64 %35, ptr %9, align 4
  store i64 1, ptr %10, align 4
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %36 = load i64, ptr %9, align 4
  %37 = and i64 %36, 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_14
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_14
  ret i32 0

_llgo_7:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_4
  %39 = and i64 %36, 4
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %41 = and i64 %36, 2
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %43 = and i64 %36, 1
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  call void @"main.main$1"()
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %45 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, align 8
  %46 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %45, 2
  %47 = call i32 @pthread_setspecific(ptr %2, ptr %46)
  %48 = load i64, ptr %10, align 4
  switch i64 %48, label %_llgo_5 [
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
