; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [6 x i8] c"store:", align 1
@1 = private unnamed_addr constant [4 x i8] c"ret:", align 1
@2 = private unnamed_addr constant [2 x i8] c"v:", align 1
@3 = private unnamed_addr constant [4 x i8] c"swp:", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"sync/atomic.init"()
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  call void @"sync/atomic.StoreInt64"(ptr %2, i64 100)
  %3 = call i64 @"sync/atomic.LoadInt64"(ptr %2)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 6, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %8 = call i64 @"sync/atomic.AddInt64"(ptr %2, i64 1)
  %9 = load i64, ptr %2, align 4
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @1, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 4, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @2, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 2, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %18 = call i1 @"sync/atomic.CompareAndSwapInt64"(ptr %2, i64 100, i64 102)
  %19 = load i64, ptr %2, align 4
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @3, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 4, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @2, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 2, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %28 = call i1 @"sync/atomic.CompareAndSwapInt64"(ptr %2, i64 101, i64 102)
  %29 = load i64, ptr %2, align 4
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @3, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 4, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @2, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 2, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %37)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %38 = call i64 @"sync/atomic.AddInt64"(ptr %2, i64 -1)
  %39 = load i64, ptr %2, align 4
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @1, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 4, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 0
  store ptr @2, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 1
  store i64 2, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %44, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %43)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %47)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %39)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"sync/atomic.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"sync/atomic.StoreInt64"(ptr, i64)

declare i64 @"sync/atomic.LoadInt64"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare i64 @"sync/atomic.AddInt64"(ptr, i64)

declare i1 @"sync/atomic.CompareAndSwapInt64"(ptr, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)
