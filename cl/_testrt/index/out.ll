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
  %43 = zext i8 %42 to i32
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %45 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 1), align 1
  %46 = zext i8 %45 to i32
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %49 = getelementptr inbounds i64, ptr %48, i64 0
  %50 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 1, ptr %49, align 4
  store i64 2, ptr %50, align 4
  %51 = getelementptr inbounds i64, ptr %48, i64 1
  %52 = load i64, ptr %51, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %54 = getelementptr inbounds i64, ptr %53, i64 0
  store i64 1, ptr %54, align 4
  %55 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 2, ptr %55, align 4
  %56 = getelementptr inbounds i64, ptr %53, i64 2
  store i64 3, ptr %56, align 4
  %57 = getelementptr inbounds i64, ptr %53, i64 3
  store i64 4, ptr %57, align 4
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 4, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 4, 2
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %63 = icmp sge i64 1, %62
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %63)
  %64 = getelementptr inbounds i64, ptr %61, i64 1
  %65 = load i64, ptr %64, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/index.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/index.point", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  %5 = alloca [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], align 8
  call void @llvm.memset(ptr %5, i8 0, i64 48, i1 false)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %5, i64 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %5, i64 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %9, i32 0, i32 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %5, i64 2
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %12, i32 0, i32 1
  store i64 1, ptr %7, align 4
  store i64 2, ptr %8, align 4
  store i64 3, ptr %10, align 4
  store i64 4, ptr %11, align 4
  store i64 5, ptr %13, align 4
  store i64 6, ptr %14, align 4
  %15 = load [3 x %"github.com/goplus/llgo/cl/_testrt/index.point"], ptr %5, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %5, i64 2
  %17 = load %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %16, align 4
  store %"github.com/goplus/llgo/cl/_testrt/index.point" %17, ptr %4, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %4, i32 0, i32 0
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/index.point", ptr %4, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
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
  %30 = load [2 x [2 x i64]], ptr %23, align 4
  %31 = getelementptr inbounds [2 x i64], ptr %23, i64 1
  %32 = load [2 x i64], ptr %31, align 4
  store [2 x i64] %32, ptr %22, align 4
  %33 = getelementptr inbounds i64, ptr %22, i64 0
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds i64, ptr %22, i64 1
  %36 = load i64, ptr %35, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %37 = alloca [5 x i64], align 8
  call void @llvm.memset(ptr %37, i8 0, i64 40, i1 false)
  %38 = getelementptr inbounds i64, ptr %37, i64 0
  %39 = getelementptr inbounds i64, ptr %37, i64 1
  %40 = getelementptr inbounds i64, ptr %37, i64 2
  %41 = getelementptr inbounds i64, ptr %37, i64 3
  %42 = getelementptr inbounds i64, ptr %37, i64 4
  store i64 1, ptr %38, align 4
  store i64 2, ptr %39, align 4
  store i64 3, ptr %40, align 4
  store i64 4, ptr %41, align 4
  store i64 5, ptr %42, align 4
  %43 = load [5 x i64], ptr %37, align 4
  %44 = getelementptr inbounds i64, ptr %37, i64 2
  %45 = load i64, ptr %44, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %46 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 2), align 1
  %47 = zext i8 %46 to i32
  %48 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %49 = load i8, ptr getelementptr inbounds (i8, ptr @0, i64 1), align 1
  %50 = zext i8 %49 to i32
  %51 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %51)
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
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %70 = call i64 @llvm.coro.size.i64()
  %71 = call ptr @malloc(i64 %70)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %72 = phi ptr [ null, %_llgo_0 ], [ %71, %_llgo_2 ]
  %73 = call ptr @llvm.coro.begin(token %2, ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %74 = call i1 @llvm.coro.end(ptr %73, i1 false, token none)
  ret ptr %73

_llgo_5:                                          ; preds = %_llgo_1
  %75 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %75)
  %76 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %76, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %77 = call ptr @llvm.coro.free(token %2, ptr %73)
  call void @free(ptr %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

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
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

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
