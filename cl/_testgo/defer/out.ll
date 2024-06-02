; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Defer" = type { { ptr, ptr }, i64, ptr }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@_llgo_string = linkonce global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@__llgo_defer = linkonce global ptr null
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
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
  store i64 5, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = load ptr, ptr @_llgo_string, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %3, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 0
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, align 8
  call void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface" %9)
  unreachable
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  %1 = load i32, ptr @__llgo_defer, align 4
  %2 = icmp eq i32 %1, ptr null
  br i1 %2, label %_llgo_3, label %_llgo_4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %3 = call i32 @pthread_key_create(ptr @__llgo_defer, ptr null)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_1
  call void @"main.init$abi"()
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = load i32, ptr @__llgo_defer, align 4
  %3 = call ptr @pthread_getspecific(i32 %2)
  %4 = alloca i8, i64 32, align 1
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 0
  store ptr @main._llgo_defer, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 2
  store ptr %3, ptr %7, align 8
  %8 = call i32 @pthread_setspecific(i32 %2, ptr %4)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = or i64 %10, 1
  store i64 %11, ptr %9, align 4
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @1, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 5, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call i1 @main.f(%"github.com/goplus/llgo/internal/runtime.String" %15)
  br i1 %16, label %_llgo_2, label %_llgo_4

_llgo_1:                                          ; No predecessors!
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @2, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 5, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = load i32, ptr @__llgo_defer, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = or i64 %23, 2
  store i64 %24, ptr %22, align 4
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @3, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 3, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = load i32, ptr @__llgo_defer, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = or i64 %31, 4
  store i64 %32, ptr %30, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  call void @main._llgo_defer(i64 %34)
  ret i32 0

_llgo_4:                                          ; preds = %_llgo_0
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @4, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 5, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = load i32, ptr @__llgo_defer, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Defer", ptr %4, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = or i64 %41, 8
  store i64 %42, ptr %40, align 4
  call void @main.fail()
  br label %_llgo_3
}

define void @"main.init$abi"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.TracePanic"(%"github.com/goplus/llgo/internal/runtime.eface")

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

define void @main._llgo_defer(i64 %0) {
_llgo_0:
  %1 = and i64 %0, 1
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"main.main$1"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = and i64 %0, 2
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %20)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %5 = and i64 %0, 4
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %7 = and i64 %0, 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

declare ptr @pthread_getspecific(i32)

declare i32 @pthread_setspecific(i32, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare i32 @pthread_key_create(ptr, ptr)
