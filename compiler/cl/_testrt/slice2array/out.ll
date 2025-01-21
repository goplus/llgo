; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/slice2array'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/slice2array"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/compiler/cl/_testrt/slice2array.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/compiler/cl/_testrt/slice2array.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/slice2array.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/slice2array.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/slice2array.main"() {
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
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %9 = icmp slt i64 %8, 4
  br i1 %9, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64 %10, i64 4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %12 = load [4 x i8], ptr %0, align 1
  %13 = load [4 x i8], ptr %11, align 1
  %14 = extractvalue [4 x i8] %12, 0
  %15 = extractvalue [4 x i8] %13, 0
  %16 = icmp eq i8 %14, %15
  %17 = and i1 true, %16
  %18 = extractvalue [4 x i8] %12, 1
  %19 = extractvalue [4 x i8] %13, 1
  %20 = icmp eq i8 %18, %19
  %21 = and i1 %17, %20
  %22 = extractvalue [4 x i8] %12, 2
  %23 = extractvalue [4 x i8] %13, 2
  %24 = icmp eq i8 %22, %23
  %25 = and i1 %21, %24
  %26 = extractvalue [4 x i8] %12, 3
  %27 = extractvalue [4 x i8] %13, 3
  %28 = icmp eq i8 %26, %27
  %29 = and i1 %25, %28
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 4, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 4, 2
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 1
  %34 = icmp slt i64 %33, 2
  br i1 %34, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64 %35, i64 2)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 0
  %37 = load [2 x i8], ptr %36, align 1
  %38 = alloca [2 x i8], align 1
  call void @llvm.memset(ptr %38, i8 0, i64 2, i1 false)
  %39 = getelementptr inbounds i8, ptr %38, i64 0
  %40 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 1, ptr %39, align 1
  store i8 2, ptr %40, align 1
  %41 = load [2 x i8], ptr %38, align 1
  %42 = extractvalue [2 x i8] %37, 0
  %43 = extractvalue [2 x i8] %41, 0
  %44 = icmp eq i8 %42, %43
  %45 = and i1 true, %44
  %46 = extractvalue [2 x i8] %37, 1
  %47 = extractvalue [2 x i8] %41, 1
  %48 = icmp eq i8 %46, %47
  %49 = and i1 %45, %48
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
