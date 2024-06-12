; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Defer" = type { ptr, i64, ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@__llgo_defer = linkonce global ptr null
@1 = private unnamed_addr constant [14 x i8] c"panic message\00", align 1
@_llgo_string = linkonce global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@4 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@5 = private unnamed_addr constant [3 x i8] c"hi\00", align 1

define i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %0, 1
  %2 = icmp sgt i64 %1, 2
  ret i1 %2
}

define void @main.fail() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 3, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
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
  br i1 %15, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; No predecessors!
  ret void

_llgo_2:                                          ; preds = %_llgo_5
  %16 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %17 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %7, align 8
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %17, 2
  %19 = call i32 @pthread_setspecific(i32 %4, ptr %18)
  %20 = load ptr, ptr %13, align 8
  indirectbr ptr %20, [label %_llgo_3]

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr %5)
  unreachable

_llgo_4:                                          ; preds = %_llgo_0
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @1, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 13, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %24, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %27, i32 0, i32 0
  store ptr %25, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %27, i32 0, i32 1
  store ptr %26, ptr %29, align 8
  %30 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %27, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %30)
  unreachable

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@main.fail, %_llgo_3), ptr %13, align 8
  br label %_llgo_2
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
  store ptr @3, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 5, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %18 = load i64, ptr %10, align 4
  %19 = or i64 %18, 1
  store i64 %19, ptr %10, align 4
  call void @main.fail()
  store ptr blockaddress(@main, %_llgo_8), ptr %11, align 8
  br label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_6
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @4, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 5, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = load i64, ptr %10, align 4
  %25 = or i64 %24, 2
  store i64 %25, ptr %10, align 4
  store ptr blockaddress(@main, %_llgo_9), ptr %11, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2, %_llgo_7
  %26 = load i64, ptr %10, align 4
  %27 = and i64 %26, 2
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %_llgo_10, label %_llgo_11

_llgo_5:                                          ; preds = %_llgo_13
  call void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr %3)
  unreachable

_llgo_6:                                          ; preds = %_llgo_0
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @2, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 5, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = call i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %32)
  br i1 %33, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_0
  store ptr blockaddress(@main, %_llgo_5), ptr %11, align 8
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_13
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_13
  ret i32 0

_llgo_10:                                         ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_4
  %34 = and i64 %26, 1
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  call void @"main.main$1"()
  %36 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %5, align 8
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %36, 2
  %38 = call i32 @pthread_setspecific(i32 %2, ptr %37)
  %39 = load ptr, ptr %11, align 8
  indirectbr ptr %39, [label %_llgo_5, label %_llgo_8, label %_llgo_9]
}

declare ptr @pthread_getspecific(i32)

declare i32 @pthread_setspecific(i32, ptr)

declare i32 @sigsetjmp(ptr, i32)

declare void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr)

define void @"main.init$after"() {
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

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.main$1"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @5, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 2, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare i32 @pthread_key_create(ptr, ptr)
