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
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %8, 0
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %8, 1
  %18 = icmp slt i64 %11, 0
  %19 = icmp sge i64 %11, %17
  %20 = or i1 %19, %18
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %20)
  %21 = getelementptr inbounds i32, ptr %16, i64 %11
  store i32 %15, ptr %21, align 4
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
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %6, 0
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %6, 1
  %13 = icmp slt i64 %9, 0
  %14 = icmp sge i64 %9, %12
  %15 = or i1 %14, %13
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %15)
  %16 = getelementptr inbounds i32, ptr %11, i64 %9
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr @0, i32 %17)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %19, align 4
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %21 = getelementptr inbounds { ptr }, ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = alloca { ptr, ptr }, align 8
  %23 = getelementptr inbounds { ptr, ptr }, ptr %22, i32 0, i32 0
  store ptr @"main.main$1", ptr %23, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %22, i32 0, i32 1
  store ptr %20, ptr %24, align 8
  %25 = load { ptr, ptr }, ptr %22, align 8
  %26 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %25)
  %27 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %28 = phi i64 [ -1, %_llgo_3 ], [ %29, %_llgo_5 ]
  %29 = add i64 %28, 1
  %30 = icmp slt i64 %29, %27
  br i1 %30, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %31 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, 0
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, 1
  %33 = icmp slt i64 %29, 0
  %34 = icmp sge i64 %29, %32
  %35 = or i1 %34, %33
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %35)
  %36 = getelementptr inbounds i32, ptr %31, i64 %29
  %37 = load i32, ptr %36, align 4
  %38 = call i32 (ptr, ...) @printf(ptr @1, i32 %37)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %40 = getelementptr inbounds %main.generator, ptr %39, i32 0, i32 0
  store i32 1, ptr %40, align 4
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %42 = getelementptr inbounds { ptr }, ptr %41, i32 0, i32 0
  store ptr %39, ptr %42, align 8
  %43 = alloca { ptr, ptr }, align 8
  %44 = getelementptr inbounds { ptr, ptr }, ptr %43, i32 0, i32 0
  store ptr @"main.next$bound", ptr %44, align 8
  %45 = getelementptr inbounds { ptr, ptr }, ptr %43, i32 0, i32 1
  store ptr %41, ptr %45, align 8
  %46 = load { ptr, ptr }, ptr %43, align 8
  %47 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %46)
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %47, 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %49 = phi i64 [ -1, %_llgo_6 ], [ %50, %_llgo_8 ]
  %50 = add i64 %49, 1
  %51 = icmp slt i64 %50, %48
  br i1 %51, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %52 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %47, 0
  %53 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %47, 1
  %54 = icmp slt i64 %50, 0
  %55 = icmp sge i64 %50, %53
  %56 = or i1 %55, %54
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %56)
  %57 = getelementptr inbounds i32, ptr %52, i64 %50
  %58 = load i32, ptr %57, align 4
  %59 = call i32 (ptr, ...) @printf(ptr @2, i32 %58)
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
