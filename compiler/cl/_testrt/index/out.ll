; ModuleID = 'main'
source_filename = "main"

%main.point = type { i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [6 x i8] c"123456", align 1

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
  %2 = alloca %main.point, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = alloca [3 x %main.point], align 8
  call void @llvm.memset(ptr %3, i8 0, i64 48, i1 false)
  %4 = getelementptr inbounds %main.point, ptr %3, i64 0
  %5 = getelementptr inbounds %main.point, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %main.point, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %main.point, ptr %3, i64 1
  %8 = getelementptr inbounds %main.point, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %main.point, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %main.point, ptr %3, i64 2
  %11 = getelementptr inbounds %main.point, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %main.point, ptr %10, i32 0, i32 1
  store i64 1, ptr %5, align 4
  store i64 2, ptr %6, align 4
  store i64 3, ptr %8, align 4
  store i64 4, ptr %9, align 4
  store i64 5, ptr %11, align 4
  store i64 6, ptr %12, align 4
  %13 = load [3 x %main.point], ptr %3, align 4
  %14 = getelementptr inbounds %main.point, ptr %3, i64 2
  %15 = load %main.point, ptr %14, align 4
  store %main.point %15, ptr %2, align 4
  %16 = getelementptr inbounds %main.point, ptr %2, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %main.point, ptr %2, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %20, i8 0, i64 16, i1 false)
  %21 = alloca [2 x [2 x i64]], align 8
  call void @llvm.memset(ptr %21, i8 0, i64 32, i1 false)
  %22 = getelementptr inbounds [2 x i64], ptr %21, i64 0
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  %24 = getelementptr inbounds i64, ptr %22, i64 1
  %25 = getelementptr inbounds [2 x i64], ptr %21, i64 1
  %26 = getelementptr inbounds i64, ptr %25, i64 0
  %27 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 1, ptr %23, align 4
  store i64 2, ptr %24, align 4
  store i64 3, ptr %26, align 4
  store i64 4, ptr %27, align 4
  %28 = load [2 x [2 x i64]], ptr %21, align 4
  %29 = getelementptr inbounds [2 x i64], ptr %21, i64 1
  %30 = load [2 x i64], ptr %29, align 4
  store [2 x i64] %30, ptr %20, align 4
  %31 = getelementptr inbounds i64, ptr %20, i64 0
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds i64, ptr %20, i64 1
  %34 = load i64, ptr %33, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %35 = alloca [5 x i64], align 8
  call void @llvm.memset(ptr %35, i8 0, i64 40, i1 false)
  %36 = getelementptr inbounds i64, ptr %35, i64 0
  %37 = getelementptr inbounds i64, ptr %35, i64 1
  %38 = getelementptr inbounds i64, ptr %35, i64 2
  %39 = getelementptr inbounds i64, ptr %35, i64 3
  %40 = getelementptr inbounds i64, ptr %35, i64 4
  store i64 1, ptr %36, align 4
  store i64 2, ptr %37, align 4
  store i64 3, ptr %38, align 4
  store i64 4, ptr %39, align 4
  store i64 5, ptr %40, align 4
  %41 = load [5 x i64], ptr %35, align 4
  %42 = getelementptr inbounds i64, ptr %35, i64 2
  %43 = load i64, ptr %42, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %44 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 2), align 1
  %45 = sext i8 %44 to i32
  %46 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %47 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 1), align 1
  %48 = sext i8 %47 to i32
  %49 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %51 = getelementptr inbounds i64, ptr %50, i64 0
  %52 = getelementptr inbounds i64, ptr %50, i64 1
  store i64 1, ptr %51, align 4
  store i64 2, ptr %52, align 4
  %53 = getelementptr inbounds i64, ptr %50, i64 1
  %54 = load i64, ptr %53, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %56 = getelementptr inbounds i64, ptr %55, i64 0
  store i64 1, ptr %56, align 4
  %57 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 2, ptr %57, align 4
  %58 = getelementptr inbounds i64, ptr %55, i64 2
  store i64 3, ptr %58, align 4
  %59 = getelementptr inbounds i64, ptr %55, i64 3
  store i64 4, ptr %59, align 4
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %55, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 4, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 4, 2
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 0
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %65 = icmp sge i64 1, %64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %65)
  %66 = getelementptr inbounds i64, ptr %63, i64 1
  %67 = load i64, ptr %66, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
