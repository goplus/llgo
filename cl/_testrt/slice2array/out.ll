; ModuleID = 'github.com/goplus/llgo/cl/_testrt/slice2array'
source_filename = "github.com/goplus/llgo/cl/_testrt/slice2array"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/slice2array.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/slice2array.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/slice2array.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/slice2array.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/slice2array.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds i8, ptr %0, i64 0
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds i8, ptr %0, i64 2
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 1, ptr %2, align 1
  store i8 2, ptr %4, align 1
  store i8 3, ptr %6, align 1
  store i8 4, ptr %8, align 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 4, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 4, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 4)
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load [4 x i8], ptr %0, align 1
  %15 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load [4 x i8], ptr %12, align 1
  %17 = extractvalue [4 x i8] %14, 0
  %18 = extractvalue [4 x i8] %16, 0
  %19 = icmp eq i8 %17, %18
  %20 = and i1 true, %19
  %21 = extractvalue [4 x i8] %14, 1
  %22 = extractvalue [4 x i8] %16, 1
  %23 = icmp eq i8 %21, %22
  %24 = and i1 %20, %23
  %25 = extractvalue [4 x i8] %14, 2
  %26 = extractvalue [4 x i8] %16, 2
  %27 = icmp eq i8 %25, %26
  %28 = and i1 %24, %27
  %29 = extractvalue [4 x i8] %14, 3
  %30 = extractvalue [4 x i8] %16, 3
  %31 = icmp eq i8 %29, %30
  %32 = and i1 %28, %31
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 4, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 4, 2
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 2)
  %37 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load [2 x i8], ptr %36, align 1
  %39 = alloca [2 x i8], align 1
  call void @llvm.memset(ptr %39, i8 0, i64 2, i1 false)
  %40 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = getelementptr inbounds i8, ptr %39, i64 0
  %42 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 1, ptr %41, align 1
  store i8 2, ptr %43, align 1
  %44 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load [2 x i8], ptr %39, align 1
  %46 = extractvalue [2 x i8] %38, 0
  %47 = extractvalue [2 x i8] %45, 0
  %48 = icmp eq i8 %46, %47
  %49 = and i1 true, %48
  %50 = extractvalue [2 x i8] %38, 1
  %51 = extractvalue [2 x i8] %45, 1
  %52 = icmp eq i8 %50, %51
  %53 = and i1 %49, %52
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
