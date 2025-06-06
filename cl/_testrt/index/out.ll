; ModuleID = 'github.com/goplus/llgo/cl/_testrt/index'
source_filename = "github.com/goplus/llgo/cl/_testrt/index"

%"github.com/goplus/llgo/cl/_testrt/index.point" = type { i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/index.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"123456", align 1

define void @"github.com/goplus/llgo/cl/_testrt/index.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/index.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/index.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/index.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/index.point", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = alloca [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], align 8
  call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %1, i64 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %1, i64 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %1, i64 2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %8, i32 0, i32 1
  store i64 1, ptr %3, align 4
  store i64 2, ptr %4, align 4
  store i64 3, ptr %6, align 4
  store i64 4, ptr %7, align 4
  store i64 5, ptr %9, align 4
  store i64 6, ptr %10, align 4
  %11 = load [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], ptr %1, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %1, i64 2
  %13 = load %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %12, align 4
  store %"github.com/goplus/llgo/cl/_testrt/index.point" %13, ptr %0, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %0, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %18, i8 0, i64 16, i1 false)
  %19 = alloca [2 x [2 x i64]], align 8
  call void @llvm.memset(ptr %19, i8 0, i64 32, i1 false)
  %20 = getelementptr inbounds [2 x i64], ptr %19, i64 0
  %21 = getelementptr inbounds i64, ptr %20, i64 0
  %22 = getelementptr inbounds i64, ptr %20, i64 1
  %23 = getelementptr inbounds [2 x i64], ptr %19, i64 1
  %24 = getelementptr inbounds i64, ptr %23, i64 0
  %25 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 1, ptr %21, align 4
  store i64 2, ptr %22, align 4
  store i64 3, ptr %24, align 4
  store i64 4, ptr %25, align 4
  %26 = load [2 x [2 x i64]], ptr %19, align 4
  %27 = getelementptr inbounds [2 x i64], ptr %19, i64 1
  %28 = load [2 x i64], ptr %27, align 4
  store [2 x i64] %28, ptr %18, align 4
  %29 = getelementptr inbounds i64, ptr %18, i64 0
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds i64, ptr %18, i64 1
  %32 = load i64, ptr %31, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = alloca [5 x i64], align 8
  call void @llvm.memset(ptr %33, i8 0, i64 40, i1 false)
  %34 = getelementptr inbounds i64, ptr %33, i64 0
  %35 = getelementptr inbounds i64, ptr %33, i64 1
  %36 = getelementptr inbounds i64, ptr %33, i64 2
  %37 = getelementptr inbounds i64, ptr %33, i64 3
  %38 = getelementptr inbounds i64, ptr %33, i64 4
  store i64 1, ptr %34, align 4
  store i64 2, ptr %35, align 4
  store i64 3, ptr %36, align 4
  store i64 4, ptr %37, align 4
  store i64 5, ptr %38, align 4
  %39 = load [5 x i64], ptr %33, align 4
  %40 = getelementptr inbounds i64, ptr %33, i64 2
  %41 = load i64, ptr %40, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %42 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 2), align 1
  %43 = sext i8 %42 to i32
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(ptr %44, i32 %43)
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %44, align 8
  %46 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %45, ptr %46, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %47 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 1), align 1
  %48 = sext i8 %47 to i32
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(ptr %49, i32 %48)
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %49, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %50, ptr %51, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %53 = getelementptr inbounds i64, ptr %52, i64 0
  %54 = getelementptr inbounds i64, ptr %52, i64 1
  store i64 1, ptr %53, align 4
  store i64 2, ptr %54, align 4
  %55 = getelementptr inbounds i64, ptr %52, i64 1
  %56 = load i64, ptr %55, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %58 = getelementptr inbounds i64, ptr %57, i64 0
  store i64 1, ptr %58, align 4
  %59 = getelementptr inbounds i64, ptr %57, i64 1
  store i64 2, ptr %59, align 4
  %60 = getelementptr inbounds i64, ptr %57, i64 2
  store i64 3, ptr %60, align 4
  %61 = getelementptr inbounds i64, ptr %57, i64 3
  store i64 4, ptr %61, align 4
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 4, 1
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 4, 2
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 0
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 1
  %67 = icmp sge i64 1, %66
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %67)
  %68 = getelementptr inbounds i64, ptr %65, i64 1
  %69 = load i64, ptr %68, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(ptr, i32)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
