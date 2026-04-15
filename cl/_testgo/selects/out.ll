; ModuleID = 'github.com/goplus/llgo/cl/_testgo/selects'
source_filename = "github.com/goplus/llgo/cl/_testgo/selects"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" = type { ptr, ptr, i32, i1 }
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
  %0 = alloca {}, align 8
  %1 = alloca {}, align 8
  %2 = alloca {}, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %4, ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %6, ptr %5, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %8, ptr %7, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 0, i64 1)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %11 = getelementptr inbounds { ptr, ptr, ptr }, ptr %10, i32 0, i32 0
  store ptr %3, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr, ptr }, ptr %10, i32 0, i32 1
  store ptr %5, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, ptr, ptr }, ptr %10, i32 0, i32 2
  store ptr %7, ptr %13, align 8
  %14 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/selects.main$1", ptr undef }, ptr %10, 1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %16 = getelementptr inbounds { { ptr, ptr } }, ptr %15, i32 0, i32 0
  store { ptr, ptr } %14, ptr %16, align 8
  %17 = alloca i8, i64 8, align 1
  %18 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %17, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/selects._llgo_routine$1", ptr %15)
  %19 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load ptr, ptr %3, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %2, align 1
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr %20, ptr %2, i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load ptr, ptr %5, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 0, i1 false)
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %24, ptr %1, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %25, i32 0, 2
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %26, i1 false, 3
  call void @llvm.memset(ptr %0, i8 0, i64 0, i1 false)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %9, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %28, ptr %0, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %29, i32 0, 2
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %30, i1 false, 3
  %32 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select2"(%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %27, %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %31)
  %33 = extractvalue { i64, i1 } %32, 0
  %34 = extractvalue { i64, i1 } %32, 1
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %27, 1
  %36 = load {}, ptr %35, align 1
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %31, 1
  %38 = load {}, ptr %37, align 1
  %39 = insertvalue { i64, i1, {}, {} } undef, i64 %33, 0
  %40 = insertvalue { i64, i1, {}, {} } %39, i1 %34, 1
  %41 = insertvalue { i64, i1, {}, {} } %40, {} %36, 2
  %42 = insertvalue { i64, i1, {}, {} } %41, {} %38, 3
  %43 = extractvalue { i64, i1, {}, {} } %42, 0
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %45 = icmp eq i64 %43, 1
  br i1 %45, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %46, align 8
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %46, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/selects.main$1"(ptr %0) {
_llgo_0:
  %1 = alloca {}, align 8
  %2 = alloca {}, align 8
  %3 = alloca {}, align 8
  %4 = load { ptr, ptr, ptr }, ptr %0, align 8
  %5 = extractvalue { ptr, ptr, ptr } %4, 0
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  call void @llvm.memset(ptr %3, i8 0, i64 0, i1 false)
  %8 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr %7, ptr %3, i64 0)
  %9 = load {}, ptr %3, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = extractvalue { ptr, ptr, ptr } %4, 1
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = extractvalue { ptr, ptr, ptr } %4, 2
  %14 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load ptr, ptr %13, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %2, align 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %12, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %16, ptr %2, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %17, i32 0, 2
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %18, i1 true, 3
  call void @llvm.memset(ptr %1, i8 0, i64 0, i1 false)
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" undef, ptr %15, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %20, ptr %1, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %21, i32 0, 2
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %22, i1 false, 3
  %24 = call { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select2"(%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %19, %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %23)
  %25 = extractvalue { i64, i1 } %24, 0
  %26 = extractvalue { i64, i1 } %24, 1
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp" %23, 1
  %28 = load {}, ptr %27, align 1
  %29 = insertvalue { i64, i1, {} } undef, i64 %25, 0
  %30 = insertvalue { i64, i1, {} } %29, i1 %26, 1
  %31 = insertvalue { i64, i1, {} } %30, {} %28, 2
  %32 = extractvalue { i64, i1, {} } %31, 0
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %34 = icmp eq i64 %32, 1
  br i1 %34, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %35, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %36)
  unreachable
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/selects._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr } }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr } } %1, 0
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  call void %4(ptr %3)
  ret ptr null
}

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr, ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare { i64, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.Select2"(%"github.com/goplus/llgo/runtime/internal/runtime.ChanOp", %"github.com/goplus/llgo/runtime/internal/runtime.ChanOp")

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
