; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/selects'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/selects"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" = type { ptr, ptr, i32, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/compiler/cl/_testgo/selects.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"c1<-", align 1
@1 = private unnamed_addr constant [4 x i8] c"<-c2", align 1
@2 = private unnamed_addr constant [4 x i8] c"<-c4", align 1
@3 = private unnamed_addr constant [31 x i8] c"blocking select matched no case", align 1
@_llgo_string = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"<-c1", align 1
@5 = private unnamed_addr constant [4 x i8] c"c2<-", align 1
@6 = private unnamed_addr constant [4 x i8] c"<-c3", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testgo/selects.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/selects.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/selects.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/selects.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/selects.main"() {
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
  %11 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/selects.main$1", ptr undef }, ptr %7, 1
  %12 = call ptr @malloc(i64 16)
  %13 = getelementptr inbounds { { ptr, ptr } }, ptr %12, i32 0, i32 0
  store { ptr, ptr } %11, ptr %13, align 8
  %14 = alloca i8, i64 8, align 1
  %15 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %14, ptr null, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/selects._llgo_routine$1", ptr %12)
  %16 = load ptr, ptr %0, align 8
  %17 = alloca {}, align 8
  call void @llvm.memset(ptr %17, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %17, align 1
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr %16, ptr %17, i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = load ptr, ptr %2, align 8
  %20 = alloca {}, align 8
  call void @llvm.memset(ptr %20, i8 0, i64 0, i1 false)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %19, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %21, ptr %20, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %22, i32 0, 2
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %23, i1 false, 3
  %25 = alloca {}, align 8
  call void @llvm.memset(ptr %25, i8 0, i64 0, i1 false)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %6, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %26, ptr %25, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %27, i32 0, 2
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %28, i1 false, 3
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %31 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %30, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %24, ptr %31, align 8
  %32 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %30, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %29, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %30, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 2, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 2, 2
  %36 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35)
  %37 = extractvalue { i64, i1 } %36, 0
  %38 = extractvalue { i64, i1 } %36, 1
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %24, 1
  %40 = load {}, ptr %39, align 1
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %29, 1
  %42 = load {}, ptr %41, align 1
  %43 = insertvalue { i64, i1, {}, {} } undef, i64 %37, 0
  %44 = insertvalue { i64, i1, {}, {} } %43, i1 %38, 1
  %45 = insertvalue { i64, i1, {}, {} } %44, {} %40, 2
  %46 = insertvalue { i64, i1, {}, {} } %45, {} %42, 3
  %47 = extractvalue { i64, i1, {}, {} } %46, 0
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %49 = icmp eq i64 %47, 1
  br i1 %49, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/selects.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr, ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr, ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = alloca {}, align 8
  call void @llvm.memset(ptr %4, i8 0, i64 0, i1 false)
  %5 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr %3, ptr %4, i64 0)
  %6 = load {}, ptr %4, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = extractvalue { ptr, ptr, ptr } %1, 1
  %8 = load ptr, ptr %7, align 8
  %9 = extractvalue { ptr, ptr, ptr } %1, 2
  %10 = load ptr, ptr %9, align 8
  %11 = alloca {}, align 8
  call void @llvm.memset(ptr %11, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %11, align 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %8, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %12, ptr %11, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %13, i32 0, 2
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %14, i1 true, 3
  %16 = alloca {}, align 8
  call void @llvm.memset(ptr %16, i8 0, i64 0, i1 false)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %10, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %17, ptr %16, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %18, i32 0, 2
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %19, i1 false, 3
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %22 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %21, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %15, ptr %22, align 8
  %23 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %21, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %20, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 2, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 2, 2
  %27 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26)
  %28 = extractvalue { i64, i1 } %27, 0
  %29 = extractvalue { i64, i1 } %27, 1
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %20, 1
  %31 = load {}, ptr %30, align 1
  %32 = insertvalue { i64, i1, {} } undef, i64 %28, 0
  %33 = insertvalue { i64, i1, {} } %32, i1 %29, 1
  %34 = insertvalue { i64, i1, {} } %33, {} %31, 2
  %35 = extractvalue { i64, i1, {} } %34, 0
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %37 = icmp eq i64 %35, 1
  br i1 %37, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %38 = load ptr, ptr @_llgo_string, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/compiler/cl/_testgo/selects._llgo_routine$1"(ptr %0) {
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define void @"github.com/goplus/llgo/compiler/cl/_testgo/selects.init$after"() {
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr, ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
