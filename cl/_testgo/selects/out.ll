; ModuleID = 'github.com/goplus/llgo/cl/_testgo/selects'
source_filename = "github.com/goplus/llgo/cl/_testgo/selects"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" = type { ptr, ptr, i32, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/selects.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"c1<-", align 1
@1 = private unnamed_addr constant [4 x i8] c"<-c2", align 1
@2 = private unnamed_addr constant [4 x i8] c"<-c4", align 1
@3 = private unnamed_addr constant [31 x i8] c"blocking select matched no case", align 1
@_llgo_string = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"<-c1", align 1
@5 = private unnamed_addr constant [4 x i8] c"c2<-", align 1
@6 = private unnamed_addr constant [4 x i8] c"<-c3", align 1

define void @"github.com/goplus/llgo/cl/_testgo/selects.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/selects.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/selects.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/selects.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/selects.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %1, ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %3, ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %5, ptr %4, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %8 = getelementptr inbounds { ptr, ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %2, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, ptr, ptr }, ptr %7, i32 0, i32 2
  store ptr %4, ptr %10, align 8
  %11 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/selects.main$1", ptr undef }, ptr %7, 1
  %12 = call ptr @malloc(i64 16)
  %13 = getelementptr inbounds { { ptr, ptr } }, ptr %12, i32 0, i32 0
  store { ptr, ptr } %11, ptr %13, align 8
  %14 = alloca i8, i64 8, align 1
  %15 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %14, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/selects._llgo_routine$1", ptr %12)
  %16 = load ptr, ptr %0, align 8
  %17 = alloca {}, align 8
  call void @llvm.memset(ptr %17, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %17, align 1
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr %16, ptr %17, i64 0)
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, ptr %19, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = load ptr, ptr %2, align 8
  %21 = alloca {}, align 8
  call void @llvm.memset(ptr %21, i8 0, i64 0, i1 false)
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %22, ptr %21, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %23, i32 0, 2
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %24, i1 false, 3
  %26 = alloca {}, align 8
  call void @llvm.memset(ptr %26, i8 0, i64 0, i1 false)
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %6, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %27, ptr %26, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %28, i32 0, 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %29, i1 false, 3
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %32 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %31, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %25, ptr %32, align 8
  %33 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %31, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %30, ptr %33, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 2, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 2, 2
  %37 = alloca { i64, i1 }, align 8
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, ptr %38, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Select"(ptr %37, ptr %38)
  %39 = load { i64, i1 }, ptr %37, align 4
  %40 = extractvalue { i64, i1 } %39, 0
  %41 = extractvalue { i64, i1 } %39, 1
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %25, 1
  %43 = load {}, ptr %42, align 1
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %30, 1
  %45 = load {}, ptr %44, align 1
  %46 = insertvalue { i64, i1, {}, {} } undef, i64 %40, 0
  %47 = insertvalue { i64, i1, {}, {} } %46, i1 %41, 1
  %48 = insertvalue { i64, i1, {}, {} } %47, {} %43, 2
  %49 = insertvalue { i64, i1, {}, {} } %48, {} %45, 3
  %50 = extractvalue { i64, i1, {}, {} } %49, 0
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %52, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %53 = icmp eq i64 %50, 1
  br i1 %53, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr %54, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %55 = load ptr, ptr @_llgo_string, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %55, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr %56, 1
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %59, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %59)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/selects.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr, ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr, ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = alloca {}, align 8
  call void @llvm.memset(ptr %4, i8 0, i64 0, i1 false)
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr %3, ptr %4, i64 0)
  %6 = load {}, ptr %4, align 1
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr %7, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = extractvalue { ptr, ptr, ptr } %1, 1
  %9 = load ptr, ptr %8, align 8
  %10 = extractvalue { ptr, ptr, ptr } %1, 2
  %11 = load ptr, ptr %10, align 8
  %12 = alloca {}, align 8
  call void @llvm.memset(ptr %12, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %12, align 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %9, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %13, ptr %12, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %14, i32 0, 2
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %15, i1 true, 3
  %17 = alloca {}, align 8
  call void @llvm.memset(ptr %17, i8 0, i64 0, i1 false)
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %11, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %18, ptr %17, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %19, i32 0, 2
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %20, i1 false, 3
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %23 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %22, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %16, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %22, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %21, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 2, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 2, 2
  %28 = alloca { i64, i1 }, align 8
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, ptr %29, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Select"(ptr %28, ptr %29)
  %30 = load { i64, i1 }, ptr %28, align 4
  %31 = extractvalue { i64, i1 } %30, 0
  %32 = extractvalue { i64, i1 } %30, 1
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %21, 1
  %34 = load {}, ptr %33, align 1
  %35 = insertvalue { i64, i1, {} } undef, i64 %31, 0
  %36 = insertvalue { i64, i1, {} } %35, i1 %32, 1
  %37 = insertvalue { i64, i1, {} } %36, {} %34, 2
  %38 = extractvalue { i64, i1, {} } %37, 0
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr %40, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %41 = icmp eq i64 %38, 1
  br i1 %41, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr %42, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %43 = load ptr, ptr @_llgo_string, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %44, 1
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %47, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %47)
  unreachable
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/selects._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr } }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr } } %1, 0
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  call void %4(ptr %3)
  call void @free(ptr %0)
  ret ptr null
}

declare void @free(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr, ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Select"(ptr, ptr)

define void @"github.com/goplus/llgo/cl/_testgo/selects.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr, ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
