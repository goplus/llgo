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
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
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
@_llgo_Pointer = linkonce global ptr null, align 8
@"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw" = linkonce global ptr null, align 8
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
  %23 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %24 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %24, ptr %21)
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %26, i32 0, i32 0
  store ptr %25, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %26, i32 0, i32 1
  store ptr %22, ptr %28, align 8
  %29 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %26, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %29)
  %30 = load ptr, ptr @"*_llgo_main.T", align 8
  %31 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %31, ptr %30)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, i32 0, i32 0
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, i32 0, i32 1
  store ptr %2, ptr %35, align 8
  %36 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %36)
  %37 = load i64, ptr %8, align 4
  %38 = load ptr, ptr @_llgo_main.T1, align 8
  %39 = inttoptr i64 %37 to ptr
  %40 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %40, ptr %38)
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %42, i32 0, i32 0
  store ptr %41, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %42, i32 0, i32 1
  store ptr %39, ptr %44, align 8
  %45 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %42, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %45)
  %46 = load ptr, ptr @"*_llgo_main.T1", align 8
  %47 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %47, ptr %46)
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %49, i32 0, i32 0
  store ptr %48, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %49, i32 0, i32 1
  store ptr %8, ptr %51, align 8
  %52 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %49, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %52)
  %53 = load double, ptr %9, align 8
  %54 = load ptr, ptr @_llgo_main.T2, align 8
  %55 = bitcast double %53 to i64
  %56 = inttoptr i64 %55 to ptr
  %57 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %57, ptr %54)
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %59, i32 0, i32 0
  store ptr %58, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %59, i32 0, i32 1
  store ptr %56, ptr %61, align 8
  %62 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %59, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %62)
  %63 = load ptr, ptr @"*_llgo_main.T2", align 8
  %64 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %64, ptr %63)
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %66, i32 0, i32 0
  store ptr %65, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %66, i32 0, i32 1
  store ptr %9, ptr %68, align 8
  %69 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %66, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %69)
  %70 = load ptr, ptr @_llgo_main.T3, align 8
  %71 = load ptr, ptr @"*_llgo_main.T3", align 8
  %72 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %72, ptr %71)
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %74, i32 0, i32 0
  store ptr %73, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %74, i32 0, i32 1
  store ptr %10, ptr %76, align 8
  %77 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %74, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %77)
  %78 = load [1 x i64], ptr %11, align 4
  %79 = load ptr, ptr @_llgo_main.T4, align 8
  %80 = extractvalue [1 x i64] %78, 0
  %81 = inttoptr i64 %80 to ptr
  %82 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %82, ptr %79)
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %84, i32 0, i32 0
  store ptr %83, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %84, i32 0, i32 1
  store ptr %81, ptr %86, align 8
  %87 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %84, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %87)
  %88 = load ptr, ptr @"*_llgo_main.T4", align 8
  %89 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %89, ptr %88)
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %91, i32 0, i32 0
  store ptr %90, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %91, i32 0, i32 1
  store ptr %11, ptr %93, align 8
  %94 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %91, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %94)
  %95 = load %main.T5, ptr %13, align 4
  %96 = load ptr, ptr @_llgo_main.T5, align 8
  %97 = extractvalue %main.T5 %95, 0
  %98 = inttoptr i64 %97 to ptr
  %99 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %99, ptr %96)
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %101, i32 0, i32 0
  store ptr %100, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %101, i32 0, i32 1
  store ptr %98, ptr %103, align 8
  %104 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %101, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %104)
  %105 = load ptr, ptr @"*_llgo_main.T5", align 8
  %106 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %106, ptr %105)
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, i32 0, i32 0
  store ptr %107, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, i32 0, i32 1
  store ptr %13, ptr %110, align 8
  %111 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %111)
  %112 = load %main.T6, ptr %15, align 8
  %113 = load ptr, ptr @_llgo_main.T6, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T6 %112, ptr %114, align 8
  %115 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %115, ptr %113)
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %117, i32 0, i32 0
  store ptr %116, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %117, i32 0, i32 1
  store ptr %114, ptr %119, align 8
  %120 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %117, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %120)
  %121 = load ptr, ptr @"*_llgo_main.T6", align 8
  %122 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %122, ptr %121)
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %124, i32 0, i32 0
  store ptr %123, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %124, i32 0, i32 1
  store ptr %15, ptr %126, align 8
  %127 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %124, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %127)
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %129 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %129, ptr %128)
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %131, i32 0, i32 0
  store ptr %130, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %131, i32 0, i32 1
  store ptr null, ptr %133, align 8
  %134 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %131, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %134)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %135 = load ptr, ptr @"*_llgo_main.T", align 8
  %136 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %137 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %138 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %138, ptr %135)
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %140, i32 0, i32 0
  store ptr %139, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %140, i32 0, i32 1
  store ptr %2, ptr %142, align 8
  %143 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %140, align 8
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %143)
  %145 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %143, 1
  %146 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %146, ptr %144)
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %148, i32 0, i32 0
  store ptr %147, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %148, i32 0, i32 1
  store ptr %145, ptr %150, align 8
  %151 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %148, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %151)
  %152 = alloca %main.T, align 8
  call void @llvm.memset(ptr %152, i8 0, i64 16, i1 false)
  %153 = getelementptr inbounds %main.T, ptr %152, i32 0, i32 0
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr @29, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 5, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %157, ptr %153, align 8
  %158 = load %main.T, ptr %152, align 8
  %159 = load ptr, ptr @_llgo_main.T, align 8
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %158, ptr %160, align 8
  %161 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, i32 0, i32 0
  store ptr %159, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, i32 0, i32 1
  store ptr %160, ptr %163, align 8
  %164 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, align 8
  %165 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %164, 0
  %166 = load ptr, ptr @_llgo_main.I, align 8
  %167 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %166, ptr %165)
  br i1 %167, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %168 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %164, 1
  %169 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %170 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %169, ptr %165)
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %171, i32 0, i32 0
  store ptr %170, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %171, i32 0, i32 1
  store ptr %168, ptr %173, align 8
  %174 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %171, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %174)
  %175 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %164, 0
  %176 = load ptr, ptr @_llgo_any, align 8
  %177 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %176, ptr %175)
  br i1 %177, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 0
  store ptr @31, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 1
  store i64 21, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %178, align 8
  %182 = load ptr, ptr @_llgo_string, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %181, ptr %183, align 8
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %184, i32 0, i32 0
  store ptr %182, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %184, i32 0, i32 1
  store ptr %183, ptr %186, align 8
  %187 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %184, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %187)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %188 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %164, 1
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %189, i32 0, i32 0
  store ptr %175, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %189, i32 0, i32 1
  store ptr %188, ptr %191, align 8
  %192 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %189, align 8
  %193 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %192, 0
  %194 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %195 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %194, ptr %193)
  br i1 %195, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr @31, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 21, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = load ptr, ptr @_llgo_string, align 8
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %199, ptr %201, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, i32 0, i32 0
  store ptr %200, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, i32 0, i32 1
  store ptr %201, ptr %204, align 8
  %205 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %205)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %206 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %192, 1
  %207 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %207, ptr %193)
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %209, i32 0, i32 0
  store ptr %208, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %209, i32 0, i32 1
  store ptr %206, ptr %211, align 8
  %212 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %209, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %212)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr @31, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 21, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  %217 = load ptr, ptr @_llgo_string, align 8
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %216, ptr %218, align 8
  %219 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %219, i32 0, i32 0
  store ptr %217, ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %219, i32 0, i32 1
  store ptr %218, ptr %221, align 8
  %222 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %219, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %222)
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
  %45 = load ptr, ptr @_llgo_int, align 8
  %46 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 0
  store ptr %48, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 1
  store i64 0, ptr %51, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 2
  store i64 0, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %55 = getelementptr ptr, ptr %54, i64 0
  store ptr %45, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 0
  store ptr %54, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 1
  store i64 1, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 2
  store i64 1, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %53, %"github.com/goplus/llgo/internal/runtime.Slice" %60, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %61)
  store ptr %61, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %62 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %63 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %37, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 1
  store ptr %62, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %63, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %69, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %37, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %69, i32 0, i32 1
  store ptr %62, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %69, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %69, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %73, align 8
  %74 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %69, align 8
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 0
  store ptr @12, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 1
  store i64 6, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %75, align 8
  %79 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 0
  store ptr %81, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 1
  store i64 0, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 2
  store i64 0, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 0
  store ptr %87, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 1
  store i64 0, ptr %90, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 2
  store i64 0, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %86, %"github.com/goplus/llgo/internal/runtime.Slice" %92, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %93)
  store ptr %93, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %94 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %95 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %95, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %78, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %95, i32 0, i32 1
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %95, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %95, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %99, align 8
  %100 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %95, align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %102 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %101, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %74, ptr %102, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 0
  store ptr %101, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 1
  store i64 1, ptr %105, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 2
  store i64 1, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %109 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %108, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %68, ptr %109, align 8
  %110 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %108, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %100, ptr %110, align 8
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 0
  store ptr %108, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 1
  store i64 2, ptr %113, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 2
  store i64 2, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, align 8
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @10, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 4, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 0
  store ptr @13, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 1
  store i64 1, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %120, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %119, %"github.com/goplus/llgo/internal/runtime.String" %123, ptr %33, %"github.com/goplus/llgo/internal/runtime.Slice" %107, %"github.com/goplus/llgo/internal/runtime.Slice" %115)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr @11, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 6, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %128, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %127, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %128, i32 0, i32 1
  store ptr %40, ptr %130, align 8
  %131 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %128, align 8
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %133 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %132, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %131, ptr %133, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %134, i32 0, i32 0
  store ptr %132, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %134, i32 0, i32 1
  store i64 1, ptr %136, align 4
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %134, i32 0, i32 2
  store i64 1, ptr %137, align 4
  %138 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %134, align 8
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 0
  store ptr @10, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 1
  store i64 4, ptr %141, align 4
  %142 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %139, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %143, i32 0, i32 0
  store ptr null, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %143, i32 0, i32 1
  store i64 0, ptr %145, align 4
  %146 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %143, align 8
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %142, %"github.com/goplus/llgo/internal/runtime.String" %146, %"github.com/goplus/llgo/internal/runtime.Slice" %138)
  store ptr %147, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr @8, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 6, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %151, i64 25, i64 16, i64 1, i64 2)
  %153 = load ptr, ptr @"*_llgo_main.T", align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %152)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %155)
  store ptr %155, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @14, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 7, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %159, i64 2, i64 8, i64 1, i64 1)
  %161 = load ptr, ptr @_llgo_main.T1, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %160, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %163 = load ptr, ptr @_llgo_int, align 8
  br i1 %162, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %164 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 0
  store ptr @11, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 1
  store i64 6, ptr %166, align 4
  %167 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %164, align 8
  %168 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %169 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %167, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 1
  store ptr %168, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %173, align 8
  %174 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %169, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %167, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i32 0, i32 1
  store ptr %168, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %179, align 8
  %180 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %175, align 8
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %182 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %181, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %180, ptr %182, align 8
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 0
  store ptr %181, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 1
  store i64 1, ptr %185, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 2
  store i64 1, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, align 8
  %188 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %189 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %188, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %174, ptr %189, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %190, i32 0, i32 0
  store ptr %188, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %190, i32 0, i32 1
  store i64 1, ptr %192, align 4
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %190, i32 0, i32 2
  store i64 1, ptr %193, align 4
  %194 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %190, align 8
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @10, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 4, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr @15, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 1
  store i64 2, ptr %201, align 4
  %202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %199, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %160, %"github.com/goplus/llgo/internal/runtime.String" %198, %"github.com/goplus/llgo/internal/runtime.String" %202, ptr %163, %"github.com/goplus/llgo/internal/runtime.Slice" %187, %"github.com/goplus/llgo/internal/runtime.Slice" %194)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %203 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %203, i32 0, i32 0
  store ptr @14, ptr %204, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %203, i32 0, i32 1
  store i64 7, ptr %205, align 4
  %206 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %203, align 8
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %206, i64 2, i64 8, i64 1, i64 1)
  %208 = load ptr, ptr @"*_llgo_main.T1", align 8
  %209 = icmp eq ptr %208, null
  br i1 %209, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %210 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %207)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %210)
  store ptr %210, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %211 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 0
  store ptr @16, ptr %212, align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 1
  store i64 7, ptr %213, align 4
  %214 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %211, align 8
  %215 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %214, i64 14, i64 8, i64 1, i64 1)
  %216 = load ptr, ptr @_llgo_main.T2, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  store ptr %215, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %218 = load ptr, ptr @_llgo_float64, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %220 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 46)
  store ptr %220, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %221 = load ptr, ptr @_llgo_float64, align 8
  br i1 %217, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %222 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 0
  store ptr @11, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 1
  store i64 6, ptr %224, align 4
  %225 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %222, align 8
  %226 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %227 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %225, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 1
  store ptr %226, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %231, align 8
  %232 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %227, align 8
  %233 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %233, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %225, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %233, i32 0, i32 1
  store ptr %226, ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %233, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %233, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %237, align 8
  %238 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %233, align 8
  %239 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %240 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %239, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %238, ptr %240, align 8
  %241 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, i32 0, i32 0
  store ptr %239, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, i32 0, i32 1
  store i64 1, ptr %243, align 4
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, i32 0, i32 2
  store i64 1, ptr %244, align 4
  %245 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, align 8
  %246 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %247 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %246, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %232, ptr %247, align 8
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, i32 0, i32 0
  store ptr %246, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, i32 0, i32 1
  store i64 1, ptr %250, align 4
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, i32 0, i32 2
  store i64 1, ptr %251, align 4
  %252 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, align 8
  %253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 0
  store ptr @10, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 1
  store i64 4, ptr %255, align 4
  %256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %253, align 8
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 0
  store ptr @17, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 1
  store i64 2, ptr %259, align 4
  %260 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %257, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %215, %"github.com/goplus/llgo/internal/runtime.String" %256, %"github.com/goplus/llgo/internal/runtime.String" %260, ptr %221, %"github.com/goplus/llgo/internal/runtime.Slice" %245, %"github.com/goplus/llgo/internal/runtime.Slice" %252)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 0
  store ptr @16, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 1
  store i64 7, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %261, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %264, i64 14, i64 8, i64 1, i64 1)
  %266 = load ptr, ptr @"*_llgo_main.T2", align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %268 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %265)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %268)
  store ptr %268, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %269 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %269, i32 0, i32 0
  store ptr @18, ptr %270, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %269, i32 0, i32 1
  store i64 7, ptr %271, align 4
  %272 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %269, align 8
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %272, i64 3, i64 1, i64 0, i64 1)
  %274 = load ptr, ptr @_llgo_main.T3, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %273, ptr @_llgo_main.T3, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %276 = load ptr, ptr @_llgo_int8, align 8
  %277 = icmp eq ptr %276, null
  br i1 %277, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %278 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %278, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %279 = load ptr, ptr @_llgo_int8, align 8
  br i1 %275, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 0
  store ptr @11, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 6, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  %284 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %285 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %285, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %283, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %285, i32 0, i32 1
  store ptr %284, ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %285, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %285, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %289, align 8
  %290 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %285, align 8
  %291 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %292 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %291, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %290, ptr %292, align 8
  %293 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %293, i32 0, i32 0
  store ptr %291, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %293, i32 0, i32 1
  store i64 1, ptr %295, align 4
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %293, i32 0, i32 2
  store i64 1, ptr %296, align 4
  %297 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %293, align 8
  %298 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 0
  store ptr @10, ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 1
  store i64 4, ptr %300, align 4
  %301 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %298, align 8
  %302 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 0
  store ptr @19, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 1
  store i64 2, ptr %304, align 4
  %305 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %302, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %273, %"github.com/goplus/llgo/internal/runtime.String" %301, %"github.com/goplus/llgo/internal/runtime.String" %305, ptr %279, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %297)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %306 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 0
  store ptr @18, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 1
  store i64 7, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %306, align 8
  %310 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %309, i64 3, i64 1, i64 0, i64 1)
  %311 = load ptr, ptr @"*_llgo_main.T3", align 8
  %312 = icmp eq ptr %311, null
  br i1 %312, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %313 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %310)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %313)
  store ptr %313, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %314 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 0
  store ptr @20, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 1
  store i64 7, ptr %316, align 4
  %317 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %314, align 8
  %318 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %317, i64 17, i64 8, i64 1, i64 1)
  %319 = load ptr, ptr @_llgo_main.T4, align 8
  %320 = icmp eq ptr %319, null
  br i1 %320, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %318, ptr @_llgo_main.T4, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
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
  br i1 %320, label %_llgo_43, label %_llgo_44

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
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %318, %"github.com/goplus/llgo/internal/runtime.String" %360, %"github.com/goplus/llgo/internal/runtime.String" %364, ptr %325, %"github.com/goplus/llgo/internal/runtime.Slice" %349, %"github.com/goplus/llgo/internal/runtime.Slice" %356)
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
  %380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 0
  store ptr @23, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 1
  store i64 1, ptr %382, align 4
  %383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %380, align 8
  %384 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 0
  store ptr null, ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 1
  store i64 0, ptr %386, align 4
  %387 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %384, align 8
  %388 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %389 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %383, ptr %388, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %387, i1 false)
  %390 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %390, i32 0, i32 0
  store ptr @10, ptr %391, align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %390, i32 0, i32 1
  store i64 4, ptr %392, align 4
  %393 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %390, align 8
  %394 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %395 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %394, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %389, ptr %395, align 8
  %396 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %396, i32 0, i32 0
  store ptr %394, ptr %397, align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %396, i32 0, i32 1
  store i64 1, ptr %398, align 4
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %396, i32 0, i32 2
  store i64 1, ptr %399, align 4
  %400 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %396, align 8
  %401 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %393, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %400)
  store ptr %401, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %402 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %379, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %403 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %403, i32 0, i32 0
  store ptr @11, ptr %404, align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %403, i32 0, i32 1
  store i64 6, ptr %405, align 4
  %406 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %403, align 8
  %407 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %408 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %406, ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 1
  store ptr %407, ptr %410, align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 3
  store ptr @"main.(*T5).Invoke", ptr %412, align 8
  %413 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %408, align 8
  %414 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %406, ptr %415, align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 1
  store ptr %407, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 3
  store ptr @main.T5.Invoke, ptr %418, align 8
  %419 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %414, align 8
  %420 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %421 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %420, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %419, ptr %421, align 8
  %422 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %422, i32 0, i32 0
  store ptr %420, ptr %423, align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %422, i32 0, i32 1
  store i64 1, ptr %424, align 4
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %422, i32 0, i32 2
  store i64 1, ptr %425, align 4
  %426 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %422, align 8
  %427 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %428 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %427, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %413, ptr %428, align 8
  %429 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %429, i32 0, i32 0
  store ptr %427, ptr %430, align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %429, i32 0, i32 1
  store i64 1, ptr %431, align 4
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %429, i32 0, i32 2
  store i64 1, ptr %432, align 4
  %433 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %429, align 8
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 0
  store ptr @10, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 1
  store i64 4, ptr %436, align 4
  %437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %434, align 8
  %438 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 0
  store ptr @24, ptr %439, align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 1
  store i64 2, ptr %440, align 4
  %441 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %438, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %377, %"github.com/goplus/llgo/internal/runtime.String" %437, %"github.com/goplus/llgo/internal/runtime.String" %441, ptr %402, %"github.com/goplus/llgo/internal/runtime.Slice" %426, %"github.com/goplus/llgo/internal/runtime.Slice" %433)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %442 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %442, i32 0, i32 0
  store ptr @22, ptr %443, align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %442, i32 0, i32 1
  store i64 7, ptr %444, align 4
  %445 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %442, align 8
  %446 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %445, i64 25, i64 8, i64 1, i64 1)
  %447 = load ptr, ptr @"*_llgo_main.T5", align 8
  %448 = icmp eq ptr %447, null
  br i1 %448, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %449 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %446)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %449)
  store ptr %449, ptr @"*_llgo_main.T5", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %450 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %450, i32 0, i32 0
  store ptr @25, ptr %451, align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %450, i32 0, i32 1
  store i64 7, ptr %452, align 4
  %453 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %450, align 8
  %454 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %453, i64 25, i64 24, i64 1, i64 1)
  %455 = load ptr, ptr @_llgo_main.T6, align 8
  %456 = icmp eq ptr %455, null
  br i1 %456, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %454, ptr @_llgo_main.T6, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %457 = load ptr, ptr @_llgo_Pointer, align 8
  %458 = icmp eq ptr %457, null
  br i1 %458, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %459 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %459)
  store ptr %459, ptr @_llgo_Pointer, align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %460 = load ptr, ptr @_llgo_Pointer, align 8
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
  %482 = load ptr, ptr @_llgo_int, align 8
  %483 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %483, i32 0, i32 0
  store ptr @26, ptr %484, align 8
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %483, i32 0, i32 1
  store i64 1, ptr %485, align 4
  %486 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %483, align 8
  %487 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %487, i32 0, i32 0
  store ptr null, ptr %488, align 8
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %487, i32 0, i32 1
  store i64 0, ptr %489, align 4
  %490 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %487, align 8
  %491 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %492 = getelementptr ptr, ptr %491, i64 0
  store ptr %481, ptr %492, align 8
  %493 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %493, i32 0, i32 0
  store ptr %491, ptr %494, align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %493, i32 0, i32 1
  store i64 1, ptr %495, align 4
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %493, i32 0, i32 2
  store i64 1, ptr %496, align 4
  %497 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %493, align 8
  %498 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %499 = getelementptr ptr, ptr %498, i64 0
  store ptr %482, ptr %499, align 8
  %500 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, i32 0, i32 0
  store ptr %498, ptr %501, align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, i32 0, i32 1
  store i64 1, ptr %502, align 4
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, i32 0, i32 2
  store i64 1, ptr %503, align 4
  %504 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, align 8
  %505 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %497, %"github.com/goplus/llgo/internal/runtime.Slice" %504, i1 false)
  %506 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %486, ptr %505, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %490, i1 false)
  %507 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 0
  store ptr @27, ptr %508, align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 1
  store i64 4, ptr %509, align 4
  %510 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %507, align 8
  %511 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 0
  store ptr null, ptr %512, align 8
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 1
  store i64 0, ptr %513, align 4
  %514 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %511, align 8
  %515 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %516 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %510, ptr %515, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %514, i1 false)
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr @10, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 4, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %522 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %521, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %506, ptr %522, align 8
  %523 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %521, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %516, ptr %523, align 8
  %524 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %524, i32 0, i32 0
  store ptr %521, ptr %525, align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %524, i32 0, i32 1
  store i64 2, ptr %526, align 4
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %524, i32 0, i32 2
  store i64 2, ptr %527, align 4
  %528 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %524, align 8
  %529 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %520, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %528)
  store ptr %529, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  %530 = load ptr, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  br i1 %456, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %531 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 0
  store ptr @11, ptr %532, align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 1
  store i64 6, ptr %533, align 4
  %534 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %531, align 8
  %535 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %536 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %536, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %534, ptr %537, align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %536, i32 0, i32 1
  store ptr %535, ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %536, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %539, align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %536, i32 0, i32 3
  store ptr @"main.(*T6).Invoke", ptr %540, align 8
  %541 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %536, align 8
  %542 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %542, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %534, ptr %543, align 8
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %542, i32 0, i32 1
  store ptr %535, ptr %544, align 8
  %545 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %542, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %545, align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %542, i32 0, i32 3
  store ptr @main.T6.Invoke, ptr %546, align 8
  %547 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %542, align 8
  %548 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %549 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %548, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %547, ptr %549, align 8
  %550 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 0
  store ptr %548, ptr %551, align 8
  %552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 1
  store i64 1, ptr %552, align 4
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 2
  store i64 1, ptr %553, align 4
  %554 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, align 8
  %555 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %556 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %555, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %541, ptr %556, align 8
  %557 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, i32 0, i32 0
  store ptr %555, ptr %558, align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, i32 0, i32 1
  store i64 1, ptr %559, align 4
  %560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, i32 0, i32 2
  store i64 1, ptr %560, align 4
  %561 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, align 8
  %562 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %562, i32 0, i32 0
  store ptr @10, ptr %563, align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %562, i32 0, i32 1
  store i64 4, ptr %564, align 4
  %565 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %562, align 8
  %566 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %566, i32 0, i32 0
  store ptr @28, ptr %567, align 8
  %568 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %566, i32 0, i32 1
  store i64 2, ptr %568, align 4
  %569 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %566, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %454, %"github.com/goplus/llgo/internal/runtime.String" %565, %"github.com/goplus/llgo/internal/runtime.String" %569, ptr %530, %"github.com/goplus/llgo/internal/runtime.Slice" %554, %"github.com/goplus/llgo/internal/runtime.Slice" %561)
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %570 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %570, i32 0, i32 0
  store ptr @25, ptr %571, align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %570, i32 0, i32 1
  store i64 7, ptr %572, align 4
  %573 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %570, align 8
  %574 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %573, i64 25, i64 24, i64 1, i64 1)
  %575 = load ptr, ptr @"*_llgo_main.T6", align 8
  %576 = icmp eq ptr %575, null
  br i1 %576, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %577 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %574)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %577)
  store ptr %577, ptr @"*_llgo_main.T6", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %578 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %579 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %580 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %581 = icmp eq ptr %580, null
  br i1 %581, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %582 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %582, i32 0, i32 0
  store ptr @11, ptr %583, align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %582, i32 0, i32 1
  store i64 6, ptr %584, align 4
  %585 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %582, align 8
  %586 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %586, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %585, ptr %587, align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %586, i32 0, i32 1
  store ptr %578, ptr %588, align 8
  %589 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %586, align 8
  %590 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %590, i32 0, i32 0
  store ptr @12, ptr %591, align 8
  %592 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %590, i32 0, i32 1
  store i64 6, ptr %592, align 4
  %593 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %590, align 8
  %594 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %594, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %593, ptr %595, align 8
  %596 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %594, i32 0, i32 1
  store ptr %579, ptr %596, align 8
  %597 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %594, align 8
  %598 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %599 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %598, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %589, ptr %599, align 8
  %600 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %598, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %597, ptr %600, align 8
  %601 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %602 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, i32 0, i32 0
  store ptr %598, ptr %602, align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, i32 0, i32 1
  store i64 2, ptr %603, align 4
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, i32 0, i32 2
  store i64 2, ptr %604, align 4
  %605 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, align 8
  %606 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 0
  store ptr @10, ptr %607, align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 1
  store i64 4, ptr %608, align 4
  %609 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %606, align 8
  %610 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %610, i32 0, i32 0
  store ptr null, ptr %611, align 8
  %612 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %610, i32 0, i32 1
  store i64 0, ptr %612, align 4
  %613 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %610, align 8
  %614 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %609, %"github.com/goplus/llgo/internal/runtime.String" %613, %"github.com/goplus/llgo/internal/runtime.Slice" %605)
  store ptr %614, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %615 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %616 = load ptr, ptr @_llgo_main.I, align 8
  %617 = icmp eq ptr %616, null
  br i1 %617, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %618 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 0
  store ptr @11, ptr %619, align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 1
  store i64 6, ptr %620, align 4
  %621 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %618, align 8
  %622 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %622, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %621, ptr %623, align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %622, i32 0, i32 1
  store ptr %615, ptr %624, align 8
  %625 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %622, align 8
  %626 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %627 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %626, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %625, ptr %627, align 8
  %628 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, i32 0, i32 0
  store ptr %626, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, i32 0, i32 1
  store i64 1, ptr %630, align 4
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, i32 0, i32 2
  store i64 1, ptr %631, align 4
  %632 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, align 8
  %633 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 0
  store ptr @10, ptr %634, align 8
  %635 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 1
  store i64 4, ptr %635, align 4
  %636 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %633, align 8
  %637 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %638 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %637, i32 0, i32 0
  store ptr @30, ptr %638, align 8
  %639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %637, i32 0, i32 1
  store i64 6, ptr %639, align 4
  %640 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %637, align 8
  %641 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %636, %"github.com/goplus/llgo/internal/runtime.String" %640, %"github.com/goplus/llgo/internal/runtime.Slice" %632)
  store ptr %641, ptr @_llgo_main.I, align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %642 = load ptr, ptr @_llgo_any, align 8
  %643 = icmp eq ptr %642, null
  br i1 %643, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %644 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %645 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, i32 0, i32 0
  store ptr %644, ptr %646, align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, i32 0, i32 1
  store i64 0, ptr %647, align 4
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, i32 0, i32 2
  store i64 0, ptr %648, align 4
  %649 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, align 8
  %650 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %650, i32 0, i32 0
  store ptr @10, ptr %651, align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %650, i32 0, i32 1
  store i64 4, ptr %652, align 4
  %653 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %650, align 8
  %654 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %654, i32 0, i32 0
  store ptr null, ptr %655, align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %654, i32 0, i32 1
  store i64 0, ptr %656, align 4
  %657 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %654, align 8
  %658 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %653, %"github.com/goplus/llgo/internal/runtime.String" %657, %"github.com/goplus/llgo/internal/runtime.Slice" %649)
  store ptr %658, ptr @_llgo_any, align 8
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
