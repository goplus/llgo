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

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/slice2array.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %5 = getelementptr inbounds i8, ptr %4, i64 0
  %6 = getelementptr inbounds i8, ptr %4, i64 1
  %7 = getelementptr inbounds i8, ptr %4, i64 2
  %8 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 1, ptr %5, align 1
  store i8 2, ptr %6, align 1
  store i8 3, ptr %7, align 1
  store i8 4, ptr %8, align 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 4, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 4, 2
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %13 = icmp slt i64 %12, 4
  br i1 %13, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_2 ]
  %17 = call ptr @llvm.coro.begin(token %2, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %19 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_3
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %21 = call ptr @llvm.coro.free(token %2, ptr %17)
  call void @free(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64 %22, i64 4)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_1
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %24 = load [4 x i8], ptr %4, align 1
  %25 = load [4 x i8], ptr %23, align 1
  %26 = extractvalue [4 x i8] %24, 0
  %27 = extractvalue [4 x i8] %25, 0
  %28 = icmp eq i8 %26, %27
  %29 = and i1 true, %28
  %30 = extractvalue [4 x i8] %24, 1
  %31 = extractvalue [4 x i8] %25, 1
  %32 = icmp eq i8 %30, %31
  %33 = and i1 %29, %32
  %34 = extractvalue [4 x i8] %24, 2
  %35 = extractvalue [4 x i8] %25, 2
  %36 = icmp eq i8 %34, %35
  %37 = and i1 %33, %36
  %38 = extractvalue [4 x i8] %24, 3
  %39 = extractvalue [4 x i8] %25, 3
  %40 = icmp eq i8 %38, %39
  %41 = and i1 %37, %40
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 4, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 4, 2
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 1
  %46 = icmp slt i64 %45, 2
  br i1 %46, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64 %47, i64 2)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_9
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 0
  %49 = load [2 x i8], ptr %48, align 1
  %50 = alloca [2 x i8], align 1
  call void @llvm.memset(ptr %50, i8 0, i64 2, i1 false)
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 1, ptr %51, align 1
  store i8 2, ptr %52, align 1
  %53 = load [2 x i8], ptr %50, align 1
  %54 = extractvalue [2 x i8] %49, 0
  %55 = extractvalue [2 x i8] %53, 0
  %56 = icmp eq i8 %54, %55
  %57 = and i1 true, %56
  %58 = extractvalue [2 x i8] %49, 1
  %59 = extractvalue [2 x i8] %53, 1
  %60 = icmp eq i8 %58, %59
  %61 = and i1 %57, %60
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #4

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }
attributes #5 = { nounwind memory(argmem: read) }
