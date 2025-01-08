; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%main.generator = type { i32 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @main.genInts(i64 %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 4)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_2 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue { ptr, ptr } %1, 1
  %8 = extractvalue { ptr, ptr } %1, 0
  %9 = call i32 %8(ptr %7)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %12 = icmp slt i64 %5, 0
  %13 = icmp sge i64 %5, %11
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i32, ptr %10, i64 %5
  store i32 %9, ptr %15, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } { ptr @__llgo_stub.rand, ptr null })
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_2 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %9 = icmp slt i64 %5, 0
  %10 = icmp sge i64 %5, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = getelementptr inbounds i32, ptr %7, i64 %5
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr @0, i32 %13)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %15, align 4
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = insertvalue { ptr, ptr } { ptr @"main.main$1", ptr undef }, ptr %16, 1
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %18)
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %21 = phi i64 [ -1, %_llgo_3 ], [ %22, %_llgo_5 ]
  %22 = add i64 %21, 1
  %23 = icmp slt i64 %22, %20
  br i1 %23, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, 0
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, 1
  %26 = icmp slt i64 %22, 0
  %27 = icmp sge i64 %22, %25
  %28 = or i1 %27, %26
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %28)
  %29 = getelementptr inbounds i32, ptr %24, i64 %22
  %30 = load i32, ptr %29, align 4
  %31 = call i32 (ptr, ...) @printf(ptr @1, i32 %30)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %33 = getelementptr inbounds %main.generator, ptr %32, i32 0, i32 0
  store i32 1, ptr %33, align 4
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %35 = getelementptr inbounds { ptr }, ptr %34, i32 0, i32 0
  store ptr %32, ptr %35, align 8
  %36 = insertvalue { ptr, ptr } { ptr @"main.next$bound", ptr undef }, ptr %34, 1
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @main.genInts(i64 5, { ptr, ptr } %36)
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %39 = phi i64 [ -1, %_llgo_6 ], [ %40, %_llgo_8 ]
  %40 = add i64 %39, 1
  %41 = icmp slt i64 %40, %38
  br i1 %41, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 0
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  %44 = icmp slt i64 %40, 0
  %45 = icmp sge i64 %40, %43
  %46 = or i1 %45, %44
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %46)
  %47 = getelementptr inbounds i32, ptr %42, i64 %40
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, ...) @printf(ptr @2, i32 %48)
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

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare i32 @rand()

define linkonce i32 @__llgo_stub.rand(ptr %0) {
_llgo_0:
  %1 = tail call i32 @rand()
  ret i32 %1
}

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i32 @"main.next$bound"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = call i32 @"main.(*generator).next"(ptr %2)
  ret i32 %3
}
