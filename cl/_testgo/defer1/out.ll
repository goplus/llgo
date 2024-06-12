; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Defer" = type { ptr, i64, ptr, ptr }

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
  %2 = load i32, ptr @__llgo_defer, align 4
  %3 = call ptr @pthread_getspecific(i32 %2)
  %4 = alloca i8, i64 196, align 1
  %5 = alloca i8, i64 32, align 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %5, i32 0, i32 1
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %5, i32 0, i32 2
  store ptr %3, ptr %8, align 8
  %9 = call i32 @pthread_setspecific(i32 %2, ptr %5)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %5, i32 0, i32 3
  %12 = call i32 @sigsetjmp(ptr %4, i32 0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %_llgo_6, label %_llgo_7

_llgo_1:                                          ; No predecessors!
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_6
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @1, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 5, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %18 = load i64, ptr %10, align 4
  %19 = or i64 %18, 1
  store i64 %19, ptr %10, align 4
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @2, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 3, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = load i64, ptr %10, align 4
  %25 = or i64 %24, 2
  store i64 %25, ptr %10, align 4
  store ptr blockaddress(@main, %_llgo_8), ptr %11, align 8
  br label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_6
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @3, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 5, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  %30 = load i64, ptr %10, align 4
  %31 = or i64 %30, 4
  store i64 %31, ptr %10, align 4
  store ptr blockaddress(@main, %_llgo_9), ptr %11, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_7
  %32 = load i64, ptr %10, align 4
  %33 = and i64 %32, 4
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %_llgo_10, label %_llgo_11

_llgo_5:                                          ; preds = %_llgo_15
  call void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr %3)
  unreachable

_llgo_6:                                          ; preds = %_llgo_0
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @0, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 5, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = call i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %38)
  br i1 %39, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_0
  store ptr blockaddress(@main, %_llgo_5), ptr %11, align 8
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_15
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_15
  ret i32 0

_llgo_10:                                         ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_4
  %40 = and i64 %32, 2
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %42 = and i64 %32, 1
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  call void @"main.main$1"()
  %44 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %5, align 8
  %45 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %44, 2
  %46 = call i32 @pthread_setspecific(i32 %2, ptr %45)
  %47 = load ptr, ptr %11, align 8
  indirectbr ptr %47, [label %_llgo_5, label %_llgo_8, label %_llgo_9]
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

declare i32 @sigsetjmp(ptr, i32)

declare void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

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
