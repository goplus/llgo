; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/c/pthread.RoutineFunc" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.ChanOp" = type { ptr, ptr, i32, i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"c1<-", align 1
@1 = private unnamed_addr constant [4 x i8] c"<-c2", align 1
@2 = private unnamed_addr constant [4 x i8] c"<-c4", align 1
@3 = private unnamed_addr constant [31 x i8] c"blocking select matched no case", align 1
@_llgo_string = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"<-c1", align 1
@5 = private unnamed_addr constant [4 x i8] c"c2<-", align 1
@6 = private unnamed_addr constant [4 x i8] c"<-c3", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %3, ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %5, ptr %4, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 0, i64 1)
  store ptr %7, ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 0, i64 1)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %10 = getelementptr inbounds { ptr, ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %4, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr, ptr }, ptr %9, i32 0, i32 2
  store ptr %6, ptr %12, align 8
  %13 = alloca { ptr, ptr }, align 8
  %14 = getelementptr inbounds { ptr, ptr }, ptr %13, i32 0, i32 0
  store ptr @"main.main$1", ptr %14, align 8
  %15 = getelementptr inbounds { ptr, ptr }, ptr %13, i32 0, i32 1
  store ptr %9, ptr %15, align 8
  %16 = load { ptr, ptr }, ptr %13, align 8
  %17 = call ptr @malloc(i64 16)
  %18 = getelementptr inbounds { { ptr, ptr } }, ptr %17, i32 0, i32 0
  store { ptr, ptr } %16, ptr %18, align 8
  %19 = alloca i8, i64 8, align 1
  %20 = alloca %"github.com/goplus/llgo/c/pthread.RoutineFunc", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %20, i32 0, i32 0
  store ptr @"__llgo_stub.main._llgo_routine$1", ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %20, i32 0, i32 1
  store ptr null, ptr %22, align 8
  %23 = load %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %20, align 8
  %24 = call i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr %19, ptr null, %"github.com/goplus/llgo/c/pthread.RoutineFunc" %23, ptr %17)
  %25 = load ptr, ptr %2, align 8
  %26 = alloca {}, align 8
  call void @llvm.memset(ptr %26, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %26, align 1
  %27 = call i1 @"github.com/goplus/llgo/internal/runtime.ChanSend"(ptr %25, ptr %26, i64 0)
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 0
  store ptr @0, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 1
  store i64 4, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %28, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %31)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %32 = load ptr, ptr %4, align 8
  %33 = alloca {}, align 8
  call void @llvm.memset(ptr %33, i8 0, i64 0, i1 false)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %34, i32 0, i32 0
  store ptr %32, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %34, i32 0, i32 1
  store ptr %33, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %34, i32 0, i32 2
  store i64 0, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %34, i32 0, i32 3
  store i1 false, ptr %38, align 1
  %39 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %34, align 8
  %40 = alloca {}, align 8
  call void @llvm.memset(ptr %40, i8 0, i64 0, i1 false)
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %41, i32 0, i32 0
  store ptr %8, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %41, i32 0, i32 1
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %41, i32 0, i32 2
  store i64 0, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %41, i32 0, i32 3
  store i1 false, ptr %45, align 1
  %46 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %41, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %48 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %47, i64 0
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %39, ptr %48, align 8
  %49 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %47, i64 1
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %46, ptr %49, align 8
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 0
  store ptr %47, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 1
  store i64 2, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 2
  store i64 2, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, align 8
  %55 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.Select"(%"github.com/goplus/llgo/internal/runtime.Slice" %54)
  %56 = extractvalue { i64, i1 } %55, 0
  %57 = extractvalue { i64, i1 } %55, 1
  %58 = extractvalue %"github.com/goplus/llgo/internal/runtime.ChanOp" %39, 1
  %59 = load {}, ptr %58, align 1
  %60 = extractvalue %"github.com/goplus/llgo/internal/runtime.ChanOp" %46, 1
  %61 = load {}, ptr %60, align 1
  %62 = alloca { i64, i1, {}, {} }, align 8
  %63 = getelementptr inbounds { i64, i1, {}, {} }, ptr %62, i32 0, i32 0
  store i64 %56, ptr %63, align 4
  %64 = getelementptr inbounds { i64, i1, {}, {} }, ptr %62, i32 0, i32 1
  store i1 %57, ptr %64, align 1
  %65 = getelementptr inbounds { i64, i1, {}, {} }, ptr %62, i32 0, i32 2
  store {} %59, ptr %65, align 1
  %66 = getelementptr inbounds { i64, i1, {}, {} }, ptr %62, i32 0, i32 3
  store {} %61, ptr %66, align 1
  %67 = load { i64, i1, {}, {} }, ptr %62, align 4
  %68 = extractvalue { i64, i1, {}, {} } %67, 0
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %70 = extractvalue { i64, i1, {}, {} } %67, 2
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr @1, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 4, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %74)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %75 = icmp eq i64 %68, 1
  br i1 %75, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %76 = extractvalue { i64, i1, {}, {} } %67, 3
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %77, i32 0, i32 0
  store ptr @2, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %77, i32 0, i32 1
  store i64 4, ptr %79, align 4
  %80 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %77, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %80)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 0
  store ptr @3, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 1
  store i64 31, ptr %83, align 4
  %84 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %81, align 8
  %85 = load ptr, ptr @_llgo_string, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %84, ptr %86, align 8
  %87 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %87, i32 0, i32 0
  store ptr %85, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %87, i32 0, i32 1
  store ptr %86, ptr %89, align 8
  %90 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %87, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %90)
  unreachable
}

define void @"main.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr, ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr, ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = alloca {}, align 8
  call void @llvm.memset(ptr %4, i8 0, i64 0, i1 false)
  %5 = call i1 @"github.com/goplus/llgo/internal/runtime.ChanRecv"(ptr %3, ptr %4, i64 0)
  %6 = load {}, ptr %4, align 1
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @4, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 4, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %11 = extractvalue { ptr, ptr, ptr } %1, 1
  %12 = load ptr, ptr %11, align 8
  %13 = extractvalue { ptr, ptr, ptr } %1, 2
  %14 = load ptr, ptr %13, align 8
  %15 = alloca {}, align 8
  call void @llvm.memset(ptr %15, i8 0, i64 0, i1 false)
  store {} zeroinitializer, ptr %15, align 1
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %16, i32 0, i32 0
  store ptr %12, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %16, i32 0, i32 1
  store ptr %15, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %16, i32 0, i32 2
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %16, i32 0, i32 3
  store i1 true, ptr %20, align 1
  %21 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %16, align 8
  %22 = alloca {}, align 8
  call void @llvm.memset(ptr %22, i8 0, i64 0, i1 false)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %23, i32 0, i32 0
  store ptr %14, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %23, i32 0, i32 1
  store ptr %22, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %23, i32 0, i32 2
  store i64 0, ptr %26, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %23, i32 0, i32 3
  store i1 false, ptr %27, align 1
  %28 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %23, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %30 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %29, i64 0
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %21, ptr %30, align 8
  %31 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %29, i64 1
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %28, ptr %31, align 8
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 0
  store ptr %29, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 1
  store i64 2, ptr %34, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 2
  store i64 2, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, align 8
  %37 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.Select"(%"github.com/goplus/llgo/internal/runtime.Slice" %36)
  %38 = extractvalue { i64, i1 } %37, 0
  %39 = extractvalue { i64, i1 } %37, 1
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.ChanOp" %28, 1
  %41 = load {}, ptr %40, align 1
  %42 = alloca { i64, i1, {} }, align 8
  %43 = getelementptr inbounds { i64, i1, {} }, ptr %42, i32 0, i32 0
  store i64 %38, ptr %43, align 4
  %44 = getelementptr inbounds { i64, i1, {} }, ptr %42, i32 0, i32 1
  store i1 %39, ptr %44, align 1
  %45 = getelementptr inbounds { i64, i1, {} }, ptr %42, i32 0, i32 2
  store {} %41, ptr %45, align 1
  %46 = load { i64, i1, {} }, ptr %42, align 4
  %47 = extractvalue { i64, i1, {} } %46, 0
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 0
  store ptr @5, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 1
  store i64 4, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %49, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %52)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %53 = icmp eq i64 %47, 1
  br i1 %53, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %54 = extractvalue { i64, i1, {} } %46, 2
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @6, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 4, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %58)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 0
  store ptr @3, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 1
  store i64 31, ptr %61, align 4
  %62 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %59, align 8
  %63 = load ptr, ptr @_llgo_string, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %62, ptr %64, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %65, i32 0, i32 0
  store ptr %63, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %65, i32 0, i32 1
  store ptr %64, ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %65, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %68)
  unreachable
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @malloc(i64)

define ptr @"main._llgo_routine$1"(ptr %0) {
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

declare i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr, ptr, %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr)

define linkonce ptr @"__llgo_stub.main._llgo_routine$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call ptr @"main._llgo_routine$1"(ptr %1)
  ret ptr %2
}

declare i1 @"github.com/goplus/llgo/internal/runtime.ChanSend"(ptr, ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare { i64, i1 } @"github.com/goplus/llgo/internal/runtime.Select"(%"github.com/goplus/llgo/internal/runtime.Slice")

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/internal/runtime.ChanRecv"(ptr, ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
