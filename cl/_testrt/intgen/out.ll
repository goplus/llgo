; ModuleID = 'github.com/goplus/llgo/cl/_testrt/intgen'
source_filename = "github.com/goplus/llgo/cl/_testrt/intgen"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testrt/intgen.generator" = type { i32 }

@"github.com/goplus/llgo/cl/_testrt/intgen.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(ptr %0, i64 %1, ptr %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(ptr %3, i64 %1, i64 %1, i64 4)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi i64 [ -1, %_llgo_0 ], [ %7, %_llgo_2 ]
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %7, %5
  br i1 %8, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %9 = load { ptr, ptr }, ptr %2, align 8
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call i32 %11(ptr %10)
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 0
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 1
  %15 = icmp slt i64 %7, 0
  %16 = icmp sge i64 %7, %14
  %17 = or i1 %16, %15
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %17)
  %18 = getelementptr inbounds i32, ptr %13, i64 %7
  store i32 %12, ptr %18, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %0, align 8
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %2 = load i32, ptr %1, align 4
  %3 = add i32 %2, 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

define void @"github.com/goplus/llgo/cl/_testrt/intgen.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/intgen.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/intgen.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/intgen.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %1 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @__llgo_stub.rand, ptr null }, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(ptr %0, i64 5, ptr %1)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, align 8
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
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i32 %13, ptr %14, align 4
  %15 = call i32 @printf(ptr @0, ptr %14)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %18 = getelementptr inbounds { ptr }, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1", ptr undef }, ptr %17, 1
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %21 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %19, ptr %21, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(ptr %20, i64 5, ptr %21)
  %22 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %20, align 8
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %24 = phi i64 [ -1, %_llgo_3 ], [ %25, %_llgo_5 ]
  %25 = add i64 %24, 1
  %26 = icmp slt i64 %25, %23
  br i1 %26, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 0
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 1
  %29 = icmp slt i64 %25, 0
  %30 = icmp sge i64 %25, %28
  %31 = or i1 %30, %29
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %31)
  %32 = getelementptr inbounds i32, ptr %27, i64 %25
  %33 = load i32, ptr %32, align 4
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i32 %33, ptr %34, align 4
  %35 = call i32 @printf(ptr @1, ptr %34)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %36, i32 0, i32 0
  store i32 1, ptr %37, align 4
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %39 = getelementptr inbounds { ptr }, ptr %38, i32 0, i32 0
  store ptr %36, ptr %39, align 8
  %40 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound", ptr undef }, ptr %38, 1
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %42 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %40, ptr %42, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(ptr %41, i64 5, ptr %42)
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %41, align 8
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %45 = phi i64 [ -1, %_llgo_6 ], [ %46, %_llgo_8 ]
  %46 = add i64 %45, 1
  %47 = icmp slt i64 %46, %44
  br i1 %47, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, 0
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, 1
  %50 = icmp slt i64 %46, 0
  %51 = icmp sge i64 %46, %49
  %52 = or i1 %51, %50
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %52)
  %53 = getelementptr inbounds i32, ptr %48, i64 %46
  %54 = load i32, ptr %53, align 4
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i32 %54, ptr %55, align 4
  %56 = call i32 @printf(ptr @2, ptr %55)
  br label %_llgo_7

_llgo_9:                                          ; preds = %_llgo_7
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.main$1"(ptr %0) {
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(ptr, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i32 @rand()

define linkonce i32 @__llgo_stub.rand(ptr %0) {
_llgo_0:
  %1 = tail call i32 @rand()
  ret i32 %1
}

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = call i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %2)
  ret i32 %3
}
