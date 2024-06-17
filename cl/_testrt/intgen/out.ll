; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%main.generator = type { i32 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = mul i64 %0, 4
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %2)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, i32 0, i32 1
  store i64 %0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, i32 0, i32 2
  store i64 %0, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, align 8
  %9 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %8, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi i64 [ -1, %_llgo_0 ], [ %11, %_llgo_2 ]
  %11 = add i64 %10, 1
  %12 = icmp slt i64 %11, %9
  br i1 %12, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %13 = extractvalue { ptr, ptr } %1, 1
  %14 = extractvalue { ptr, ptr } %1, 0
  %15 = call i32 %14(ptr %13)
  %16 = icmp slt i64 %11, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %16)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %8, 0
  %18 = getelementptr inbounds i32, ptr %17, i64 %11
  store i32 %15, ptr %18, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %8
}

define i32 @"main.(*generator).next"(ptr %0) {
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

define i32 @main(i32 %0, ptr %1) {
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
  %11 = icmp slt i64 %9, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %6, 0
  %13 = getelementptr inbounds i32, ptr %12, i64 %9
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr @0, i32 %14)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %18 = getelementptr inbounds { ptr }, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = alloca { ptr, ptr }, align 8
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr @"main.main$1", ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr %17, ptr %21, align 8
  %22 = load { ptr, ptr }, ptr %19, align 8
  %23 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %22)
  %24 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %23, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %25 = phi i64 [ -1, %_llgo_3 ], [ %26, %_llgo_5 ]
  %26 = add i64 %25, 1
  %27 = icmp slt i64 %26, %24
  br i1 %27, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %28 = icmp slt i64 %26, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %28)
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %23, 0
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ...) @printf(ptr @1, i32 %31)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %34 = getelementptr inbounds %main.generator, ptr %33, i32 0, i32 0
  store i32 1, ptr %34, align 4
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %36 = getelementptr inbounds { ptr }, ptr %35, i32 0, i32 0
  store ptr %33, ptr %36, align 8
  %37 = alloca { ptr, ptr }, align 8
  %38 = getelementptr inbounds { ptr, ptr }, ptr %37, i32 0, i32 0
  store ptr @"main.next$bound", ptr %38, align 8
  %39 = getelementptr inbounds { ptr, ptr }, ptr %37, i32 0, i32 1
  store ptr %35, ptr %39, align 8
  %40 = load { ptr, ptr }, ptr %37, align 8
  %41 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %40)
  %42 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %41, 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %43 = phi i64 [ -1, %_llgo_6 ], [ %44, %_llgo_8 ]
  %44 = add i64 %43, 1
  %45 = icmp slt i64 %44, %42
  br i1 %45, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %46 = icmp slt i64 %44, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %46)
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %41, 0
  %48 = getelementptr inbounds i32, ptr %47, i64 %44
  %49 = load i32, ptr %48, align 4
  %50 = call i32 (ptr, ...) @printf(ptr @2, i32 %49)
  br label %_llgo_7

_llgo_9:                                          ; preds = %_llgo_7
  ret i32 0
}

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

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @rand()

define linkonce i32 @__llgo_stub.rand(ptr %0) {
_llgo_0:
  %1 = tail call i32 @rand()
  ret i32 %1
}

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define i32 @"main.next$bound"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = call i32 @"main.(*generator).next"(ptr %2)
  ret i32 %3
}
