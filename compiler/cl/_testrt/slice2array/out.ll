; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %3 = getelementptr inbounds i8, ptr %2, i64 0
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = getelementptr inbounds i8, ptr %2, i64 2
  %6 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  store i8 3, ptr %5, align 1
  store i8 4, ptr %6, align 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 4, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 4, 2
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  %11 = icmp slt i64 %10, 4
  br i1 %11, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64 %12, i64 4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 0
  %14 = load [4 x i8], ptr %2, align 1
  %15 = load [4 x i8], ptr %13, align 1
  %16 = extractvalue [4 x i8] %14, 0
  %17 = extractvalue [4 x i8] %15, 0
  %18 = icmp eq i8 %16, %17
  %19 = and i1 true, %18
  %20 = extractvalue [4 x i8] %14, 1
  %21 = extractvalue [4 x i8] %15, 1
  %22 = icmp eq i8 %20, %21
  %23 = and i1 %19, %22
  %24 = extractvalue [4 x i8] %14, 2
  %25 = extractvalue [4 x i8] %15, 2
  %26 = icmp eq i8 %24, %25
  %27 = and i1 %23, %26
  %28 = extractvalue [4 x i8] %14, 3
  %29 = extractvalue [4 x i8] %15, 3
  %30 = icmp eq i8 %28, %29
  %31 = and i1 %27, %30
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 4, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 4, 2
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 1
  %36 = icmp slt i64 %35, 2
  br i1 %36, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64 %37, i64 2)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, 0
  %39 = load [2 x i8], ptr %38, align 1
  %40 = alloca [2 x i8], align 1
  call void @llvm.memset(ptr %40, i8 0, i64 2, i1 false)
  %41 = getelementptr inbounds i8, ptr %40, i64 0
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 1, ptr %41, align 1
  store i8 2, ptr %42, align 1
  %43 = load [2 x i8], ptr %40, align 1
  %44 = extractvalue [2 x i8] %39, 0
  %45 = extractvalue [2 x i8] %43, 0
  %46 = icmp eq i8 %44, %45
  %47 = and i1 true, %46
  %48 = extractvalue [2 x i8] %39, 1
  %49 = extractvalue [2 x i8] %43, 1
  %50 = icmp eq i8 %48, %49
  %51 = and i1 %47, %50
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
