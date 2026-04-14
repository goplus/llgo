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
  %0 = alloca [2 x i8], align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i8, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 1, ptr %3, align 1
  store i8 2, ptr %5, align 1
  store i8 3, ptr %7, align 1
  store i8 4, ptr %9, align 1
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 4, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 4, 2
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 4)
  %15 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load [4 x i8], ptr %1, align 1
  %17 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load [4 x i8], ptr %14, align 1
  %19 = extractvalue [4 x i8] %16, 0
  %20 = extractvalue [4 x i8] %18, 0
  %21 = icmp eq i8 %19, %20
  %22 = and i1 true, %21
  %23 = extractvalue [4 x i8] %16, 1
  %24 = extractvalue [4 x i8] %18, 1
  %25 = icmp eq i8 %23, %24
  %26 = and i1 %22, %25
  %27 = extractvalue [4 x i8] %16, 2
  %28 = extractvalue [4 x i8] %18, 2
  %29 = icmp eq i8 %27, %28
  %30 = and i1 %26, %29
  %31 = extractvalue [4 x i8] %16, 3
  %32 = extractvalue [4 x i8] %18, 3
  %33 = icmp eq i8 %31, %32
  %34 = and i1 %30, %33
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %35 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 4, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 4, 2
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 2)
  %40 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load [2 x i8], ptr %39, align 1
  call void @llvm.memset(ptr %0, i8 0, i64 2, i1 false)
  %42 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds i8, ptr %0, i64 0
  %44 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 1, ptr %43, align 1
  store i8 2, ptr %45, align 1
  %46 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load [2 x i8], ptr %0, align 1
  %48 = extractvalue [2 x i8] %41, 0
  %49 = extractvalue [2 x i8] %47, 0
  %50 = icmp eq i8 %48, %49
  %51 = and i1 true, %50
  %52 = extractvalue [2 x i8] %41, 1
  %53 = extractvalue [2 x i8] %47, 1
  %54 = icmp eq i8 %52, %53
  %55 = and i1 %51, %54
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %55)
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
