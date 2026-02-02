; ModuleID = 'github.com/goplus/llgo/cl/_testrt/intgen'
source_filename = "github.com/goplus/llgo/cl/_testrt/intgen"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testrt/intgen.generator" = type { i32 }

@"github.com/goplus/llgo/cl/_testrt/intgen.init$guard" = global i1 false, align 1
@"__llgo_closure_const$rand" = private constant { ptr, i64 } { ptr @rand, i64 0 }
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 %0, ptr %1) {
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
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr i8, ptr %1, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %8)
  %9 = call i32 %7()
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
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, ptr @"__llgo_closure_const$rand")
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_2 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp sge i64 %3, %6
  %9 = or i1 %8, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds i32, ptr %5, i64 %3
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr @0, i32 %11)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %13, align 4
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %15 = getelementptr inbounds { ptr, i64, ptr }, ptr %14, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1", ptr %15, align 8
  %16 = getelementptr inbounds { ptr, i64, ptr }, ptr %14, i32 0, i32 1
  store i64 1, ptr %16, align 4
  %17 = getelementptr inbounds { ptr, i64, ptr }, ptr %14, i32 0, i32 2
  store ptr %13, ptr %17, align 8
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, ptr %14)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %20 = phi i64 [ -1, %_llgo_3 ], [ %21, %_llgo_5 ]
  %21 = add i64 %20, 1
  %22 = icmp slt i64 %21, %19
  br i1 %22, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 0
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 1
  %25 = icmp slt i64 %21, 0
  %26 = icmp sge i64 %21, %24
  %27 = or i1 %26, %25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %27)
  %28 = getelementptr inbounds i32, ptr %23, i64 %21
  %29 = load i32, ptr %28, align 4
  %30 = call i32 (ptr, ...) @printf(ptr @1, i32 %29)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %31, i32 0, i32 0
  store i32 1, ptr %32, align 4
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %34 = getelementptr inbounds { ptr, i64, ptr }, ptr %33, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound", ptr %34, align 8
  %35 = getelementptr inbounds { ptr, i64, ptr }, ptr %33, i32 0, i32 1
  store i64 1, ptr %35, align 4
  %36 = getelementptr inbounds { ptr, i64, ptr }, ptr %33, i32 0, i32 2
  store ptr %31, ptr %36, align 8
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, ptr %33)
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
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.main$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
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

declare i32 @rand()

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = call i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %2)
  ret i32 %3
}
