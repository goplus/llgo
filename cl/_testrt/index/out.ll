; ModuleID = 'github.com/goplus/llgo/cl/_testrt/index'
source_filename = "github.com/goplus/llgo/cl/_testrt/index"

%"github.com/goplus/llgo/cl/_testrt/index.point" = type { i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/index.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"123456", align 1

define void @"github.com/goplus/llgo/cl/_testrt/index.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %11 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], ptr %1, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %1, i64 2
  %14 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %13, align 4
  store %"github.com/goplus/llgo/cl/_testrt/index.point" %15, ptr %0, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %0, i32 0, i32 0
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %16, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %0, i32 0, i32 1
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %19, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %22, i8 0, i64 16, i1 false)
  %23 = alloca [2 x [2 x i64]], align 8
  call void @llvm.memset(ptr %23, i8 0, i64 32, i1 false)
  %24 = getelementptr inbounds [2 x i64], ptr %23, i64 0
  %25 = getelementptr inbounds i64, ptr %24, i64 0
  %26 = getelementptr inbounds i64, ptr %24, i64 1
  %27 = getelementptr inbounds [2 x i64], ptr %23, i64 1
  %28 = getelementptr inbounds i64, ptr %27, i64 0
  %29 = getelementptr inbounds i64, ptr %27, i64 1
  store i64 1, ptr %25, align 4
  store i64 2, ptr %26, align 4
  store i64 3, ptr %28, align 4
  store i64 4, ptr %29, align 4
  %30 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load [2 x [2 x i64]], ptr %23, align 4
  %32 = getelementptr inbounds [2 x i64], ptr %23, i64 1
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load [2 x i64], ptr %32, align 4
  store [2 x i64] %34, ptr %22, align 4
  %35 = getelementptr inbounds i64, ptr %22, i64 0
  %36 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %35, align 4
  %38 = getelementptr inbounds i64, ptr %22, i64 1
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load i64, ptr %38, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %41 = alloca [5 x i64], align 8
  call void @llvm.memset(ptr %41, i8 0, i64 40, i1 false)
  %42 = getelementptr inbounds i64, ptr %41, i64 0
  %43 = getelementptr inbounds i64, ptr %41, i64 1
  %44 = getelementptr inbounds i64, ptr %41, i64 2
  %45 = getelementptr inbounds i64, ptr %41, i64 3
  %46 = getelementptr inbounds i64, ptr %41, i64 4
  store i64 1, ptr %42, align 4
  store i64 2, ptr %43, align 4
  store i64 3, ptr %44, align 4
  store i64 4, ptr %45, align 4
  store i64 5, ptr %46, align 4
  %47 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load [5 x i64], ptr %41, align 4
  %49 = getelementptr inbounds i64, ptr %41, i64 2
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %49, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %52 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 2), align 1
  %53 = zext i8 %52 to i32
  %54 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %55 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 1), align 1
  %56 = zext i8 %55 to i32
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %59 = getelementptr inbounds i64, ptr %58, i64 0
  %60 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 1, ptr %59, align 4
  store i64 2, ptr %60, align 4
  %61 = getelementptr inbounds i64, ptr %58, i64 1
  %62 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load i64, ptr %61, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 1, ptr %65, align 4
  %66 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 2, ptr %66, align 4
  %67 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 3, ptr %67, align 4
  %68 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 4, ptr %68, align 4
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, i64 4, 1
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 4, 2
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, 0
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, 1
  %74 = icmp sge i64 1, %73
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %74)
  %75 = getelementptr inbounds i64, ptr %72, i64 1
  %76 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load i64, ptr %75, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
