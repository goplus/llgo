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
  %0 = alloca [5 x i64], align 8
  %1 = alloca [2 x [2 x i64]], align 8
  %2 = alloca [2 x i64], align 8
  %3 = alloca [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/index.point", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  call void @llvm.memset(ptr %3, i8 0, i64 48, i1 false)
  %5 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %3, i64 0
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %6, i32 0, i32 0
  %9 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %6, i32 0, i32 1
  %11 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %3, i64 1
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %12, i32 0, i32 0
  %15 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %12, i32 0, i32 1
  %17 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %3, i64 2
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %18, i32 0, i32 0
  %21 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %18, i32 0, i32 1
  store i64 1, ptr %8, align 4
  store i64 2, ptr %10, align 4
  store i64 3, ptr %14, align 4
  store i64 4, ptr %16, align 4
  store i64 5, ptr %20, align 4
  store i64 6, ptr %22, align 4
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], ptr %3, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %3, i64 2
  %26 = load %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %25, align 4
  store %"github.com/goplus/llgo/cl/_testrt/index.point" %26, ptr %4, align 4
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %4, i32 0, i32 0
  %29 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %28, align 4
  %31 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %4, i32 0, i32 1
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %32, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  call void @llvm.memset(ptr %1, i8 0, i64 32, i1 false)
  %35 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = getelementptr inbounds [2 x i64], ptr %1, i64 0
  %37 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = getelementptr inbounds i64, ptr %36, i64 0
  %39 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = getelementptr inbounds i64, ptr %36, i64 1
  %41 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = getelementptr inbounds [2 x i64], ptr %1, i64 1
  %43 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = getelementptr inbounds i64, ptr %42, i64 0
  %45 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 1, ptr %38, align 4
  store i64 2, ptr %40, align 4
  store i64 3, ptr %44, align 4
  store i64 4, ptr %46, align 4
  %47 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load [2 x [2 x i64]], ptr %1, align 4
  %49 = getelementptr inbounds [2 x i64], ptr %1, i64 1
  %50 = load [2 x i64], ptr %49, align 4
  store [2 x i64] %50, ptr %2, align 4
  %51 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = getelementptr inbounds i64, ptr %2, i64 0
  %53 = icmp eq ptr %52, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %52, align 4
  %55 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = getelementptr inbounds i64, ptr %2, i64 1
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load i64, ptr %56, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @llvm.memset(ptr %0, i8 0, i64 40, i1 false)
  %59 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = getelementptr inbounds i64, ptr %0, i64 0
  %61 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = getelementptr inbounds i64, ptr %0, i64 1
  %63 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = getelementptr inbounds i64, ptr %0, i64 2
  %65 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = getelementptr inbounds i64, ptr %0, i64 3
  %67 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = getelementptr inbounds i64, ptr %0, i64 4
  store i64 1, ptr %60, align 4
  store i64 2, ptr %62, align 4
  store i64 3, ptr %64, align 4
  store i64 4, ptr %66, align 4
  store i64 5, ptr %68, align 4
  %69 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load [5 x i64], ptr %0, align 4
  %71 = getelementptr inbounds i64, ptr %0, i64 2
  %72 = load i64, ptr %71, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %73 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 2), align 1
  %74 = zext i8 %73 to i64
  %75 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64 %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %75)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %76 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 1), align 1
  %77 = zext i8 %76 to i64
  %78 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64 %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %80 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = getelementptr inbounds i64, ptr %79, i64 0
  %82 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 1, ptr %81, align 4
  store i64 2, ptr %83, align 4
  %84 = icmp eq ptr %79, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = getelementptr inbounds i64, ptr %79, i64 1
  %86 = icmp eq ptr %85, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %85, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %87)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %89 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = getelementptr inbounds i64, ptr %88, i64 0
  store i64 1, ptr %90, align 4
  %91 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 2, ptr %92, align 4
  %93 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 3, ptr %94, align 4
  %95 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 4, ptr %96, align 4
  %97 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %88, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 4, 1
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 4, 2
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, 0
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, 1
  %103 = icmp sge i64 1, %102
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %103, i64 1, i64 %102)
  %104 = getelementptr inbounds i64, ptr %101, i64 1
  %105 = icmp eq ptr %104, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = load i64, ptr %104, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %106)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
