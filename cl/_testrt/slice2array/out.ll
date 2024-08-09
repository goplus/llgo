; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %3 = getelementptr inbounds i8, ptr %2, i64 0
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = getelementptr inbounds i8, ptr %2, i64 2
  %6 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  store i8 3, ptr %5, align 1
  store i8 4, ptr %6, align 1
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 0
  store ptr %2, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 1
  store i64 4, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 2
  store i64 4, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, align 8
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 1
  %13 = icmp slt i64 %12, 4
  br i1 %13, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 1
  call void @"github.com/goplus/llgo/internal/runtime.PanicSliceConvert"(i64 %14, i64 4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %16 = load [4 x i8], ptr %2, align 1
  %17 = load [4 x i8], ptr %15, align 1
  %18 = extractvalue [4 x i8] %16, 0
  %19 = extractvalue [4 x i8] %17, 0
  %20 = icmp eq i8 %18, %19
  %21 = and i1 true, %20
  %22 = extractvalue [4 x i8] %16, 1
  %23 = extractvalue [4 x i8] %17, 1
  %24 = icmp eq i8 %22, %23
  %25 = and i1 %21, %24
  %26 = extractvalue [4 x i8] %16, 2
  %27 = extractvalue [4 x i8] %17, 2
  %28 = icmp eq i8 %26, %27
  %29 = and i1 %25, %28
  %30 = extractvalue [4 x i8] %16, 3
  %31 = extractvalue [4 x i8] %17, 3
  %32 = icmp eq i8 %30, %31
  %33 = and i1 %29, %32
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 0
  store ptr %2, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 1
  store i64 4, ptr %36, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 2
  store i64 4, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, align 8
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %38, 1
  %40 = icmp slt i64 %39, 2
  br i1 %40, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %41 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %38, 1
  call void @"github.com/goplus/llgo/internal/runtime.PanicSliceConvert"(i64 %41, i64 2)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %42 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %38, 0
  %43 = load [2 x i8], ptr %42, align 1
  %44 = alloca [2 x i8], align 1
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %44, i64 2)
  %46 = getelementptr inbounds i8, ptr %45, i64 0
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 1, ptr %46, align 1
  store i8 2, ptr %47, align 1
  %48 = load [2 x i8], ptr %45, align 1
  %49 = extractvalue [2 x i8] %43, 0
  %50 = extractvalue [2 x i8] %48, 0
  %51 = icmp eq i8 %49, %50
  %52 = and i1 true, %51
  %53 = extractvalue [2 x i8] %43, 1
  %54 = extractvalue [2 x i8] %48, 1
  %55 = icmp eq i8 %53, %54
  %56 = and i1 %52, %55
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %56)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PanicSliceConvert"(i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)
