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
@_llgo_string = linkonce global ptr null, align 8
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
@"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [1 x i8] c"f", align 1
@27 = private unnamed_addr constant [4 x i8] c"data", align 1
@28 = private unnamed_addr constant [2 x i8] c"T6", align 1
@"*_llgo_main.T6" = linkonce global ptr null, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [5 x i8] c"world", align 1
@_llgo_main.I = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@31 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
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
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %9, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @9, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 1, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 0, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %20 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %14, ptr %19, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %18, i1 false)
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @10, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 4, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %26 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %25, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %20, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 0
  store ptr %25, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 1
  store i64 1, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 2
  store i64 1, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %24, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %31)
  store ptr %32, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %33 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br i1 %6, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @11, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 6, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = load ptr, ptr @_llgo_int, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_4
  %40 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %41 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_13, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_5
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %43, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %44 = load ptr, ptr @_llgo_int, align 8
  %45 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %47, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 0, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 0, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %54 = getelementptr ptr, ptr %53, i64 0
  store ptr %44, ptr %54, align 8
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %55, i32 0, i32 0
  store ptr %53, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %55, i32 0, i32 1
  store i64 1, ptr %57, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %55, i32 0, i32 2
  store i64 1, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %55, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %52, %"github.com/goplus/llgo/internal/runtime.Slice" %59, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %60)
  store ptr %60, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %61 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %62 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %62, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %37, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %62, i32 0, i32 1
  store ptr %61, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %62, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %62, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %66, align 8
  %67 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %62, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %68, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %37, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %68, i32 0, i32 1
  store ptr %61, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %68, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %68, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %72, align 8
  %73 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %68, align 8
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @12, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 6, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  %78 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 0
  store ptr %80, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 1
  store i64 0, ptr %83, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 2
  store i64 0, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %87 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %87, i32 0, i32 0
  store ptr %86, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %87, i32 0, i32 1
  store i64 0, ptr %89, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %87, i32 0, i32 2
  store i64 0, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %87, align 8
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %85, %"github.com/goplus/llgo/internal/runtime.Slice" %91, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %92)
  store ptr %92, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %93 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %94 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %77, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 1
  store ptr %93, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %94, align 8
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %101 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %100, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %73, ptr %101, align 8
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 0
  store ptr %100, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 1
  store i64 1, ptr %104, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 2
  store i64 1, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %108 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %107, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %67, ptr %108, align 8
  %109 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %107, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %99, ptr %109, align 8
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, i32 0, i32 0
  store ptr %107, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, i32 0, i32 1
  store i64 2, ptr %112, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, i32 0, i32 2
  store i64 2, ptr %113, align 4
  %114 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, align 8
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 0
  store ptr @10, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 1
  store i64 4, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %115, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 0
  store ptr @13, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 1
  store i64 1, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %119, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %118, %"github.com/goplus/llgo/internal/runtime.String" %122, ptr %33, %"github.com/goplus/llgo/internal/runtime.Slice" %106, %"github.com/goplus/llgo/internal/runtime.Slice" %114)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 0
  store ptr @11, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 1
  store i64 6, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %123, align 8
  %127 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %126, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, i32 0, i32 1
  store ptr %40, ptr %129, align 8
  %130 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, align 8
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %132 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %131, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %130, ptr %132, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 0
  store ptr %131, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 1
  store i64 1, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 2
  store i64 1, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 0
  store ptr @10, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 1
  store i64 4, ptr %140, align 4
  %141 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %138, align 8
  %142 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 0
  store ptr null, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 1
  store i64 0, ptr %144, align 4
  %145 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %142, align 8
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %141, %"github.com/goplus/llgo/internal/runtime.String" %145, %"github.com/goplus/llgo/internal/runtime.Slice" %137)
  store ptr %146, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 0
  store ptr @8, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 1
  store i64 6, ptr %149, align 4
  %150 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %147, align 8
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %150, i64 25, i64 16, i64 1, i64 2)
  %152 = load ptr, ptr @"*_llgo_main.T", align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %151)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %154)
  store ptr %154, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @14, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 7, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %158, i64 2, i64 8, i64 1, i64 1)
  %160 = load ptr, ptr @_llgo_main.T1, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %159, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %162 = load ptr, ptr @_llgo_int, align 8
  br i1 %161, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 0
  store ptr @11, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 1
  store i64 6, ptr %165, align 4
  %166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %163, align 8
  %167 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %168 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %168, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %166, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %168, i32 0, i32 1
  store ptr %167, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %168, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %168, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %172, align 8
  %173 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %168, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %174, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %166, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %174, i32 0, i32 1
  store ptr %167, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %174, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %174, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %178, align 8
  %179 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %174, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %181 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %180, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %179, ptr %181, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 0
  store ptr %180, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 1
  store i64 1, ptr %184, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 2
  store i64 1, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, align 8
  %187 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %188 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %187, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %173, ptr %188, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 0
  store ptr %187, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 1
  store i64 1, ptr %191, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 2
  store i64 1, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @10, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 4, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr @15, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 2, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %159, %"github.com/goplus/llgo/internal/runtime.String" %197, %"github.com/goplus/llgo/internal/runtime.String" %201, ptr %162, %"github.com/goplus/llgo/internal/runtime.Slice" %186, %"github.com/goplus/llgo/internal/runtime.Slice" %193)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 0
  store ptr @14, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 1
  store i64 7, ptr %204, align 4
  %205 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %202, align 8
  %206 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %205, i64 2, i64 8, i64 1, i64 1)
  %207 = load ptr, ptr @"*_llgo_main.T1", align 8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %209 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %206)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %209)
  store ptr %209, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %210 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 0
  store ptr @16, ptr %211, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 1
  store i64 7, ptr %212, align 4
  %213 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %210, align 8
  %214 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %213, i64 14, i64 8, i64 1, i64 1)
  %215 = load ptr, ptr @_llgo_main.T2, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  store ptr %214, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %217 = load ptr, ptr @_llgo_float64, align 8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 46)
  store ptr %219, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %220 = load ptr, ptr @_llgo_float64, align 8
  br i1 %216, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @11, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 6, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %226 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %226, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %224, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %226, i32 0, i32 1
  store ptr %225, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %226, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %226, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %230, align 8
  %231 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %226, align 8
  %232 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %224, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 1
  store ptr %225, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %236, align 8
  %237 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %232, align 8
  %238 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %239 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %238, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %237, ptr %239, align 8
  %240 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %240, i32 0, i32 0
  store ptr %238, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %240, i32 0, i32 1
  store i64 1, ptr %242, align 4
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %240, i32 0, i32 2
  store i64 1, ptr %243, align 4
  %244 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %240, align 8
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %246 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %245, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %231, ptr %246, align 8
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, i32 0, i32 0
  store ptr %245, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, i32 0, i32 1
  store i64 1, ptr %249, align 4
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, i32 0, i32 2
  store i64 1, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, align 8
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 0
  store ptr @10, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 1
  store i64 4, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %252, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr @17, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 2, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %214, %"github.com/goplus/llgo/internal/runtime.String" %255, %"github.com/goplus/llgo/internal/runtime.String" %259, ptr %220, %"github.com/goplus/llgo/internal/runtime.Slice" %244, %"github.com/goplus/llgo/internal/runtime.Slice" %251)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr @16, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 7, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  %264 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %263, i64 14, i64 8, i64 1, i64 1)
  %265 = load ptr, ptr @"*_llgo_main.T2", align 8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %267 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %264)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %267)
  store ptr %267, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 0
  store ptr @18, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 1
  store i64 7, ptr %270, align 4
  %271 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %268, align 8
  %272 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %271, i64 3, i64 1, i64 0, i64 1)
  %273 = load ptr, ptr @_llgo_main.T3, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %272, ptr @_llgo_main.T3, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %275 = load ptr, ptr @_llgo_int8, align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %277 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %277, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %278 = load ptr, ptr @_llgo_int8, align 8
  br i1 %274, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %279 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %279, i32 0, i32 0
  store ptr @11, ptr %280, align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %279, i32 0, i32 1
  store i64 6, ptr %281, align 4
  %282 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %279, align 8
  %283 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %284 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %282, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 1
  store ptr %283, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %288, align 8
  %289 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %284, align 8
  %290 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %291 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %289, ptr %291, align 8
  %292 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 0
  store ptr %290, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 1
  store i64 1, ptr %294, align 4
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 2
  store i64 1, ptr %295, align 4
  %296 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, align 8
  %297 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 0
  store ptr @10, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 1
  store i64 4, ptr %299, align 4
  %300 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %297, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 0
  store ptr @19, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 1
  store i64 2, ptr %303, align 4
  %304 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %301, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %272, %"github.com/goplus/llgo/internal/runtime.String" %300, %"github.com/goplus/llgo/internal/runtime.String" %304, ptr %278, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %296)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %305 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %305, i32 0, i32 0
  store ptr @18, ptr %306, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %305, i32 0, i32 1
  store i64 7, ptr %307, align 4
  %308 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %305, align 8
  %309 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %308, i64 3, i64 1, i64 0, i64 1)
  %310 = load ptr, ptr @"*_llgo_main.T3", align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %312 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %309)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %312)
  store ptr %312, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %313 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 0
  store ptr @20, ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 1
  store i64 7, ptr %315, align 4
  %316 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %313, align 8
  %317 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %316, i64 17, i64 8, i64 1, i64 1)
  %318 = load ptr, ptr @_llgo_main.T4, align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %317, ptr @_llgo_main.T4, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %320 = load ptr, ptr @_llgo_int, align 8
  %321 = load ptr, ptr @"[1]_llgo_int", align 8
  %322 = icmp eq ptr %321, null
  br i1 %322, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %323 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %324 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %323)
  store ptr %324, ptr @"[1]_llgo_int", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %325 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %319, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %326 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 0
  store ptr @11, ptr %327, align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 1
  store i64 6, ptr %328, align 4
  %329 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %326, align 8
  %330 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %331 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %331, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %329, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %331, i32 0, i32 1
  store ptr %330, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %331, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %334, align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %331, i32 0, i32 3
  store ptr @"main.(*T4).Invoke", ptr %335, align 8
  %336 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %331, align 8
  %337 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %329, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 1
  store ptr %330, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %340, align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 3
  store ptr @main.T4.Invoke, ptr %341, align 8
  %342 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %337, align 8
  %343 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %344 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %342, ptr %344, align 8
  %345 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, i32 0, i32 0
  store ptr %343, ptr %346, align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, i32 0, i32 1
  store i64 1, ptr %347, align 4
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, i32 0, i32 2
  store i64 1, ptr %348, align 4
  %349 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, align 8
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %351 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %350, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %336, ptr %351, align 8
  %352 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, i32 0, i32 0
  store ptr %350, ptr %353, align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, i32 0, i32 1
  store i64 1, ptr %354, align 4
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, i32 0, i32 2
  store i64 1, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, align 8
  %357 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 0
  store ptr @10, ptr %358, align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 1
  store i64 4, ptr %359, align 4
  %360 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %357, align 8
  %361 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %361, i32 0, i32 0
  store ptr @21, ptr %362, align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %361, i32 0, i32 1
  store i64 2, ptr %363, align 4
  %364 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %361, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %317, %"github.com/goplus/llgo/internal/runtime.String" %360, %"github.com/goplus/llgo/internal/runtime.String" %364, ptr %325, %"github.com/goplus/llgo/internal/runtime.Slice" %349, %"github.com/goplus/llgo/internal/runtime.Slice" %356)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 0
  store ptr @20, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 1
  store i64 7, ptr %367, align 4
  %368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %365, align 8
  %369 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %368, i64 17, i64 8, i64 1, i64 1)
  %370 = load ptr, ptr @"*_llgo_main.T4", align 8
  %371 = icmp eq ptr %370, null
  br i1 %371, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %372 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %369)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %372)
  store ptr %372, ptr @"*_llgo_main.T4", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %373 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %373, i32 0, i32 0
  store ptr @22, ptr %374, align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %373, i32 0, i32 1
  store i64 7, ptr %375, align 4
  %376 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %373, align 8
  %377 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %376, i64 25, i64 8, i64 1, i64 1)
  %378 = load ptr, ptr @_llgo_main.T5, align 8
  %379 = icmp eq ptr %378, null
  br i1 %379, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  store ptr %377, ptr @_llgo_main.T5, align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %380 = load ptr, ptr @_llgo_int, align 8
  %381 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 0
  store ptr @23, ptr %382, align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 1
  store i64 1, ptr %383, align 4
  %384 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %381, align 8
  %385 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %385, i32 0, i32 0
  store ptr null, ptr %386, align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %385, i32 0, i32 1
  store i64 0, ptr %387, align 4
  %388 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %385, align 8
  %389 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %390 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %384, ptr %389, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %388, i1 false)
  %391 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %391, i32 0, i32 0
  store ptr @10, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %391, i32 0, i32 1
  store i64 4, ptr %393, align 4
  %394 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %391, align 8
  %395 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %396 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %395, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %390, ptr %396, align 8
  %397 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, i32 0, i32 0
  store ptr %395, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, i32 0, i32 1
  store i64 1, ptr %399, align 4
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, i32 0, i32 2
  store i64 1, ptr %400, align 4
  %401 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, align 8
  %402 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %394, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %401)
  store ptr %402, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %403 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %379, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 0
  store ptr @11, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 1
  store i64 6, ptr %406, align 4
  %407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %404, align 8
  %408 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %409 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %407, ptr %410, align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 1
  store ptr %408, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %412, align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 3
  store ptr @"main.(*T5).Invoke", ptr %413, align 8
  %414 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %409, align 8
  %415 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %407, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 1
  store ptr %408, ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 3
  store ptr @main.T5.Invoke, ptr %419, align 8
  %420 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %415, align 8
  %421 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %422 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %421, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %420, ptr %422, align 8
  %423 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, i32 0, i32 0
  store ptr %421, ptr %424, align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, i32 0, i32 1
  store i64 1, ptr %425, align 4
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, i32 0, i32 2
  store i64 1, ptr %426, align 4
  %427 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, align 8
  %428 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %428, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %414, ptr %429, align 8
  %430 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, i32 0, i32 0
  store ptr %428, ptr %431, align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, i32 0, i32 1
  store i64 1, ptr %432, align 4
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, i32 0, i32 2
  store i64 1, ptr %433, align 4
  %434 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, align 8
  %435 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %435, i32 0, i32 0
  store ptr @10, ptr %436, align 8
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %435, i32 0, i32 1
  store i64 4, ptr %437, align 4
  %438 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %435, align 8
  %439 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %439, i32 0, i32 0
  store ptr @24, ptr %440, align 8
  %441 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %439, i32 0, i32 1
  store i64 2, ptr %441, align 4
  %442 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %439, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %377, %"github.com/goplus/llgo/internal/runtime.String" %438, %"github.com/goplus/llgo/internal/runtime.String" %442, ptr %403, %"github.com/goplus/llgo/internal/runtime.Slice" %427, %"github.com/goplus/llgo/internal/runtime.Slice" %434)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %443 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %443, i32 0, i32 0
  store ptr @22, ptr %444, align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %443, i32 0, i32 1
  store i64 7, ptr %445, align 4
  %446 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %443, align 8
  %447 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %446, i64 25, i64 8, i64 1, i64 1)
  %448 = load ptr, ptr @"*_llgo_main.T5", align 8
  %449 = icmp eq ptr %448, null
  br i1 %449, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %450 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %447)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %450)
  store ptr %450, ptr @"*_llgo_main.T5", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %451 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %451, i32 0, i32 0
  store ptr @25, ptr %452, align 8
  %453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %451, i32 0, i32 1
  store i64 7, ptr %453, align 4
  %454 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %451, align 8
  %455 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %454, i64 25, i64 24, i64 1, i64 1)
  %456 = load ptr, ptr @_llgo_main.T6, align 8
  %457 = icmp eq ptr %456, null
  br i1 %457, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %455, ptr @_llgo_main.T6, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %458 = load ptr, ptr @_llgo_Pointer, align 8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %460 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %460)
  store ptr %460, ptr @_llgo_Pointer, align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %461 = load ptr, ptr @_llgo_Pointer, align 8
  %462 = load ptr, ptr @_llgo_int, align 8
  %463 = load ptr, ptr @"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw", align 8
  %464 = icmp eq ptr %463, null
  br i1 %464, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %465 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %466 = getelementptr ptr, ptr %465, i64 0
  store ptr %461, ptr %466, align 8
  %467 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %468 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, i32 0, i32 0
  store ptr %465, ptr %468, align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, i32 0, i32 1
  store i64 1, ptr %469, align 4
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, i32 0, i32 2
  store i64 1, ptr %470, align 4
  %471 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, align 8
  %472 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %473 = getelementptr ptr, ptr %472, i64 0
  store ptr %462, ptr %473, align 8
  %474 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, i32 0, i32 0
  store ptr %472, ptr %475, align 8
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, i32 0, i32 1
  store i64 1, ptr %476, align 4
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, i32 0, i32 2
  store i64 1, ptr %477, align 4
  %478 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, align 8
  %479 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %471, %"github.com/goplus/llgo/internal/runtime.Slice" %478, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %479)
  store ptr %479, ptr @"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %480 = load ptr, ptr @"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw", align 8
  %481 = load ptr, ptr @_llgo_Pointer, align 8
  %482 = load ptr, ptr @_llgo_Pointer, align 8
  %483 = load ptr, ptr @_llgo_int, align 8
  %484 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %484, i32 0, i32 0
  store ptr @26, ptr %485, align 8
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %484, i32 0, i32 1
  store i64 1, ptr %486, align 4
  %487 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %484, align 8
  %488 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %488, i32 0, i32 0
  store ptr null, ptr %489, align 8
  %490 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %488, i32 0, i32 1
  store i64 0, ptr %490, align 4
  %491 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %488, align 8
  %492 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %493 = getelementptr ptr, ptr %492, i64 0
  store ptr %482, ptr %493, align 8
  %494 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %494, i32 0, i32 0
  store ptr %492, ptr %495, align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %494, i32 0, i32 1
  store i64 1, ptr %496, align 4
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %494, i32 0, i32 2
  store i64 1, ptr %497, align 4
  %498 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %494, align 8
  %499 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %500 = getelementptr ptr, ptr %499, i64 0
  store ptr %483, ptr %500, align 8
  %501 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %501, i32 0, i32 0
  store ptr %499, ptr %502, align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %501, i32 0, i32 1
  store i64 1, ptr %503, align 4
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %501, i32 0, i32 2
  store i64 1, ptr %504, align 4
  %505 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %501, align 8
  %506 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %498, %"github.com/goplus/llgo/internal/runtime.Slice" %505, i1 false)
  %507 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %487, ptr %506, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %491, i1 false)
  %508 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %508, i32 0, i32 0
  store ptr @27, ptr %509, align 8
  %510 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %508, i32 0, i32 1
  store i64 4, ptr %510, align 4
  %511 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %508, align 8
  %512 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %512, i32 0, i32 0
  store ptr null, ptr %513, align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %512, i32 0, i32 1
  store i64 0, ptr %514, align 4
  %515 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %512, align 8
  %516 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %517 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %511, ptr %516, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %515, i1 false)
  %518 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 0
  store ptr @10, ptr %519, align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 1
  store i64 4, ptr %520, align 4
  %521 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %518, align 8
  %522 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %523 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %522, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %507, ptr %523, align 8
  %524 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %522, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %517, ptr %524, align 8
  %525 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, i32 0, i32 0
  store ptr %522, ptr %526, align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, i32 0, i32 1
  store i64 2, ptr %527, align 4
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, i32 0, i32 2
  store i64 2, ptr %528, align 4
  %529 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %525, align 8
  %530 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %521, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %529)
  store ptr %530, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  %531 = load ptr, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  br i1 %457, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %532 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 0
  store ptr @11, ptr %533, align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 1
  store i64 6, ptr %534, align 4
  %535 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %532, align 8
  %536 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %537 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %537, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %535, ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %537, i32 0, i32 1
  store ptr %536, ptr %539, align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %537, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %540, align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %537, i32 0, i32 3
  store ptr @"main.(*T6).Invoke", ptr %541, align 8
  %542 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %537, align 8
  %543 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %543, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %535, ptr %544, align 8
  %545 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %543, i32 0, i32 1
  store ptr %536, ptr %545, align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %543, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %546, align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %543, i32 0, i32 3
  store ptr @main.T6.Invoke, ptr %547, align 8
  %548 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %543, align 8
  %549 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %550 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %549, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %548, ptr %550, align 8
  %551 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %551, i32 0, i32 0
  store ptr %549, ptr %552, align 8
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %551, i32 0, i32 1
  store i64 1, ptr %553, align 4
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %551, i32 0, i32 2
  store i64 1, ptr %554, align 4
  %555 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %551, align 8
  %556 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %557 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %556, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %542, ptr %557, align 8
  %558 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %558, i32 0, i32 0
  store ptr %556, ptr %559, align 8
  %560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %558, i32 0, i32 1
  store i64 1, ptr %560, align 4
  %561 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %558, i32 0, i32 2
  store i64 1, ptr %561, align 4
  %562 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %558, align 8
  %563 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %563, i32 0, i32 0
  store ptr @10, ptr %564, align 8
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %563, i32 0, i32 1
  store i64 4, ptr %565, align 4
  %566 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %563, align 8
  %567 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %568 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %567, i32 0, i32 0
  store ptr @28, ptr %568, align 8
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %567, i32 0, i32 1
  store i64 2, ptr %569, align 4
  %570 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %567, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %455, %"github.com/goplus/llgo/internal/runtime.String" %566, %"github.com/goplus/llgo/internal/runtime.String" %570, ptr %531, %"github.com/goplus/llgo/internal/runtime.Slice" %555, %"github.com/goplus/llgo/internal/runtime.Slice" %562)
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %571 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %571, i32 0, i32 0
  store ptr @25, ptr %572, align 8
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %571, i32 0, i32 1
  store i64 7, ptr %573, align 4
  %574 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %571, align 8
  %575 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %574, i64 25, i64 24, i64 1, i64 1)
  %576 = load ptr, ptr @"*_llgo_main.T6", align 8
  %577 = icmp eq ptr %576, null
  br i1 %577, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %578 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %575)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %578)
  store ptr %578, ptr @"*_llgo_main.T6", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %579 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %580 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %581 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %582 = icmp eq ptr %581, null
  br i1 %582, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %583 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %583, i32 0, i32 0
  store ptr @11, ptr %584, align 8
  %585 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %583, i32 0, i32 1
  store i64 6, ptr %585, align 4
  %586 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %583, align 8
  %587 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %587, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %586, ptr %588, align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %587, i32 0, i32 1
  store ptr %579, ptr %589, align 8
  %590 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %587, align 8
  %591 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %592 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %591, i32 0, i32 0
  store ptr @12, ptr %592, align 8
  %593 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %591, i32 0, i32 1
  store i64 6, ptr %593, align 4
  %594 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %591, align 8
  %595 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %596 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %595, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %594, ptr %596, align 8
  %597 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %595, i32 0, i32 1
  store ptr %580, ptr %597, align 8
  %598 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %595, align 8
  %599 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %600 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %599, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %590, ptr %600, align 8
  %601 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %599, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %598, ptr %601, align 8
  %602 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, i32 0, i32 0
  store ptr %599, ptr %603, align 8
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, i32 0, i32 1
  store i64 2, ptr %604, align 4
  %605 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, i32 0, i32 2
  store i64 2, ptr %605, align 4
  %606 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, align 8
  %607 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %607, i32 0, i32 0
  store ptr @10, ptr %608, align 8
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %607, i32 0, i32 1
  store i64 4, ptr %609, align 4
  %610 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %607, align 8
  %611 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %612 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %611, i32 0, i32 0
  store ptr null, ptr %612, align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %611, i32 0, i32 1
  store i64 0, ptr %613, align 4
  %614 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %611, align 8
  %615 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %610, %"github.com/goplus/llgo/internal/runtime.String" %614, %"github.com/goplus/llgo/internal/runtime.Slice" %606)
  store ptr %615, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %616 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %617 = load ptr, ptr @_llgo_main.I, align 8
  %618 = icmp eq ptr %617, null
  br i1 %618, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %619 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %619, i32 0, i32 0
  store ptr @11, ptr %620, align 8
  %621 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %619, i32 0, i32 1
  store i64 6, ptr %621, align 4
  %622 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %619, align 8
  %623 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %623, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %622, ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %623, i32 0, i32 1
  store ptr %616, ptr %625, align 8
  %626 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %623, align 8
  %627 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %628 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %627, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %626, ptr %628, align 8
  %629 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %629, i32 0, i32 0
  store ptr %627, ptr %630, align 8
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %629, i32 0, i32 1
  store i64 1, ptr %631, align 4
  %632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %629, i32 0, i32 2
  store i64 1, ptr %632, align 4
  %633 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %629, align 8
  %634 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %635 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %634, i32 0, i32 0
  store ptr @10, ptr %635, align 8
  %636 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %634, i32 0, i32 1
  store i64 4, ptr %636, align 4
  %637 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %634, align 8
  %638 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %638, i32 0, i32 0
  store ptr @30, ptr %639, align 8
  %640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %638, i32 0, i32 1
  store i64 6, ptr %640, align 4
  %641 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %638, align 8
  %642 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %637, %"github.com/goplus/llgo/internal/runtime.String" %641, %"github.com/goplus/llgo/internal/runtime.Slice" %633)
  store ptr %642, ptr @_llgo_main.I, align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %643 = load ptr, ptr @_llgo_any, align 8
  %644 = icmp eq ptr %643, null
  br i1 %644, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %645 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %646 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %646, i32 0, i32 0
  store ptr %645, ptr %647, align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %646, i32 0, i32 1
  store i64 0, ptr %648, align 4
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %646, i32 0, i32 2
  store i64 0, ptr %649, align 4
  %650 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %646, align 8
  %651 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %651, i32 0, i32 0
  store ptr @10, ptr %652, align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %651, i32 0, i32 1
  store i64 4, ptr %653, align 4
  %654 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %651, align 8
  %655 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %655, i32 0, i32 0
  store ptr null, ptr %656, align 8
  %657 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %655, i32 0, i32 1
  store i64 0, ptr %657, align 4
  %658 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %655, align 8
  %659 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %654, %"github.com/goplus/llgo/internal/runtime.String" %658, %"github.com/goplus/llgo/internal/runtime.Slice" %650)
  store ptr %659, ptr @_llgo_any, align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

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
