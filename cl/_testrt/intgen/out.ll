; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%main.generator = type { i32 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = mul i64 %0, 4
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %2)
  %4 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr %3, i64 %0, i64 %0)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %4, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi i64 [ -1, %_llgo_0 ], [ %7, %_llgo_2 ]
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %7, %5
  br i1 %8, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %9 = extractvalue { ptr, ptr } %1, 1
  %10 = extractvalue { ptr, ptr } %1, 0
  %11 = call i32 %10(ptr %9)
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %4, 0
  %13 = getelementptr inbounds i32, ptr %12, i64 %7
  store i32 %11, ptr %13, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %4
}

define i32 @"(*main.generator).next"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.generator, ptr %0, i32 0, i32 0
  %2 = load i32, ptr %1, align 4
  %3 = add i32 %2, 1
  %4 = getelementptr inbounds %main.generator, ptr %0, i32 0, i32 0
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %main.generator, ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = alloca { ptr, ptr }, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  store ptr @__llgo_stub.rand, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  store ptr null, ptr %4, align 8
  %5 = load { ptr, ptr }, ptr %2, align 8
  %6 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %5)
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %6, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi i64 [ -1, %_llgo_0 ], [ %9, %_llgo_2 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, %7
  br i1 %10, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %6, 0
  %12 = getelementptr inbounds i32, ptr %11, i64 %9
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr @0, i32 %13)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %15, align 4
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = alloca { ptr, ptr }, align 8
  %19 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 0
  store ptr @"main.main$1", ptr %19, align 8
  %20 = getelementptr inbounds { ptr, ptr }, ptr %18, i32 0, i32 1
  store ptr %16, ptr %20, align 8
  %21 = load { ptr, ptr }, ptr %18, align 8
  %22 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %21)
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %24 = phi i64 [ -1, %_llgo_3 ], [ %25, %_llgo_5 ]
  %25 = add i64 %24, 1
  %26 = icmp slt i64 %25, %23
  br i1 %26, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %27 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, 0
  %28 = getelementptr inbounds i32, ptr %27, i64 %25
  %29 = load i32, ptr %28, align 4
  %30 = call i32 (ptr, ...) @printf(ptr @1, i32 %29)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %32 = getelementptr inbounds %main.generator, ptr %31, i32 0, i32 0
  store i32 1, ptr %32, align 4
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %34 = getelementptr inbounds { ptr }, ptr %33, i32 0, i32 0
  store ptr %31, ptr %34, align 8
  %35 = alloca { ptr, ptr }, align 8
  %36 = getelementptr inbounds { ptr, ptr }, ptr %35, i32 0, i32 0
  store ptr @"main.next$bound", ptr %36, align 8
  %37 = getelementptr inbounds { ptr, ptr }, ptr %35, i32 0, i32 1
  store ptr %33, ptr %37, align 8
  %38 = load { ptr, ptr }, ptr %35, align 8
  %39 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %38)
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %39, 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %41 = phi i64 [ -1, %_llgo_6 ], [ %42, %_llgo_8 ]
  %42 = add i64 %41, 1
  %43 = icmp slt i64 %42, %40
  br i1 %43, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %44 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %39, 0
  %45 = getelementptr inbounds i32, ptr %44, i64 %42
  %46 = load i32, ptr %45, align 4
  %47 = call i32 (ptr, ...) @printf(ptr @2, i32 %46)
  br label %_llgo_7

_llgo_9:                                          ; preds = %_llgo_7
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @rand()

define linkonce i32 @__llgo_stub.rand(ptr %0) {
_llgo_0:
  %1 = tail call i32 @rand()
  ret i32 %1
}

declare i32 @printf(ptr, ...)

define i32 @"main.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, 2
  %5 = extractvalue { ptr } %1, 0
  store i32 %4, ptr %5, align 4
  %6 = extractvalue { ptr } %1, 0
  %7 = load i32, ptr %6, align 4
  ret i32 %7
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define i32 @"main.next$bound"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = call i32 @"(*main.generator).next"(ptr %2)
  ret i32 %3
}
