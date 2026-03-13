; ModuleID = 'github.com/goplus/llgo/cl/_testrt/slice2array'
source_filename = "github.com/goplus/llgo/cl/_testrt/slice2array"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/slice2array.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/slice2array.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %1 = getelementptr inbounds i8, ptr %0, i64 0
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = getelementptr inbounds i8, ptr %0, i64 2
  %4 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 1, ptr %1, align 1
  store i8 2, ptr %2, align 1
  store i8 3, ptr %3, align 1
  store i8 4, ptr %4, align 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 4, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 4)
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load [4 x i8], ptr %0, align 1
  %11 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load [4 x i8], ptr %8, align 1
  %13 = extractvalue [4 x i8] %10, 0
  %14 = extractvalue [4 x i8] %12, 0
  %15 = icmp eq i8 %13, %14
  %16 = and i1 true, %15
  %17 = extractvalue [4 x i8] %10, 1
  %18 = extractvalue [4 x i8] %12, 1
  %19 = icmp eq i8 %17, %18
  %20 = and i1 %16, %19
  %21 = extractvalue [4 x i8] %10, 2
  %22 = extractvalue [4 x i8] %12, 2
  %23 = icmp eq i8 %21, %22
  %24 = and i1 %20, %23
  %25 = extractvalue [4 x i8] %10, 3
  %26 = extractvalue [4 x i8] %12, 3
  %27 = icmp eq i8 %25, %26
  %28 = and i1 %24, %27
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 4, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 4, 2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 2)
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load [2 x i8], ptr %32, align 1
  %35 = alloca [2 x i8], align 1
  call void @llvm.memset(ptr %35, i8 0, i64 2, i1 false)
  %36 = getelementptr inbounds i8, ptr %35, i64 0
  %37 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 1, ptr %36, align 1
  store i8 2, ptr %37, align 1
  %38 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load [2 x i8], ptr %35, align 1
  %40 = extractvalue [2 x i8] %34, 0
  %41 = extractvalue [2 x i8] %39, 0
  %42 = icmp eq i8 %40, %41
  %43 = and i1 true, %42
  %44 = extractvalue [2 x i8] %34, 1
  %45 = extractvalue [2 x i8] %39, 1
  %46 = icmp eq i8 %44, %45
  %47 = and i1 %43, %46
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceToArrayPtr"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
