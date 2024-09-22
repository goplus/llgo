; ModuleID = 'main'
source_filename = "main"

%main.T = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.T5 = type { i64 }
%main.T6 = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"invoke1", align 1
@2 = private unnamed_addr constant [7 x i8] c"invoke2", align 1
@3 = private unnamed_addr constant [7 x i8] c"invoke3", align 1
@4 = private unnamed_addr constant [7 x i8] c"invoke4", align 1
@5 = private unnamed_addr constant [7 x i8] c"invoke5", align 1
@6 = private unnamed_addr constant [7 x i8] c"invoke6", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@7 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"s", align 1
@10 = private unnamed_addr constant [4 x i8] c"main", align 1
@11 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [1 x i8] c"T", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null, align 8
@"*_llgo_main.T" = linkonce global ptr null, align 8
@_llgo_main.T1 = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [7 x i8] c"main.T1", align 1
@15 = private unnamed_addr constant [2 x i8] c"T1", align 1
@"*_llgo_main.T1" = linkonce global ptr null, align 8
@_llgo_main.T2 = linkonce global ptr null, align 8
@16 = private unnamed_addr constant [7 x i8] c"main.T2", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [2 x i8] c"T2", align 1
@"*_llgo_main.T2" = linkonce global ptr null, align 8
@_llgo_main.T3 = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [7 x i8] c"main.T3", align 1
@_llgo_int8 = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [2 x i8] c"T3", align 1
@"*_llgo_main.T3" = linkonce global ptr null, align 8
@_llgo_main.T4 = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [7 x i8] c"main.T4", align 1
@"[1]_llgo_int" = linkonce global ptr null, align 8
@21 = private unnamed_addr constant [2 x i8] c"T4", align 1
@"*_llgo_main.T4" = linkonce global ptr null, align 8
@_llgo_main.T5 = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [7 x i8] c"main.T5", align 1
@"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [1 x i8] c"n", align 1
@24 = private unnamed_addr constant [2 x i8] c"T5", align 1
@"*_llgo_main.T5" = linkonce global ptr null, align 8
@_llgo_main.T6 = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [7 x i8] c"main.T6", align 1
@"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [1 x i8] c"f", align 1
@27 = private unnamed_addr constant [4 x i8] c"data", align 1
@28 = private unnamed_addr constant [2 x i8] c"T6", align 1
@"*_llgo_main.T6" = linkonce global ptr null, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [5 x i8] c"world", align 1
@_llgo_main.I = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@31 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_any = linkonce global ptr null, align 8

define i64 @main.T.Invoke(%main.T %0) {
_llgo_0:
  %1 = alloca %main.T, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %main.T %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.T, ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 6, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
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
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store [1 x i64] %0, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = load i64, ptr %2, align 4
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @4, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 7, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
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
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %main.T5 %0, ptr %1, align 4
  %2 = getelementptr inbounds %main.T5, ptr %1, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @5, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 7, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 5
}

define i64 @"main.(*T5).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %main.T5, ptr %0, align 4
  %2 = call i64 @main.T5.Invoke(%main.T5 %1)
  ret i64 %2
}

define i64 @main.T6.Invoke(%main.T6 %0) {
_llgo_0:
  %1 = extractvalue %main.T6 %0, 1
  %2 = extractvalue %main.T6 %0, 0
  %3 = call i64 %2(ptr %1)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @6, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 7, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i64 6
}

define i64 @"main.(*T6).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %main.T6, ptr %0, align 8
  %2 = call i64 @main.T6.Invoke(%main.T6 %1)
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
  store ptr @7, ptr %5, align 8
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
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %16 = alloca %main.T6, align 8
  %17 = getelementptr inbounds %main.T6, ptr %16, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %17, align 8
  %18 = getelementptr inbounds %main.T6, ptr %16, i32 0, i32 1
  store ptr null, ptr %18, align 8
  %19 = load %main.T6, ptr %16, align 8
  store %main.T6 %19, ptr %15, align 8
  %20 = load %main.T, ptr %2, align 8
  %21 = load ptr, ptr @_llgo_main.T, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %20, ptr %22, align 8
  %23 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %23, ptr %21)
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %25, i32 0, i32 1
  store ptr %22, ptr %27, align 8
  %28 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %25, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %28)
  %29 = load ptr, ptr @"*_llgo_main.T", align 8
  %30 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %30, ptr %29)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, i32 0, i32 0
  store ptr %31, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, i32 0, i32 1
  store ptr %2, ptr %34, align 8
  %35 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %35)
  %36 = load i64, ptr %8, align 4
  %37 = load ptr, ptr @_llgo_main.T1, align 8
  %38 = inttoptr i64 %36 to ptr
  %39 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %39, ptr %37)
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %41, i32 0, i32 0
  store ptr %40, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %41, i32 0, i32 1
  store ptr %38, ptr %43, align 8
  %44 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %41, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %44)
  %45 = load ptr, ptr @"*_llgo_main.T1", align 8
  %46 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %46, ptr %45)
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %48, i32 0, i32 0
  store ptr %47, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %48, i32 0, i32 1
  store ptr %8, ptr %50, align 8
  %51 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %48, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %51)
  %52 = load double, ptr %9, align 8
  %53 = load ptr, ptr @_llgo_main.T2, align 8
  %54 = bitcast double %52 to i64
  %55 = inttoptr i64 %54 to ptr
  %56 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %56, ptr %53)
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %58, i32 0, i32 0
  store ptr %57, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %58, i32 0, i32 1
  store ptr %55, ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %58, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %61)
  %62 = load ptr, ptr @"*_llgo_main.T2", align 8
  %63 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %63, ptr %62)
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %65, i32 0, i32 0
  store ptr %64, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %65, i32 0, i32 1
  store ptr %9, ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %65, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %68)
  %69 = load ptr, ptr @"*_llgo_main.T3", align 8
  %70 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %70, ptr %69)
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %72, i32 0, i32 0
  store ptr %71, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %72, i32 0, i32 1
  store ptr %10, ptr %74, align 8
  %75 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %72, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %75)
  %76 = load [1 x i64], ptr %11, align 4
  %77 = load ptr, ptr @_llgo_main.T4, align 8
  %78 = extractvalue [1 x i64] %76, 0
  %79 = inttoptr i64 %78 to ptr
  %80 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %80, ptr %77)
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %82, i32 0, i32 0
  store ptr %81, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %82, i32 0, i32 1
  store ptr %79, ptr %84, align 8
  %85 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %82, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %85)
  %86 = load ptr, ptr @"*_llgo_main.T4", align 8
  %87 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %87, ptr %86)
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %89, i32 0, i32 0
  store ptr %88, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %89, i32 0, i32 1
  store ptr %11, ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %89, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %92)
  %93 = load %main.T5, ptr %13, align 4
  %94 = load ptr, ptr @_llgo_main.T5, align 8
  %95 = extractvalue %main.T5 %93, 0
  %96 = inttoptr i64 %95 to ptr
  %97 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %97, ptr %94)
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %99, i32 0, i32 0
  store ptr %98, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %99, i32 0, i32 1
  store ptr %96, ptr %101, align 8
  %102 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %99, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %102)
  %103 = load ptr, ptr @"*_llgo_main.T5", align 8
  %104 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %104, ptr %103)
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %106, i32 0, i32 0
  store ptr %105, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %106, i32 0, i32 1
  store ptr %13, ptr %108, align 8
  %109 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %106, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %109)
  %110 = load %main.T6, ptr %15, align 8
  %111 = load ptr, ptr @_llgo_main.T6, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T6 %110, ptr %112, align 8
  %113 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %113, ptr %111)
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, i32 0, i32 0
  store ptr %114, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, i32 0, i32 1
  store ptr %112, ptr %117, align 8
  %118 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %118)
  %119 = load ptr, ptr @"*_llgo_main.T6", align 8
  %120 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %120, ptr %119)
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %122, i32 0, i32 0
  store ptr %121, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %122, i32 0, i32 1
  store ptr %15, ptr %124, align 8
  %125 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %122, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %125)
  %126 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %127 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %127, ptr %126)
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %129, i32 0, i32 0
  store ptr %128, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %129, i32 0, i32 1
  store ptr null, ptr %131, align 8
  %132 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %129, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %132)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %133 = load ptr, ptr @"*_llgo_main.T", align 8
  %134 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %134, ptr %133)
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %136, i32 0, i32 0
  store ptr %135, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %136, i32 0, i32 1
  store ptr %2, ptr %138, align 8
  %139 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %136, align 8
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %139)
  %141 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %139, 1
  %142 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %142, ptr %140)
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %144, i32 0, i32 0
  store ptr %143, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %144, i32 0, i32 1
  store ptr %141, ptr %146, align 8
  %147 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %144, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %147)
  %148 = alloca %main.T, align 8
  call void @llvm.memset(ptr %148, i8 0, i64 16, i1 false)
  %149 = getelementptr inbounds %main.T, ptr %148, i32 0, i32 0
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 0
  store ptr @29, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 1
  store i64 5, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %150, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %153, ptr %149, align 8
  %154 = load %main.T, ptr %148, align 8
  %155 = load ptr, ptr @_llgo_main.T, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %154, ptr %156, align 8
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %157, i32 0, i32 0
  store ptr %155, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %157, i32 0, i32 1
  store ptr %156, ptr %159, align 8
  %160 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %157, align 8
  %161 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %160, 0
  %162 = load ptr, ptr @_llgo_main.I, align 8
  %163 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %162, ptr %161)
  br i1 %163, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %164 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %160, 1
  %165 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %166 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %165, ptr %161)
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %167, i32 0, i32 0
  store ptr %166, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %167, i32 0, i32 1
  store ptr %164, ptr %169, align 8
  %170 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %167, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %170)
  %171 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %160, 0
  %172 = load ptr, ptr @_llgo_any, align 8
  %173 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %172, ptr %171)
  br i1 %173, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 0
  store ptr @31, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 1
  store i64 21, ptr %176, align 4
  %177 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %174, align 8
  %178 = load ptr, ptr @_llgo_string, align 8
  %179 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %177, ptr %179, align 8
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %180, i32 0, i32 0
  store ptr %178, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %180, i32 0, i32 1
  store ptr %179, ptr %182, align 8
  %183 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %180, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %183)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %184 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %160, 1
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %185, i32 0, i32 0
  store ptr %171, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %185, i32 0, i32 1
  store ptr %184, ptr %187, align 8
  %188 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %185, align 8
  %189 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %188, 0
  %190 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %191 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %190, ptr %189)
  br i1 %191, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 0
  store ptr @31, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 1
  store i64 21, ptr %194, align 4
  %195 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %192, align 8
  %196 = load ptr, ptr @_llgo_string, align 8
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %195, ptr %197, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %198, i32 0, i32 0
  store ptr %196, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %198, i32 0, i32 1
  store ptr %197, ptr %200, align 8
  %201 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %198, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %201)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %202 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %188, 1
  %203 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %204 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %203, ptr %189)
  %205 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %205, i32 0, i32 0
  store ptr %204, ptr %206, align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %205, i32 0, i32 1
  store ptr %202, ptr %207, align 8
  %208 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %205, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %208)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 0
  store ptr @31, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 1
  store i64 21, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %209, align 8
  %213 = load ptr, ptr @_llgo_string, align 8
  %214 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %212, ptr %214, align 8
  %215 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %215, i32 0, i32 0
  store ptr %213, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %215, i32 0, i32 1
  store ptr %214, ptr %217, align 8
  %218 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %215, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %218)
  unreachable
}

define i64 @"main.main$1"() {
_llgo_0:
  ret i64 400
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define linkonce i64 @"__llgo_stub.main.main$1"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"main.main$1"()
  ret i64 %1
}

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @8, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 6, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 16, i64 1, i64 2)
  %5 = load ptr, ptr @_llgo_main.T, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %4, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @9, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 0, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %16 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %10, ptr %15, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %14, i1 false)
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @10, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 4, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %22 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %21, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %16, ptr %22, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 0
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 1
  store i64 1, ptr %25, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 2
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %20, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %27)
  store ptr %28, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %29 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @11, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 6, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = load ptr, ptr @_llgo_int, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_10, %_llgo_2
  %36 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %37 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %_llgo_11, label %_llgo_12

_llgo_5:                                          ; preds = %_llgo_3
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %39, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %40 = load ptr, ptr @_llgo_int, align 8
  %41 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 0
  store ptr %43, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 1
  store i64 0, ptr %46, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 2
  store i64 0, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, align 8
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %50 = getelementptr ptr, ptr %49, i64 0
  store ptr %40, ptr %50, align 8
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 0
  store ptr %49, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 1
  store i64 1, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 2
  store i64 1, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, align 8
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %48, %"github.com/goplus/llgo/internal/runtime.Slice" %55, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %56)
  store ptr %56, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %57 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %58 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %33, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 1
  store ptr %57, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %62, align 8
  %63 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %58, align 8
  %64 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %33, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 1
  store ptr %57, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %68, align 8
  %69 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %64, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr @12, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 6, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 0
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 1
  store i64 0, ptr %79, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 2
  store i64 0, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 0
  store ptr %82, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 1
  store i64 0, ptr %85, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 2
  store i64 0, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %81, %"github.com/goplus/llgo/internal/runtime.Slice" %87, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %88)
  store ptr %88, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %89 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %90 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %90, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %73, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %90, i32 0, i32 1
  store ptr %89, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %90, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %90, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %94, align 8
  %95 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %90, align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %97 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %96, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %69, ptr %97, align 8
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 0
  store ptr %96, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 1
  store i64 1, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 2
  store i64 1, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %104 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %103, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %63, ptr %104, align 8
  %105 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %103, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %95, ptr %105, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 0
  store ptr %103, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 1
  store i64 2, ptr %108, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 2
  store i64 2, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, align 8
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 0
  store ptr @10, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 1
  store i64 4, ptr %113, align 4
  %114 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %111, align 8
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 0
  store ptr @13, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 1
  store i64 1, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %115, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %114, %"github.com/goplus/llgo/internal/runtime.String" %118, ptr %29, %"github.com/goplus/llgo/internal/runtime.Slice" %102, %"github.com/goplus/llgo/internal/runtime.Slice" %110)
  br label %_llgo_4

_llgo_11:                                         ; preds = %_llgo_4
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 0
  store ptr @11, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 1
  store i64 6, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %119, align 8
  %123 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %123, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %122, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %123, i32 0, i32 1
  store ptr %36, ptr %125, align 8
  %126 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %123, align 8
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %128 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %126, ptr %128, align 8
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 0
  store ptr %127, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 1
  store i64 1, ptr %131, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 2
  store i64 1, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 0
  store ptr @10, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 1
  store i64 4, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %134, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 0
  store ptr null, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 1
  store i64 0, ptr %140, align 4
  %141 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %138, align 8
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %137, %"github.com/goplus/llgo/internal/runtime.String" %141, %"github.com/goplus/llgo/internal/runtime.Slice" %133)
  store ptr %142, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_4
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %143, i32 0, i32 0
  store ptr @8, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %143, i32 0, i32 1
  store i64 6, ptr %145, align 4
  %146 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %143, align 8
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %146, i64 25, i64 16, i64 1, i64 2)
  %148 = load ptr, ptr @"*_llgo_main.T", align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %150 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %147)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %150)
  store ptr %150, ptr @"*_llgo_main.T", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 0
  store ptr @14, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 1
  store i64 7, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %151, align 8
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %154, i64 2, i64 8, i64 1, i64 1)
  %156 = load ptr, ptr @_llgo_main.T1, align 8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %155, ptr @_llgo_main.T1, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %158 = load ptr, ptr @_llgo_int, align 8
  br i1 %157, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr @11, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 6, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  %163 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %164 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %164, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %162, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %164, i32 0, i32 1
  store ptr %163, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %164, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %164, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %168, align 8
  %169 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %164, align 8
  %170 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %170, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %162, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %170, i32 0, i32 1
  store ptr %163, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %170, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %170, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %174, align 8
  %175 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %170, align 8
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %177 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %176, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %175, ptr %177, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 0
  store ptr %176, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 1
  store i64 1, ptr %180, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 2
  store i64 1, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %184 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %183, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %169, ptr %184, align 8
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 0
  store ptr %183, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 1
  store i64 1, ptr %187, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 2
  store i64 1, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @10, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 4, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @15, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 2, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %155, %"github.com/goplus/llgo/internal/runtime.String" %193, %"github.com/goplus/llgo/internal/runtime.String" %197, ptr %158, %"github.com/goplus/llgo/internal/runtime.Slice" %182, %"github.com/goplus/llgo/internal/runtime.Slice" %189)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr @14, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 7, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %201, i64 2, i64 8, i64 1, i64 1)
  %203 = load ptr, ptr @"*_llgo_main.T1", align 8
  %204 = icmp eq ptr %203, null
  br i1 %204, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %205 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %202)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %205)
  store ptr %205, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %206, i32 0, i32 0
  store ptr @16, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %206, i32 0, i32 1
  store i64 7, ptr %208, align 4
  %209 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %206, align 8
  %210 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %209, i64 14, i64 8, i64 1, i64 1)
  %211 = load ptr, ptr @_llgo_main.T2, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %210, ptr @_llgo_main.T2, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %213 = load ptr, ptr @_llgo_float64, align 8
  %214 = icmp eq ptr %213, null
  br i1 %214, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %215 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 46)
  store ptr %215, ptr @_llgo_float64, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %216 = load ptr, ptr @_llgo_float64, align 8
  br i1 %212, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 0
  store ptr @11, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 1
  store i64 6, ptr %219, align 4
  %220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %217, align 8
  %221 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %222 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %222, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %220, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %222, i32 0, i32 1
  store ptr %221, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %222, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %222, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %226, align 8
  %227 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %222, align 8
  %228 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %220, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 1
  store ptr %221, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %232, align 8
  %233 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %228, align 8
  %234 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %235 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %234, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %233, ptr %235, align 8
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 0
  store ptr %234, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 1
  store i64 1, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 2
  store i64 1, ptr %239, align 4
  %240 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, align 8
  %241 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %242 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %241, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %227, ptr %242, align 8
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 0
  store ptr %241, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 1
  store i64 1, ptr %245, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 2
  store i64 1, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, align 8
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 0
  store ptr @10, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 1
  store i64 4, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %248, align 8
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 0
  store ptr @17, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 1
  store i64 2, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %252, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %210, %"github.com/goplus/llgo/internal/runtime.String" %251, %"github.com/goplus/llgo/internal/runtime.String" %255, ptr %216, %"github.com/goplus/llgo/internal/runtime.Slice" %240, %"github.com/goplus/llgo/internal/runtime.Slice" %247)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr @16, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 7, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  %260 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %259, i64 14, i64 8, i64 1, i64 1)
  %261 = load ptr, ptr @"*_llgo_main.T2", align 8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %263 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %260)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %263)
  store ptr %263, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %264 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 0
  store ptr @18, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 1
  store i64 7, ptr %266, align 4
  %267 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %264, align 8
  %268 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %267, i64 3, i64 1, i64 0, i64 1)
  %269 = load ptr, ptr @_llgo_main.T3, align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  store ptr %268, ptr @_llgo_main.T3, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %271 = load ptr, ptr @_llgo_int8, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %273, ptr @_llgo_int8, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %274 = load ptr, ptr @_llgo_int8, align 8
  br i1 %270, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %275 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %275, i32 0, i32 0
  store ptr @11, ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %275, i32 0, i32 1
  store i64 6, ptr %277, align 4
  %278 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %275, align 8
  %279 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %280 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %280, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %278, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %280, i32 0, i32 1
  store ptr %279, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %280, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %280, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %284, align 8
  %285 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %280, align 8
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %287 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %286, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %285, ptr %287, align 8
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 0
  store ptr %286, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 1
  store i64 1, ptr %290, align 4
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 2
  store i64 1, ptr %291, align 4
  %292 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, align 8
  %293 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %293, i32 0, i32 0
  store ptr @10, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %293, i32 0, i32 1
  store i64 4, ptr %295, align 4
  %296 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %293, align 8
  %297 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 0
  store ptr @19, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 1
  store i64 2, ptr %299, align 4
  %300 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %297, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %268, %"github.com/goplus/llgo/internal/runtime.String" %296, %"github.com/goplus/llgo/internal/runtime.String" %300, ptr %274, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %292)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %301 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 0
  store ptr @18, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 1
  store i64 7, ptr %303, align 4
  %304 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %301, align 8
  %305 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %304, i64 3, i64 1, i64 0, i64 1)
  %306 = load ptr, ptr @"*_llgo_main.T3", align 8
  %307 = icmp eq ptr %306, null
  br i1 %307, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %308 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %305)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %308)
  store ptr %308, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %309 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %309, i32 0, i32 0
  store ptr @20, ptr %310, align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %309, i32 0, i32 1
  store i64 7, ptr %311, align 4
  %312 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %309, align 8
  %313 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %312, i64 17, i64 8, i64 1, i64 1)
  %314 = load ptr, ptr @_llgo_main.T4, align 8
  %315 = icmp eq ptr %314, null
  br i1 %315, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %313, ptr @_llgo_main.T4, align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %316 = load ptr, ptr @_llgo_int, align 8
  %317 = load ptr, ptr @"[1]_llgo_int", align 8
  %318 = icmp eq ptr %317, null
  br i1 %318, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %319 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %320 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %319)
  store ptr %320, ptr @"[1]_llgo_int", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %321 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %315, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %322 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %322, i32 0, i32 0
  store ptr @11, ptr %323, align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %322, i32 0, i32 1
  store i64 6, ptr %324, align 4
  %325 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %322, align 8
  %326 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %327 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %327, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %325, ptr %328, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %327, i32 0, i32 1
  store ptr %326, ptr %329, align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %327, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %327, i32 0, i32 3
  store ptr @"main.(*T4).Invoke", ptr %331, align 8
  %332 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %327, align 8
  %333 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %333, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %325, ptr %334, align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %333, i32 0, i32 1
  store ptr %326, ptr %335, align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %333, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %336, align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %333, i32 0, i32 3
  store ptr @main.T4.Invoke, ptr %337, align 8
  %338 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %333, align 8
  %339 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %340 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %339, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %338, ptr %340, align 8
  %341 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, i32 0, i32 0
  store ptr %339, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, i32 0, i32 1
  store i64 1, ptr %343, align 4
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, i32 0, i32 2
  store i64 1, ptr %344, align 4
  %345 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, align 8
  %346 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %347 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %346, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %332, ptr %347, align 8
  %348 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, i32 0, i32 0
  store ptr %346, ptr %349, align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, i32 0, i32 1
  store i64 1, ptr %350, align 4
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, i32 0, i32 2
  store i64 1, ptr %351, align 4
  %352 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, align 8
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 0
  store ptr @10, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 1
  store i64 4, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %353, align 8
  %357 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 0
  store ptr @21, ptr %358, align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 1
  store i64 2, ptr %359, align 4
  %360 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %357, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %313, %"github.com/goplus/llgo/internal/runtime.String" %356, %"github.com/goplus/llgo/internal/runtime.String" %360, ptr %321, %"github.com/goplus/llgo/internal/runtime.Slice" %345, %"github.com/goplus/llgo/internal/runtime.Slice" %352)
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %361 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %361, i32 0, i32 0
  store ptr @20, ptr %362, align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %361, i32 0, i32 1
  store i64 7, ptr %363, align 4
  %364 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %361, align 8
  %365 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %364, i64 17, i64 8, i64 1, i64 1)
  %366 = load ptr, ptr @"*_llgo_main.T4", align 8
  %367 = icmp eq ptr %366, null
  br i1 %367, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %368 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %365)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %368)
  store ptr %368, ptr @"*_llgo_main.T4", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 0
  store ptr @22, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 1
  store i64 7, ptr %371, align 4
  %372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %369, align 8
  %373 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %372, i64 25, i64 8, i64 1, i64 1)
  %374 = load ptr, ptr @_llgo_main.T5, align 8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  store ptr %373, ptr @_llgo_main.T5, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 0
  store ptr @23, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 1
  store i64 1, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %376, align 8
  %380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 0
  store ptr null, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 1
  store i64 0, ptr %382, align 4
  %383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %380, align 8
  %384 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %385 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %379, ptr %384, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %383, i1 false)
  %386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 0
  store ptr @10, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 1
  store i64 4, ptr %388, align 4
  %389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %386, align 8
  %390 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %391 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %390, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %385, ptr %391, align 8
  %392 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %392, i32 0, i32 0
  store ptr %390, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %392, i32 0, i32 1
  store i64 1, ptr %394, align 4
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %392, i32 0, i32 2
  store i64 1, ptr %395, align 4
  %396 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %392, align 8
  %397 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %389, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %396)
  store ptr %397, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %398 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %375, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %399 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %399, i32 0, i32 0
  store ptr @11, ptr %400, align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %399, i32 0, i32 1
  store i64 6, ptr %401, align 4
  %402 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %399, align 8
  %403 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %404 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %402, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 1
  store ptr %403, ptr %406, align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 3
  store ptr @"main.(*T5).Invoke", ptr %408, align 8
  %409 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %404, align 8
  %410 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %410, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %402, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %410, i32 0, i32 1
  store ptr %403, ptr %412, align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %410, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %413, align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %410, i32 0, i32 3
  store ptr @main.T5.Invoke, ptr %414, align 8
  %415 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %410, align 8
  %416 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %417 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %416, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %415, ptr %417, align 8
  %418 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, i32 0, i32 0
  store ptr %416, ptr %419, align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, i32 0, i32 1
  store i64 1, ptr %420, align 4
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, i32 0, i32 2
  store i64 1, ptr %421, align 4
  %422 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, align 8
  %423 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %424 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %423, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %409, ptr %424, align 8
  %425 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %425, i32 0, i32 0
  store ptr %423, ptr %426, align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %425, i32 0, i32 1
  store i64 1, ptr %427, align 4
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %425, i32 0, i32 2
  store i64 1, ptr %428, align 4
  %429 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %425, align 8
  %430 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %430, i32 0, i32 0
  store ptr @10, ptr %431, align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %430, i32 0, i32 1
  store i64 4, ptr %432, align 4
  %433 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %430, align 8
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 0
  store ptr @24, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 1
  store i64 2, ptr %436, align 4
  %437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %434, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %373, %"github.com/goplus/llgo/internal/runtime.String" %433, %"github.com/goplus/llgo/internal/runtime.String" %437, ptr %398, %"github.com/goplus/llgo/internal/runtime.Slice" %422, %"github.com/goplus/llgo/internal/runtime.Slice" %429)
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %438 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 0
  store ptr @22, ptr %439, align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 1
  store i64 7, ptr %440, align 4
  %441 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %438, align 8
  %442 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %441, i64 25, i64 8, i64 1, i64 1)
  %443 = load ptr, ptr @"*_llgo_main.T5", align 8
  %444 = icmp eq ptr %443, null
  br i1 %444, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %445 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %442)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %445)
  store ptr %445, ptr @"*_llgo_main.T5", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %446 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %446, i32 0, i32 0
  store ptr @25, ptr %447, align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %446, i32 0, i32 1
  store i64 7, ptr %448, align 4
  %449 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %446, align 8
  %450 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %449, i64 25, i64 24, i64 1, i64 1)
  %451 = load ptr, ptr @_llgo_main.T6, align 8
  %452 = icmp eq ptr %451, null
  br i1 %452, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  store ptr %450, ptr @_llgo_main.T6, align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %453 = load ptr, ptr @_llgo_Pointer, align 8
  %454 = icmp eq ptr %453, null
  br i1 %454, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %455 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %455)
  store ptr %455, ptr @_llgo_Pointer, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %456 = load ptr, ptr @_llgo_Pointer, align 8
  %457 = load ptr, ptr @_llgo_int, align 8
  %458 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 0
  store ptr @26, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 1
  store i64 1, ptr %460, align 4
  %461 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %458, align 8
  %462 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 0
  store ptr null, ptr %463, align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 1
  store i64 0, ptr %464, align 4
  %465 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %462, align 8
  %466 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %467 = getelementptr ptr, ptr %466, i64 0
  store ptr %456, ptr %467, align 8
  %468 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 0
  store ptr %466, ptr %469, align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 1
  store i64 1, ptr %470, align 4
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 2
  store i64 1, ptr %471, align 4
  %472 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, align 8
  %473 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %474 = getelementptr ptr, ptr %473, i64 0
  store ptr %457, ptr %474, align 8
  %475 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, i32 0, i32 0
  store ptr %473, ptr %476, align 8
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, i32 0, i32 1
  store i64 1, ptr %477, align 4
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, i32 0, i32 2
  store i64 1, ptr %478, align 4
  %479 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, align 8
  %480 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %472, %"github.com/goplus/llgo/internal/runtime.Slice" %479, i1 false)
  %481 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %461, ptr %480, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %465, i1 false)
  %482 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 0
  store ptr @27, ptr %483, align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 1
  store i64 4, ptr %484, align 4
  %485 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %482, align 8
  %486 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 0
  store ptr null, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 1
  store i64 0, ptr %488, align 4
  %489 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %486, align 8
  %490 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %491 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %485, ptr %490, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %489, i1 false)
  %492 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %492, i32 0, i32 0
  store ptr @10, ptr %493, align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %492, i32 0, i32 1
  store i64 4, ptr %494, align 4
  %495 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %492, align 8
  %496 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %497 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %496, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %481, ptr %497, align 8
  %498 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %496, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %491, ptr %498, align 8
  %499 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %500 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %499, i32 0, i32 0
  store ptr %496, ptr %500, align 8
  %501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %499, i32 0, i32 1
  store i64 2, ptr %501, align 4
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %499, i32 0, i32 2
  store i64 2, ptr %502, align 4
  %503 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %499, align 8
  %504 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %495, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %503)
  store ptr %504, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  %505 = load ptr, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  br i1 %452, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %506 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %506, i32 0, i32 0
  store ptr @11, ptr %507, align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %506, i32 0, i32 1
  store i64 6, ptr %508, align 4
  %509 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %506, align 8
  %510 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %511 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %509, ptr %512, align 8
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 1
  store ptr %510, ptr %513, align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 3
  store ptr @"main.(*T6).Invoke", ptr %515, align 8
  %516 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %511, align 8
  %517 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %517, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %509, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %517, i32 0, i32 1
  store ptr %510, ptr %519, align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %517, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %520, align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %517, i32 0, i32 3
  store ptr @main.T6.Invoke, ptr %521, align 8
  %522 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %517, align 8
  %523 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %524 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %523, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %522, ptr %524, align 8
  %525 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, i32 0, i32 0
  store ptr %523, ptr %526, align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, i32 0, i32 1
  store i64 1, ptr %527, align 4
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, i32 0, i32 2
  store i64 1, ptr %528, align 4
  %529 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, align 8
  %530 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %531 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %530, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %516, ptr %531, align 8
  %532 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %532, i32 0, i32 0
  store ptr %530, ptr %533, align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %532, i32 0, i32 1
  store i64 1, ptr %534, align 4
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %532, i32 0, i32 2
  store i64 1, ptr %535, align 4
  %536 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %532, align 8
  %537 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %537, i32 0, i32 0
  store ptr @10, ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %537, i32 0, i32 1
  store i64 4, ptr %539, align 4
  %540 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %537, align 8
  %541 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 0
  store ptr @28, ptr %542, align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 1
  store i64 2, ptr %543, align 4
  %544 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %541, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %450, %"github.com/goplus/llgo/internal/runtime.String" %540, %"github.com/goplus/llgo/internal/runtime.String" %544, ptr %505, %"github.com/goplus/llgo/internal/runtime.Slice" %529, %"github.com/goplus/llgo/internal/runtime.Slice" %536)
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %545 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 0
  store ptr @25, ptr %546, align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 1
  store i64 7, ptr %547, align 4
  %548 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %545, align 8
  %549 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %548, i64 25, i64 24, i64 1, i64 1)
  %550 = load ptr, ptr @"*_llgo_main.T6", align 8
  %551 = icmp eq ptr %550, null
  br i1 %551, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %552 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %549)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %552)
  store ptr %552, ptr @"*_llgo_main.T6", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %553 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %554 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %555 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %556 = icmp eq ptr %555, null
  br i1 %556, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %557 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %557, i32 0, i32 0
  store ptr @11, ptr %558, align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %557, i32 0, i32 1
  store i64 6, ptr %559, align 4
  %560 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %557, align 8
  %561 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %561, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %560, ptr %562, align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %561, i32 0, i32 1
  store ptr %553, ptr %563, align 8
  %564 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %561, align 8
  %565 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 0
  store ptr @12, ptr %566, align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 1
  store i64 6, ptr %567, align 4
  %568 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %565, align 8
  %569 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %569, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %568, ptr %570, align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %569, i32 0, i32 1
  store ptr %554, ptr %571, align 8
  %572 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %569, align 8
  %573 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %574 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %573, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %564, ptr %574, align 8
  %575 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %573, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %572, ptr %575, align 8
  %576 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %576, i32 0, i32 0
  store ptr %573, ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %576, i32 0, i32 1
  store i64 2, ptr %578, align 4
  %579 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %576, i32 0, i32 2
  store i64 2, ptr %579, align 4
  %580 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %576, align 8
  %581 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %581, i32 0, i32 0
  store ptr @10, ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %581, i32 0, i32 1
  store i64 4, ptr %583, align 4
  %584 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %581, align 8
  %585 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 0
  store ptr null, ptr %586, align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 1
  store i64 0, ptr %587, align 4
  %588 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %585, align 8
  %589 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %584, %"github.com/goplus/llgo/internal/runtime.String" %588, %"github.com/goplus/llgo/internal/runtime.Slice" %580)
  store ptr %589, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %590 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %591 = load ptr, ptr @_llgo_main.I, align 8
  %592 = icmp eq ptr %591, null
  br i1 %592, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %593 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 0
  store ptr @11, ptr %594, align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 1
  store i64 6, ptr %595, align 4
  %596 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %593, align 8
  %597 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %598 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %597, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %596, ptr %598, align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %597, i32 0, i32 1
  store ptr %590, ptr %599, align 8
  %600 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %597, align 8
  %601 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %602 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %601, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %600, ptr %602, align 8
  %603 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %603, i32 0, i32 0
  store ptr %601, ptr %604, align 8
  %605 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %603, i32 0, i32 1
  store i64 1, ptr %605, align 4
  %606 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %603, i32 0, i32 2
  store i64 1, ptr %606, align 4
  %607 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %603, align 8
  %608 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %608, i32 0, i32 0
  store ptr @10, ptr %609, align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %608, i32 0, i32 1
  store i64 4, ptr %610, align 4
  %611 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %608, align 8
  %612 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %612, i32 0, i32 0
  store ptr @30, ptr %613, align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %612, i32 0, i32 1
  store i64 6, ptr %614, align 4
  %615 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %612, align 8
  %616 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %611, %"github.com/goplus/llgo/internal/runtime.String" %615, %"github.com/goplus/llgo/internal/runtime.Slice" %607)
  store ptr %616, ptr @_llgo_main.I, align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %617 = load ptr, ptr @_llgo_string, align 8
  %618 = icmp eq ptr %617, null
  br i1 %618, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %619 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %619, ptr @_llgo_string, align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %620 = load ptr, ptr @_llgo_any, align 8
  %621 = icmp eq ptr %620, null
  br i1 %621, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %622 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %623 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %623, i32 0, i32 0
  store ptr %622, ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %623, i32 0, i32 1
  store i64 0, ptr %625, align 4
  %626 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %623, i32 0, i32 2
  store i64 0, ptr %626, align 4
  %627 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %623, align 8
  %628 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 0
  store ptr @10, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 1
  store i64 4, ptr %630, align 4
  %631 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %628, align 8
  %632 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %632, i32 0, i32 0
  store ptr null, ptr %633, align 8
  %634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %632, i32 0, i32 1
  store i64 0, ptr %634, align 4
  %635 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %632, align 8
  %636 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %631, %"github.com/goplus/llgo/internal/runtime.String" %635, %"github.com/goplus/llgo/internal/runtime.Slice" %627)
  store ptr %636, ptr @_llgo_any, align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
