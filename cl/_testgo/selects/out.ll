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
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %26, i64 0)
  store {} zeroinitializer, ptr %27, align 1
  %28 = call i1 @"github.com/goplus/llgo/internal/runtime.ChanSend"(ptr %25, ptr %27, i64 0)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @0, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 4, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %33 = load ptr, ptr %4, align 8
  %34 = alloca {}, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %34, i64 0)
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %36, i32 0, i32 0
  store ptr %33, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %36, i32 0, i32 1
  store ptr %35, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %36, i32 0, i32 2
  store i64 0, ptr %39, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %36, i32 0, i32 3
  store i1 false, ptr %40, align 1
  %41 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %36, align 8
  %42 = alloca {}, align 8
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %42, i64 0)
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %44, i32 0, i32 0
  store ptr %8, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %44, i32 0, i32 1
  store ptr %43, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %44, i32 0, i32 2
  store i64 0, ptr %47, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %44, i32 0, i32 3
  store i1 false, ptr %48, align 1
  %49 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %44, align 8
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %51 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %50, i64 0
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %41, ptr %51, align 8
  %52 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %50, i64 1
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %49, ptr %52, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 0
  store ptr %50, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 1
  store i64 2, ptr %55, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 2
  store i64 2, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, align 8
  %58 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.Select"(%"github.com/goplus/llgo/internal/runtime.Slice" %57)
  %59 = extractvalue { i64, i1 } %58, 0
  %60 = extractvalue { i64, i1 } %58, 1
  %61 = extractvalue %"github.com/goplus/llgo/internal/runtime.ChanOp" %41, 1
  %62 = load {}, ptr %61, align 1
  %63 = extractvalue %"github.com/goplus/llgo/internal/runtime.ChanOp" %49, 1
  %64 = load {}, ptr %63, align 1
  %65 = alloca { i64, i1, {}, {} }, align 8
  %66 = getelementptr inbounds { i64, i1, {}, {} }, ptr %65, i32 0, i32 0
  store i64 %59, ptr %66, align 4
  %67 = getelementptr inbounds { i64, i1, {}, {} }, ptr %65, i32 0, i32 1
  store i1 %60, ptr %67, align 1
  %68 = getelementptr inbounds { i64, i1, {}, {} }, ptr %65, i32 0, i32 2
  store {} %62, ptr %68, align 1
  %69 = getelementptr inbounds { i64, i1, {}, {} }, ptr %65, i32 0, i32 3
  store {} %64, ptr %69, align 1
  %70 = load { i64, i1, {}, {} }, ptr %65, align 4
  %71 = extractvalue { i64, i1, {}, {} } %70, 0
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %73 = extractvalue { i64, i1, {}, {} } %70, 2
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @1, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 4, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %77)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %78 = icmp eq i64 %71, 1
  br i1 %78, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %79 = extractvalue { i64, i1, {}, {} } %70, 3
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 0
  store ptr @2, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 1
  store i64 4, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %80, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %83)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @3, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 31, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = load ptr, ptr @_llgo_string, align 8
  %89 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %87, ptr %89, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %90, i32 0, i32 0
  store ptr %88, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %90, i32 0, i32 1
  store ptr %89, ptr %92, align 8
  %93 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %90, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %93)
  unreachable
}

define void @"main.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr, ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr, ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = alloca {}, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %4, i64 0)
  %6 = call i1 @"github.com/goplus/llgo/internal/runtime.ChanRecv"(ptr %3, ptr %5, i64 0)
  %7 = load {}, ptr %5, align 1
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr @4, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 4, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %12 = extractvalue { ptr, ptr, ptr } %1, 1
  %13 = load ptr, ptr %12, align 8
  %14 = extractvalue { ptr, ptr, ptr } %1, 2
  %15 = load ptr, ptr %14, align 8
  %16 = alloca {}, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %16, i64 0)
  store {} zeroinitializer, ptr %17, align 1
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %18, i32 0, i32 0
  store ptr %13, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %18, i32 0, i32 1
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %18, i32 0, i32 2
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %18, i32 0, i32 3
  store i1 true, ptr %22, align 1
  %23 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %18, align 8
  %24 = alloca {}, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %24, i64 0)
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.ChanOp", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %26, i32 0, i32 0
  store ptr %15, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %26, i32 0, i32 1
  store ptr %25, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %26, i32 0, i32 2
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %26, i32 0, i32 3
  store i1 false, ptr %30, align 1
  %31 = load %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %26, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %33 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %32, i64 0
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %23, ptr %33, align 8
  %34 = getelementptr %"github.com/goplus/llgo/internal/runtime.ChanOp", ptr %32, i64 1
  store %"github.com/goplus/llgo/internal/runtime.ChanOp" %31, ptr %34, align 8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 0
  store ptr %32, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 1
  store i64 2, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 2
  store i64 2, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, align 8
  %40 = call { i64, i1 } @"github.com/goplus/llgo/internal/runtime.Select"(%"github.com/goplus/llgo/internal/runtime.Slice" %39)
  %41 = extractvalue { i64, i1 } %40, 0
  %42 = extractvalue { i64, i1 } %40, 1
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.ChanOp" %31, 1
  %44 = load {}, ptr %43, align 1
  %45 = alloca { i64, i1, {} }, align 8
  %46 = getelementptr inbounds { i64, i1, {} }, ptr %45, i32 0, i32 0
  store i64 %41, ptr %46, align 4
  %47 = getelementptr inbounds { i64, i1, {} }, ptr %45, i32 0, i32 1
  store i1 %42, ptr %47, align 1
  %48 = getelementptr inbounds { i64, i1, {} }, ptr %45, i32 0, i32 2
  store {} %44, ptr %48, align 1
  %49 = load { i64, i1, {} }, ptr %45, align 4
  %50 = extractvalue { i64, i1, {} } %49, 0
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @5, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 4, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %56 = icmp eq i64 %50, 1
  br i1 %56, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %57 = extractvalue { i64, i1, {} } %49, 2
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 0
  store ptr @6, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 1
  store i64 4, ptr %60, align 4
  %61 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %58, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %61)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_3
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @3, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 31, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = load ptr, ptr @_llgo_string, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %65, ptr %67, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 0
  store ptr %66, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 1
  store ptr %67, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %71)
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

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

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
