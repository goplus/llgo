; ModuleID = 'main'
source_filename = "main"

%main.T = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.T5 = type { i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"invoke1", align 1
@2 = private unnamed_addr constant [7 x i8] c"invoke2", align 1
@3 = private unnamed_addr constant [7 x i8] c"invoke3", align 1
@4 = private unnamed_addr constant [7 x i8] c"invoke4", align 1
@5 = private unnamed_addr constant [7 x i8] c"invoke5", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null, align 8
@7 = private unnamed_addr constant [1 x i8] c"s", align 1
@8 = private unnamed_addr constant [4 x i8] c"main", align 1
@9 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [1 x i8] c"T", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null, align 8
@"*_llgo_main.T" = linkonce global ptr null, align 8
@_llgo_main.T1 = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [2 x i8] c"T1", align 1
@"*_llgo_main.T1" = linkonce global ptr null, align 8
@_llgo_main.T2 = linkonce global ptr null, align 8
@_llgo_float64 = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [2 x i8] c"T2", align 1
@"*_llgo_main.T2" = linkonce global ptr null, align 8
@_llgo_main.T3 = linkonce global ptr null, align 8
@_llgo_int8 = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [2 x i8] c"T3", align 1
@"*_llgo_main.T3" = linkonce global ptr null, align 8
@_llgo_main.T4 = linkonce global ptr null, align 8
@"[1]_llgo_int" = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [2 x i8] c"T4", align 1
@"*_llgo_main.T4" = linkonce global ptr null, align 8
@_llgo_main.T5 = linkonce global ptr null, align 8
@"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U" = global ptr null, align 8
@16 = private unnamed_addr constant [1 x i8] c"n", align 1
@17 = private unnamed_addr constant [2 x i8] c"T5", align 1
@"*_llgo_main.T5" = linkonce global ptr null, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [5 x i8] c"world", align 1
@_llgo_main.I = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@20 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_any = linkonce global ptr null, align 8

define i64 @main.T.Invoke(%main.T %0) {
_llgo_0:
  %1 = alloca %main.T, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 16)
  store %main.T %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.T, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @0, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 6, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 0
}

define i64 @"main.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %main.T, ptr %0, align 8
  %2 = call i64 @main.T.Invoke(%main.T %1)
  ret i64 %2
}

define void @"main.(*T).Method"(ptr %0) {
_llgo_0:
  ret void
}

define i64 @main.T1.Invoke(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @1, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 7, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 1
}

define i64 @"main.(*T1).Invoke"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  %2 = call i64 @main.T1.Invoke(i64 %1)
  ret i64 %2
}

define i64 @main.T2.Invoke(double %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @2, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 7, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 2
}

define i64 @"main.(*T2).Invoke"(ptr %0) {
_llgo_0:
  %1 = load double, ptr %0, align 8
  %2 = call i64 @main.T2.Invoke(double %1)
  ret i64 %2
}

define i64 @"main.(*T3).Invoke"(ptr %0) {
_llgo_0:
  %1 = load i8, ptr %0, align 1
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @3, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 7, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %6 = sext i8 %1 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 3
}

define i64 @main.T4.Invoke([1 x i64] %0) {
_llgo_0:
  %1 = alloca [1 x i64], align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 8)
  store [1 x i64] %0, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %2, i64 0
  %4 = load i64, ptr %3, align 4
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @4, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 7, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 4
}

define i64 @"main.(*T4).Invoke"(ptr %0) {
_llgo_0:
  %1 = load [1 x i64], ptr %0, align 4
  %2 = call i64 @main.T4.Invoke([1 x i64] %1)
  ret i64 %2
}

define i64 @main.T5.Invoke(%main.T5 %0) {
_llgo_0:
  %1 = alloca %main.T5, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 8)
  store %main.T5 %0, ptr %2, align 4
  %3 = getelementptr inbounds %main.T5, ptr %2, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @5, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 7, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 5
}

define i64 @"main.(*T5).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %main.T5, ptr %0, align 4
  %2 = call i64 @main.T5.Invoke(%main.T5 %1)
  ret i64 %2
}

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

define void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = alloca { ptr, ptr }, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 1
  store ptr %1, ptr %7, align 8
  %8 = load { ptr, ptr }, ptr %5, align 8
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %3 = getelementptr inbounds %main.T, ptr %2, i32 0, i32 0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @6, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %3, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  store double 1.001000e+02, ptr %9, align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 1)
  store i8 127, ptr %10, align 1
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %12 = getelementptr inbounds i64, ptr %11, i64 0
  store i64 200, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %14 = getelementptr inbounds %main.T5, ptr %13, i32 0, i32 0
  store i64 300, ptr %14, align 4
  %15 = load %main.T, ptr %2, align 8
  %16 = load ptr, ptr @_llgo_main.T, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %15, ptr %17, align 8
  %18 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %18, ptr %16)
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %20, i32 0, i32 1
  store ptr %17, ptr %22, align 8
  %23 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %20, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %23)
  %24 = load ptr, ptr @"*_llgo_main.T", align 8
  %25 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %25, ptr %24)
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %27, i32 0, i32 0
  store ptr %26, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %27, i32 0, i32 1
  store ptr %2, ptr %29, align 8
  %30 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %27, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %30)
  %31 = load i64, ptr %8, align 4
  %32 = load ptr, ptr @_llgo_main.T1, align 8
  %33 = inttoptr i64 %31 to ptr
  %34 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %34, ptr %32)
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, i32 0, i32 0
  store ptr %35, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, i32 0, i32 1
  store ptr %33, ptr %38, align 8
  %39 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %39)
  %40 = load ptr, ptr @"*_llgo_main.T1", align 8
  %41 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %41, ptr %40)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %43, i32 0, i32 0
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %43, i32 0, i32 1
  store ptr %8, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %43, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %46)
  %47 = load double, ptr %9, align 8
  %48 = load ptr, ptr @_llgo_main.T2, align 8
  %49 = bitcast double %47 to i64
  %50 = inttoptr i64 %49 to ptr
  %51 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %51, ptr %48)
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %53, i32 0, i32 1
  store ptr %50, ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %53, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %56)
  %57 = load ptr, ptr @"*_llgo_main.T2", align 8
  %58 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %58, ptr %57)
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %60, i32 0, i32 0
  store ptr %59, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %60, i32 0, i32 1
  store ptr %9, ptr %62, align 8
  %63 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %60, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %63)
  %64 = load ptr, ptr @"*_llgo_main.T3", align 8
  %65 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %65, ptr %64)
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %67, i32 0, i32 0
  store ptr %66, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %67, i32 0, i32 1
  store ptr %10, ptr %69, align 8
  %70 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %67, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %70)
  %71 = load [1 x i64], ptr %11, align 4
  %72 = load ptr, ptr @_llgo_main.T4, align 8
  %73 = extractvalue [1 x i64] %71, 0
  %74 = inttoptr i64 %73 to ptr
  %75 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %75, ptr %72)
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, i32 0, i32 0
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, i32 0, i32 1
  store ptr %74, ptr %79, align 8
  %80 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %80)
  %81 = load ptr, ptr @"*_llgo_main.T4", align 8
  %82 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %82, ptr %81)
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %84, i32 0, i32 0
  store ptr %83, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %84, i32 0, i32 1
  store ptr %11, ptr %86, align 8
  %87 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %84, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %87)
  %88 = load %main.T5, ptr %13, align 4
  %89 = load ptr, ptr @_llgo_main.T5, align 8
  %90 = extractvalue %main.T5 %88, 0
  %91 = inttoptr i64 %90 to ptr
  %92 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %92, ptr %89)
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %94, i32 0, i32 0
  store ptr %93, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %94, i32 0, i32 1
  store ptr %91, ptr %96, align 8
  %97 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %94, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %97)
  %98 = load ptr, ptr @"*_llgo_main.T5", align 8
  %99 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %99, ptr %98)
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %101, i32 0, i32 0
  store ptr %100, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %101, i32 0, i32 1
  store ptr %13, ptr %103, align 8
  %104 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %101, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %104)
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %106 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %106, ptr %105)
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, i32 0, i32 0
  store ptr %107, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, i32 0, i32 1
  store ptr null, ptr %110, align 8
  %111 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %111)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %112 = load ptr, ptr @"*_llgo_main.T", align 8
  %113 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %113, ptr %112)
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, i32 0, i32 0
  store ptr %114, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, i32 0, i32 1
  store ptr %2, ptr %117, align 8
  %118 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, align 8
  %119 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %118)
  %120 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %118, 1
  %121 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %121, ptr %119)
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %123, i32 0, i32 0
  store ptr %122, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %123, i32 0, i32 1
  store ptr %120, ptr %125, align 8
  %126 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %123, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %126)
  %127 = alloca %main.T, align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %127, i64 16)
  %129 = getelementptr inbounds %main.T, ptr %128, i32 0, i32 0
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 0
  store ptr @18, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 1
  store i64 5, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %130, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %133, ptr %129, align 8
  %134 = load %main.T, ptr %128, align 8
  %135 = load ptr, ptr @_llgo_main.T, align 8
  %136 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %134, ptr %136, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, i32 0, i32 0
  store ptr %135, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, i32 0, i32 1
  store ptr %136, ptr %139, align 8
  %140 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, align 8
  %141 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %140, 0
  %142 = load ptr, ptr @_llgo_main.I, align 8
  %143 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %142, ptr %141)
  br i1 %143, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %144 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %140, 1
  %145 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %145, ptr %141)
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %147, i32 0, i32 0
  store ptr %146, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %147, i32 0, i32 1
  store ptr %144, ptr %149, align 8
  %150 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %147, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %150)
  %151 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %140, 0
  %152 = load ptr, ptr @_llgo_any, align 8
  %153 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %152, ptr %151)
  br i1 %153, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr @20, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 21, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = load ptr, ptr @_llgo_string, align 8
  %159 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %157, ptr %159, align 8
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %160, i32 0, i32 0
  store ptr %158, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %160, i32 0, i32 1
  store ptr %159, ptr %162, align 8
  %163 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %160, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %163)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %164 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %140, 1
  %165 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %165, i32 0, i32 0
  store ptr %151, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %165, i32 0, i32 1
  store ptr %164, ptr %167, align 8
  %168 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %165, align 8
  %169 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %168, 0
  %170 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %171 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %170, ptr %169)
  br i1 %171, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @20, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 21, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = load ptr, ptr @_llgo_string, align 8
  %177 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %175, ptr %177, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, i32 0, i32 0
  store ptr %176, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, i32 0, i32 1
  store ptr %177, ptr %180, align 8
  %181 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %181)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %182 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %168, 1
  %183 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %184 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %183, ptr %169)
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %185, i32 0, i32 0
  store ptr %184, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %185, i32 0, i32 1
  store ptr %182, ptr %187, align 8
  %188 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %185, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %188)
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 0
  store ptr @20, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 1
  store i64 21, ptr %191, align 4
  %192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %189, align 8
  %193 = load ptr, ptr @_llgo_string, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %192, ptr %194, align 8
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %195, i32 0, i32 0
  store ptr %193, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %195, i32 0, i32 1
  store ptr %194, ptr %197, align 8
  %198 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %195, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %198)
  unreachable
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_main.T, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 1, i64 2)
  store ptr %2, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @7, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %12 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %6, ptr %11, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 false)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @8, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 4, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %18 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %17, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %12, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 0
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 1
  store i64 1, ptr %21, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 2
  store i64 1, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %16, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %23)
  store ptr %24, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %25 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br i1 %1, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @9, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 6, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  %30 = load ptr, ptr @_llgo_int, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_10, %_llgo_2
  %32 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %33 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_11, label %_llgo_12

_llgo_5:                                          ; preds = %_llgo_3
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %35, i32 0, i32 6
  %37 = load i8, ptr %36, align 1
  %38 = or i8 %37, 32
  store i8 %38, ptr %36, align 1
  store ptr %35, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %39 = load ptr, ptr @_llgo_int, align 8
  %40 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 0
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 1
  store i64 0, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 2
  store i64 0, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %49 = getelementptr ptr, ptr %48, i64 0
  store ptr %39, ptr %49, align 8
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 0
  store ptr %48, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 1
  store i64 1, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 2
  store i64 1, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %47, %"github.com/goplus/llgo/internal/runtime.Slice" %54, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %55)
  store ptr %55, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %56 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %57 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %29, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 1
  store ptr %56, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %61, align 8
  %62 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %57, align 8
  %63 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %29, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 1
  store ptr %56, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %63, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 0
  store ptr @10, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 1
  store i64 6, ptr %71, align 4
  %72 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %69, align 8
  %73 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 0
  store ptr %75, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 1
  store i64 0, ptr %78, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 2
  store i64 0, ptr %79, align 4
  %80 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 0
  store ptr %81, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 1
  store i64 0, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 2
  store i64 0, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %80, %"github.com/goplus/llgo/internal/runtime.Slice" %86, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %87)
  store ptr %87, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %88 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %89 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %89, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %72, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %89, i32 0, i32 1
  store ptr %88, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %89, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %89, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %93, align 8
  %94 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %89, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %96 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %95, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %68, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 0
  store ptr %95, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 1
  store i64 1, ptr %99, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 2
  store i64 1, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %103 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %102, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %62, ptr %103, align 8
  %104 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %102, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %94, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 0
  store ptr %102, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 1
  store i64 2, ptr %107, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 2
  store i64 2, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, align 8
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 0
  store ptr @8, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 4, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @11, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 1, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %113, %"github.com/goplus/llgo/internal/runtime.String" %117, ptr %25, %"github.com/goplus/llgo/internal/runtime.Slice" %101, %"github.com/goplus/llgo/internal/runtime.Slice" %109)
  br label %_llgo_4

_llgo_11:                                         ; preds = %_llgo_4
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @9, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 6, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %122, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %122, i32 0, i32 1
  store ptr %32, ptr %124, align 8
  %125 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %122, align 8
  %126 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %127 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %126, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %125, ptr %127, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 0
  store ptr %126, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 1
  store i64 1, ptr %130, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 2
  store i64 1, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %133, i32 0, i32 0
  store ptr @8, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %133, i32 0, i32 1
  store i64 4, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %133, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr null, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 0, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %136, %"github.com/goplus/llgo/internal/runtime.String" %140, %"github.com/goplus/llgo/internal/runtime.Slice" %132)
  store ptr %141, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_4
  %142 = load ptr, ptr @"*_llgo_main.T", align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %144)
  store ptr %144, ptr @"*_llgo_main.T", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %145 = load ptr, ptr @_llgo_main.T1, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %147, i32 0, i32 6
  %149 = load i8, ptr %148, align 1
  %150 = or i8 %149, 32
  store i8 %150, ptr %148, align 1
  store ptr %147, ptr @_llgo_main.T1, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %151 = load ptr, ptr @_llgo_int, align 8
  br i1 %146, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @9, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 6, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %157 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %155, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 1
  store ptr %156, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %161, align 8
  %162 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %157, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %155, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 1
  store ptr %156, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %167, align 8
  %168 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %163, align 8
  %169 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %170 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %168, ptr %170, align 8
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %171, i32 0, i32 0
  store ptr %169, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %171, i32 0, i32 1
  store i64 1, ptr %173, align 4
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %171, i32 0, i32 2
  store i64 1, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %171, align 8
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %177 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %176, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %162, ptr %177, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 0
  store ptr %176, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 1
  store i64 1, ptr %180, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 2
  store i64 1, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, align 8
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 0
  store ptr @8, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 1
  store i64 4, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr @12, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 2, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %147, %"github.com/goplus/llgo/internal/runtime.String" %186, %"github.com/goplus/llgo/internal/runtime.String" %190, ptr %151, %"github.com/goplus/llgo/internal/runtime.Slice" %175, %"github.com/goplus/llgo/internal/runtime.Slice" %182)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %191 = load ptr, ptr @"*_llgo_main.T1", align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %193 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %147)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %193)
  store ptr %193, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %194 = load ptr, ptr @_llgo_main.T2, align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %196 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %196, i32 0, i32 6
  %198 = load i8, ptr %197, align 1
  %199 = or i8 %198, 32
  store i8 %199, ptr %197, align 1
  store ptr %196, ptr @_llgo_main.T2, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %200 = load ptr, ptr @_llgo_float64, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %202, i32 0, i32 6
  %204 = load i8, ptr %203, align 1
  %205 = or i8 %204, 32
  store i8 %205, ptr %203, align 1
  store ptr %202, ptr @_llgo_float64, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %206 = load ptr, ptr @_llgo_float64, align 8
  br i1 %195, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %207 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 0
  store ptr @9, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 1
  store i64 6, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %207, align 8
  %211 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %212 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %212, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %210, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %212, i32 0, i32 1
  store ptr %211, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %212, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %215, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %212, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %216, align 8
  %217 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %212, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %218, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %210, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %218, i32 0, i32 1
  store ptr %211, ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %218, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %218, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %222, align 8
  %223 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %218, align 8
  %224 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %225 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %224, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %223, ptr %225, align 8
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 0
  store ptr %224, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 1
  store i64 1, ptr %228, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 2
  store i64 1, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, align 8
  %231 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %232 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %231, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %217, ptr %232, align 8
  %233 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 0
  store ptr %231, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 1
  store i64 1, ptr %235, align 4
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 2
  store i64 1, ptr %236, align 4
  %237 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, align 8
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 0
  store ptr @8, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 1
  store i64 4, ptr %240, align 4
  %241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %238, align 8
  %242 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 0
  store ptr @13, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 1
  store i64 2, ptr %244, align 4
  %245 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %242, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %196, %"github.com/goplus/llgo/internal/runtime.String" %241, %"github.com/goplus/llgo/internal/runtime.String" %245, ptr %206, %"github.com/goplus/llgo/internal/runtime.Slice" %230, %"github.com/goplus/llgo/internal/runtime.Slice" %237)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %246 = load ptr, ptr @"*_llgo_main.T2", align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %248 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %196)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %248)
  store ptr %248, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %249 = load ptr, ptr @_llgo_main.T3, align 8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 0, i64 1)
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %251, i32 0, i32 6
  %253 = load i8, ptr %252, align 1
  %254 = or i8 %253, 32
  store i8 %254, ptr %252, align 1
  store ptr %251, ptr @_llgo_main.T3, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %255 = load ptr, ptr @_llgo_int8, align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %257 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %257, i32 0, i32 6
  %259 = load i8, ptr %258, align 1
  %260 = or i8 %259, 32
  store i8 %260, ptr %258, align 1
  store ptr %257, ptr @_llgo_int8, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %261 = load ptr, ptr @_llgo_int8, align 8
  br i1 %250, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %262 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 0
  store ptr @9, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 1
  store i64 6, ptr %264, align 4
  %265 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %262, align 8
  %266 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %267 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %265, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 1
  store ptr %266, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %270, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %271, align 8
  %272 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %267, align 8
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %274 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %272, ptr %274, align 8
  %275 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 0
  store ptr %273, ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 1
  store i64 1, ptr %277, align 4
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 2
  store i64 1, ptr %278, align 4
  %279 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, align 8
  %280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 0
  store ptr @8, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 4, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 0
  store ptr @14, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 1
  store i64 2, ptr %286, align 4
  %287 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %284, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %251, %"github.com/goplus/llgo/internal/runtime.String" %283, %"github.com/goplus/llgo/internal/runtime.String" %287, ptr %261, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %279)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %288 = load ptr, ptr @"*_llgo_main.T3", align 8
  %289 = icmp eq ptr %288, null
  br i1 %289, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %290 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %251)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %290)
  store ptr %290, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %291 = load ptr, ptr @_llgo_main.T4, align 8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %293 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 1, i64 1)
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %293, i32 0, i32 6
  %295 = load i8, ptr %294, align 1
  %296 = or i8 %295, 32
  store i8 %296, ptr %294, align 1
  store ptr %293, ptr @_llgo_main.T4, align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %297 = load ptr, ptr @_llgo_int, align 8
  %298 = load ptr, ptr @"[1]_llgo_int", align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %300 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %301 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %300)
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %301, i32 0, i32 6
  %303 = load i8, ptr %302, align 1
  %304 = or i8 %303, 32
  store i8 %304, ptr %302, align 1
  store ptr %301, ptr @"[1]_llgo_int", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %305 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %292, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %306 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 0
  store ptr @9, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 1
  store i64 6, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %306, align 8
  %310 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %311 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %309, ptr %312, align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 1
  store ptr %310, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 3
  store ptr @"main.(*T4).Invoke", ptr %315, align 8
  %316 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %311, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %317, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %309, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %317, i32 0, i32 1
  store ptr %310, ptr %319, align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %317, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %320, align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %317, i32 0, i32 3
  store ptr @main.T4.Invoke, ptr %321, align 8
  %322 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %317, align 8
  %323 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %324 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %323, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %322, ptr %324, align 8
  %325 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %325, i32 0, i32 0
  store ptr %323, ptr %326, align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %325, i32 0, i32 1
  store i64 1, ptr %327, align 4
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %325, i32 0, i32 2
  store i64 1, ptr %328, align 4
  %329 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %325, align 8
  %330 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %331 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %330, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %316, ptr %331, align 8
  %332 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, i32 0, i32 0
  store ptr %330, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, i32 0, i32 1
  store i64 1, ptr %334, align 4
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, i32 0, i32 2
  store i64 1, ptr %335, align 4
  %336 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, align 8
  %337 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 0
  store ptr @8, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 1
  store i64 4, ptr %339, align 4
  %340 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %337, align 8
  %341 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 0
  store ptr @15, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 1
  store i64 2, ptr %343, align 4
  %344 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %341, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %293, %"github.com/goplus/llgo/internal/runtime.String" %340, %"github.com/goplus/llgo/internal/runtime.String" %344, ptr %305, %"github.com/goplus/llgo/internal/runtime.Slice" %329, %"github.com/goplus/llgo/internal/runtime.Slice" %336)
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %345 = load ptr, ptr @"*_llgo_main.T4", align 8
  %346 = icmp eq ptr %345, null
  br i1 %346, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %347 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %293)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %347)
  store ptr %347, ptr @"*_llgo_main.T4", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %348 = load ptr, ptr @_llgo_main.T5, align 8
  %349 = icmp eq ptr %348, null
  br i1 %349, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 1, i64 1)
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %350, i32 0, i32 6
  %352 = load i8, ptr %351, align 1
  %353 = or i8 %352, 32
  store i8 %353, ptr %351, align 1
  store ptr %350, ptr @_llgo_main.T5, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %354 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %354, i32 0, i32 0
  store ptr @16, ptr %355, align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %354, i32 0, i32 1
  store i64 1, ptr %356, align 4
  %357 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %354, align 8
  %358 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %358, i32 0, i32 0
  store ptr null, ptr %359, align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %358, i32 0, i32 1
  store i64 0, ptr %360, align 4
  %361 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %358, align 8
  %362 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %363 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %357, ptr %362, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %361, i1 false)
  %364 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 0
  store ptr @8, ptr %365, align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 1
  store i64 4, ptr %366, align 4
  %367 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %364, align 8
  %368 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %369 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %368, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %363, ptr %369, align 8
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %370, i32 0, i32 0
  store ptr %368, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %370, i32 0, i32 1
  store i64 1, ptr %372, align 4
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %370, i32 0, i32 2
  store i64 1, ptr %373, align 4
  %374 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %370, align 8
  %375 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %367, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %374)
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %375, i32 0, i32 6
  %377 = load i8, ptr %376, align 1
  %378 = or i8 %377, 32
  store i8 %378, ptr %376, align 1
  store ptr %375, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %379 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %349, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 0
  store ptr @9, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 1
  store i64 6, ptr %382, align 4
  %383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %380, align 8
  %384 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %385 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %383, ptr %386, align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 1
  store ptr %384, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %388, align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 3
  store ptr @"main.(*T5).Invoke", ptr %389, align 8
  %390 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %385, align 8
  %391 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %383, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 1
  store ptr %384, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 3
  store ptr @main.T5.Invoke, ptr %395, align 8
  %396 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %391, align 8
  %397 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %398 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %397, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %396, ptr %398, align 8
  %399 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, i32 0, i32 0
  store ptr %397, ptr %400, align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, i32 0, i32 1
  store i64 1, ptr %401, align 4
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, i32 0, i32 2
  store i64 1, ptr %402, align 4
  %403 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, align 8
  %404 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %405 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %390, ptr %405, align 8
  %406 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, i32 0, i32 0
  store ptr %404, ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, i32 0, i32 1
  store i64 1, ptr %408, align 4
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, i32 0, i32 2
  store i64 1, ptr %409, align 4
  %410 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, align 8
  %411 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %411, i32 0, i32 0
  store ptr @8, ptr %412, align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %411, i32 0, i32 1
  store i64 4, ptr %413, align 4
  %414 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %411, align 8
  %415 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %415, i32 0, i32 0
  store ptr @17, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %415, i32 0, i32 1
  store i64 2, ptr %417, align 4
  %418 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %415, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %350, %"github.com/goplus/llgo/internal/runtime.String" %414, %"github.com/goplus/llgo/internal/runtime.String" %418, ptr %379, %"github.com/goplus/llgo/internal/runtime.Slice" %403, %"github.com/goplus/llgo/internal/runtime.Slice" %410)
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %419 = load ptr, ptr @"*_llgo_main.T5", align 8
  %420 = icmp eq ptr %419, null
  br i1 %420, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %421 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %350)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %421)
  store ptr %421, ptr @"*_llgo_main.T5", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %422 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %423 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %424 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %425 = icmp eq ptr %424, null
  br i1 %425, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %426 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %426, i32 0, i32 0
  store ptr @9, ptr %427, align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %426, i32 0, i32 1
  store i64 6, ptr %428, align 4
  %429 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %426, align 8
  %430 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %430, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %429, ptr %431, align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %430, i32 0, i32 1
  store ptr %422, ptr %432, align 8
  %433 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %430, align 8
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 0
  store ptr @10, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 1
  store i64 6, ptr %436, align 4
  %437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %434, align 8
  %438 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %438, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %437, ptr %439, align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %438, i32 0, i32 1
  store ptr %423, ptr %440, align 8
  %441 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %438, align 8
  %442 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %443 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %442, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %433, ptr %443, align 8
  %444 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %442, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %441, ptr %444, align 8
  %445 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, i32 0, i32 0
  store ptr %442, ptr %446, align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, i32 0, i32 1
  store i64 2, ptr %447, align 4
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, i32 0, i32 2
  store i64 2, ptr %448, align 4
  %449 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, align 8
  %450 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %450, i32 0, i32 0
  store ptr @8, ptr %451, align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %450, i32 0, i32 1
  store i64 4, ptr %452, align 4
  %453 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %450, align 8
  %454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 0
  store ptr null, ptr %455, align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 1
  store i64 0, ptr %456, align 4
  %457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %454, align 8
  %458 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %453, %"github.com/goplus/llgo/internal/runtime.String" %457, %"github.com/goplus/llgo/internal/runtime.Slice" %449)
  store ptr %458, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %459 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %460 = load ptr, ptr @_llgo_main.I, align 8
  %461 = icmp eq ptr %460, null
  br i1 %461, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %462 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 0
  store ptr @9, ptr %463, align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 1
  store i64 6, ptr %464, align 4
  %465 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %462, align 8
  %466 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %467 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %466, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %465, ptr %467, align 8
  %468 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %466, i32 0, i32 1
  store ptr %459, ptr %468, align 8
  %469 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %466, align 8
  %470 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %471 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %470, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %469, ptr %471, align 8
  %472 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %472, i32 0, i32 0
  store ptr %470, ptr %473, align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %472, i32 0, i32 1
  store i64 1, ptr %474, align 4
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %472, i32 0, i32 2
  store i64 1, ptr %475, align 4
  %476 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %472, align 8
  %477 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %477, i32 0, i32 0
  store ptr @8, ptr %478, align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %477, i32 0, i32 1
  store i64 4, ptr %479, align 4
  %480 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %477, align 8
  %481 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %481, i32 0, i32 0
  store ptr @19, ptr %482, align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %481, i32 0, i32 1
  store i64 6, ptr %483, align 4
  %484 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %481, align 8
  %485 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %480, %"github.com/goplus/llgo/internal/runtime.String" %484, %"github.com/goplus/llgo/internal/runtime.Slice" %476)
  store ptr %485, ptr @_llgo_main.I, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %486 = load ptr, ptr @_llgo_string, align 8
  %487 = icmp eq ptr %486, null
  br i1 %487, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %488 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %488, ptr @_llgo_string, align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %489 = load ptr, ptr @_llgo_any, align 8
  %490 = icmp eq ptr %489, null
  br i1 %490, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %491 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %492 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %492, i32 0, i32 0
  store ptr %491, ptr %493, align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %492, i32 0, i32 1
  store i64 0, ptr %494, align 4
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %492, i32 0, i32 2
  store i64 0, ptr %495, align 4
  %496 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %492, align 8
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 0
  store ptr @8, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 1
  store i64 4, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %497, align 8
  %501 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 0
  store ptr null, ptr %502, align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 1
  store i64 0, ptr %503, align 4
  %504 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %501, align 8
  %505 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %500, %"github.com/goplus/llgo/internal/runtime.String" %504, %"github.com/goplus/llgo/internal/runtime.Slice" %496)
  store ptr %505, ptr @_llgo_any, align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")
