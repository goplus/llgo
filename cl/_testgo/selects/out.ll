; ModuleID = 'github.com/goplus/llgo/cl/_testgo/selects'
source_filename = "github.com/goplus/llgo/cl/_testgo/selects"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" = type { ptr, ptr, i32, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/selects.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"c1<-", align 1
@1 = private unnamed_addr constant [4 x i8] c"<-c2", align 1
@2 = private unnamed_addr constant [4 x i8] c"<-c4", align 1
@3 = private unnamed_addr constant [31 x i8] c"blocking select matched no case", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr @"*_llgo_string" }, align 8
@4 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@5 = private unnamed_addr constant [4 x i8] c"<-c1", align 1
@6 = private unnamed_addr constant [4 x i8] c"c2<-", align 1
@7 = private unnamed_addr constant [4 x i8] c"<-c3", align 1

define void @"github.com/goplus/llgo/cl/_testgo/selects.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/selects.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/selects.init$guard", align 1
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
  %16 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load ptr, ptr %0, align 8
  %18 = alloca {}, align 8
  call void @llvm.memset(ptr %18, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %18, align 1
  %19 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr %17, ptr %18, i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load ptr, ptr %2, align 8
  %22 = alloca {}, align 8
  call void @llvm.memset(ptr %22, i8 0, i64 0, i1 false)
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %23, ptr %22, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %24, i32 0, 2
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %25, i1 false, 3
  %27 = alloca {}, align 8
  call void @llvm.memset(ptr %27, i8 0, i64 0, i1 false)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %6, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %28, ptr %27, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %29, i32 0, 2
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %30, i1 false, 3
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %33 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %32, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %26, ptr %33, align 8
  %34 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %32, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %31, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %32, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 2, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 2, 2
  %38 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37)
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %26, 1
  %42 = load {}, ptr %41, align 1
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %31, 1
  %44 = load {}, ptr %43, align 1
  %45 = insertvalue { i64, i1, {}, {} } undef, i64 %39, 0
  %46 = insertvalue { i64, i1, {}, {} } %45, i1 %40, 1
  %47 = insertvalue { i64, i1, {}, {} } %46, {} %42, 2
  %48 = insertvalue { i64, i1, {}, {} } %47, {} %44, 3
  %49 = extractvalue { i64, i1, {}, {} } %48, 0
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %51 = icmp eq i64 %49, 1
  br i1 %51, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %52, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/selects.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr, ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr, ptr } %1, 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = alloca {}, align 8
  call void @llvm.memset(ptr %5, i8 0, i64 0, i1 false)
  %6 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr %4, ptr %5, i64 0)
  %7 = load {}, ptr %5, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = extractvalue { ptr, ptr, ptr } %1, 1
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = extractvalue { ptr, ptr, ptr } %1, 2
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = alloca {}, align 8
  call void @llvm.memset(ptr %14, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %14, align 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %10, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %15, ptr %14, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %16, i32 0, 2
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %17, i1 true, 3
  %19 = alloca {}, align 8
  call void @llvm.memset(ptr %19, i8 0, i64 0, i1 false)
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %13, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %20, ptr %19, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %21, i32 0, 2
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %22, i1 false, 3
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %25 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %24, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %18, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", ptr %24, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %23, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 2, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 2, 2
  %30 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29)
  %31 = extractvalue { i64, i1 } %30, 0
  %32 = extractvalue { i64, i1 } %30, 1
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %23, 1
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %40 = icmp eq i64 %38, 1
  br i1 %40, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %41, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %42)
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr, ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr, ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
