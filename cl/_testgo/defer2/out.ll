; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Defer" = type { ptr, i64, ptr, ptr }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@__llgo_defer = linkonce global ptr null
@2 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"world\00", align 1

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
  br i1 %18, label %_llgo_4, label %_llgo_7

_llgo_1:                                          ; preds = %_llgo_4
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @1, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 5, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = load i64, ptr %15, align 4
  %24 = or i64 %23, 1
  store i64 %24, ptr %15, align 4
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @2, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 3, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = load i64, ptr %15, align 4
  %30 = or i64 %29, 2
  store i64 %30, ptr %15, align 4
  store ptr blockaddress(@main, %_llgo_8), ptr %16, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_4
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 0
  store ptr @3, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 1
  store i64 5, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  %35 = load i64, ptr %15, align 4
  %36 = or i64 %35, 4
  store i64 %36, ptr %15, align 4
  store ptr blockaddress(@main, %_llgo_9), ptr %16, align 8
  br label %_llgo_5

_llgo_3:                                          ; No predecessors!
  ret i32 0

_llgo_4:                                          ; preds = %_llgo_0
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_2, %_llgo_1, %_llgo_7
  %37 = load i64, ptr %15, align 4
  %38 = and i64 %37, 4
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %_llgo_10, label %_llgo_11

_llgo_6:                                          ; preds = %_llgo_15
  call void @"github.com/goplus/llgo/internal/runtime.Rethrow"(ptr %8)
  unreachable

_llgo_7:                                          ; preds = %_llgo_0
  store ptr blockaddress(@main, %_llgo_6), ptr %16, align 8
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_15
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_15
  ret i32 0

_llgo_10:                                         ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %34)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_5
  %40 = and i64 %37, 2
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %42 = and i64 %37, 1
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %44 = load %"github.com/goplus/llgo/internal/runtime.Defer", ptr %10, align 8
  %45 = extractvalue %"github.com/goplus/llgo/internal/runtime.Defer" %44, 2
  %46 = call i32 @pthread_setspecific(i32 %7, ptr %45)
  %47 = load ptr, ptr %16, align 8
  indirectbr ptr %47, [label %_llgo_6, label %_llgo_8, label %_llgo_9]
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

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
