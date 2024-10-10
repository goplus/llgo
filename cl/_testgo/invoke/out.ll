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
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %25 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %25, ptr %21)
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %27, i32 0, i32 0
  store ptr %26, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %27, i32 0, i32 1
  store ptr %22, ptr %29, align 8
  %30 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %27, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %30)
  %31 = load ptr, ptr @"*_llgo_main.T", align 8
  %32 = load ptr, ptr @_llgo_int, align 8
  %33 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %34 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %34, ptr %31)
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, i32 0, i32 0
  store ptr %35, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, i32 0, i32 1
  store ptr %2, ptr %38, align 8
  %39 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %39)
  %40 = load i64, ptr %8, align 4
  %41 = load ptr, ptr @_llgo_main.T1, align 8
  %42 = inttoptr i64 %40 to ptr
  %43 = load ptr, ptr @_llgo_int, align 8
  %44 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %45 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %45, ptr %41)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, i32 0, i32 0
  store ptr %46, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, i32 0, i32 1
  store ptr %42, ptr %49, align 8
  %50 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %50)
  %51 = load ptr, ptr @"*_llgo_main.T1", align 8
  %52 = load ptr, ptr @_llgo_int, align 8
  %53 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %54 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %54, ptr %51)
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %56, i32 0, i32 0
  store ptr %55, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %56, i32 0, i32 1
  store ptr %8, ptr %58, align 8
  %59 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %56, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %59)
  %60 = load double, ptr %9, align 8
  %61 = load ptr, ptr @_llgo_main.T2, align 8
  %62 = bitcast double %60 to i64
  %63 = inttoptr i64 %62 to ptr
  %64 = load ptr, ptr @_llgo_int, align 8
  %65 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %66 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %66, ptr %61)
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %68, i32 0, i32 0
  store ptr %67, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %68, i32 0, i32 1
  store ptr %63, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %68, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %71)
  %72 = load ptr, ptr @"*_llgo_main.T2", align 8
  %73 = load ptr, ptr @_llgo_int, align 8
  %74 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %75 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %75, ptr %72)
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, i32 0, i32 0
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, i32 0, i32 1
  store ptr %9, ptr %79, align 8
  %80 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %80)
  %81 = load ptr, ptr @"*_llgo_main.T3", align 8
  %82 = load ptr, ptr @_llgo_int, align 8
  %83 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %84 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %84, ptr %81)
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %86, i32 0, i32 0
  store ptr %85, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %86, i32 0, i32 1
  store ptr %10, ptr %88, align 8
  %89 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %86, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %89)
  %90 = load [1 x i64], ptr %11, align 4
  %91 = load ptr, ptr @_llgo_main.T4, align 8
  %92 = extractvalue [1 x i64] %90, 0
  %93 = inttoptr i64 %92 to ptr
  %94 = load ptr, ptr @_llgo_int, align 8
  %95 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %96 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %96, ptr %91)
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %98, i32 0, i32 0
  store ptr %97, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %98, i32 0, i32 1
  store ptr %93, ptr %100, align 8
  %101 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %98, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %101)
  %102 = load ptr, ptr @"*_llgo_main.T4", align 8
  %103 = load ptr, ptr @_llgo_int, align 8
  %104 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %105 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %105, ptr %102)
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %107, i32 0, i32 0
  store ptr %106, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %107, i32 0, i32 1
  store ptr %11, ptr %109, align 8
  %110 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %107, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %110)
  %111 = load %main.T5, ptr %13, align 4
  %112 = load ptr, ptr @_llgo_main.T5, align 8
  %113 = extractvalue %main.T5 %111, 0
  %114 = inttoptr i64 %113 to ptr
  %115 = load ptr, ptr @_llgo_int, align 8
  %116 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %117 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %117, ptr %112)
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %119, i32 0, i32 0
  store ptr %118, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %119, i32 0, i32 1
  store ptr %114, ptr %121, align 8
  %122 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %119, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %122)
  %123 = load ptr, ptr @"*_llgo_main.T5", align 8
  %124 = load ptr, ptr @_llgo_int, align 8
  %125 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %126 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %126, ptr %123)
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %128, i32 0, i32 0
  store ptr %127, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %128, i32 0, i32 1
  store ptr %13, ptr %130, align 8
  %131 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %128, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %131)
  %132 = load %main.T6, ptr %15, align 8
  %133 = load ptr, ptr @_llgo_main.T6, align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T6 %132, ptr %134, align 8
  %135 = load ptr, ptr @_llgo_int, align 8
  %136 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %137 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %137, ptr %133)
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %139, i32 0, i32 0
  store ptr %138, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %139, i32 0, i32 1
  store ptr %134, ptr %141, align 8
  %142 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %139, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %142)
  %143 = load ptr, ptr @"*_llgo_main.T6", align 8
  %144 = load ptr, ptr @_llgo_int, align 8
  %145 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %146 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %146, ptr %143)
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %148, i32 0, i32 0
  store ptr %147, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %148, i32 0, i32 1
  store ptr %15, ptr %150, align 8
  %151 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %148, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %151)
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %153 = load ptr, ptr @_llgo_int, align 8
  %154 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %155 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %155, ptr %152)
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %157, i32 0, i32 0
  store ptr %156, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %157, i32 0, i32 1
  store ptr null, ptr %159, align 8
  %160 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %157, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %160)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %161 = load ptr, ptr @"*_llgo_main.T", align 8
  %162 = load ptr, ptr @_llgo_int, align 8
  %163 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %164 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %165 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %166 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %165, ptr %161)
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %167, i32 0, i32 0
  store ptr %166, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %167, i32 0, i32 1
  store ptr %2, ptr %169, align 8
  %170 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %167, align 8
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %170)
  %172 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %170, 1
  %173 = load ptr, ptr @_llgo_int, align 8
  %174 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %175 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %175, ptr %171)
  %177 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %177, i32 0, i32 0
  store ptr %176, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %177, i32 0, i32 1
  store ptr %172, ptr %179, align 8
  %180 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %177, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %180)
  %181 = alloca %main.T, align 8
  call void @llvm.memset(ptr %181, i8 0, i64 16, i1 false)
  %182 = getelementptr inbounds %main.T, ptr %181, i32 0, i32 0
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 0
  store ptr @29, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 1
  store i64 5, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %186, ptr %182, align 8
  %187 = load %main.T, ptr %181, align 8
  %188 = load ptr, ptr @_llgo_main.T, align 8
  %189 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %187, ptr %189, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %190, i32 0, i32 0
  store ptr %188, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %190, i32 0, i32 1
  store ptr %189, ptr %192, align 8
  %193 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %190, align 8
  %194 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %193, 0
  %195 = load ptr, ptr @_llgo_main.I, align 8
  %196 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %195, ptr %194)
  br i1 %196, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %197 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %193, 1
  %198 = load ptr, ptr @_llgo_int, align 8
  %199 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %200 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %200, ptr %194)
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %202, i32 0, i32 0
  store ptr %201, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %202, i32 0, i32 1
  store ptr %197, ptr %204, align 8
  %205 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %202, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %205)
  %206 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %193, 0
  %207 = load ptr, ptr @_llgo_any, align 8
  %208 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %207, ptr %206)
  br i1 %208, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
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

_llgo_3:                                          ; preds = %_llgo_1
  %219 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %193, 1
  %220 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %220, i32 0, i32 0
  store ptr %206, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %220, i32 0, i32 1
  store ptr %219, ptr %222, align 8
  %223 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %220, align 8
  %224 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %223, 0
  %225 = load ptr, ptr @_llgo_int, align 8
  %226 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %227 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %228 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %227, ptr %224)
  br i1 %228, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 0
  store ptr @31, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 1
  store i64 21, ptr %231, align 4
  %232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %229, align 8
  %233 = load ptr, ptr @_llgo_string, align 8
  %234 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %232, ptr %234, align 8
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %235, i32 0, i32 0
  store ptr %233, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %235, i32 0, i32 1
  store ptr %234, ptr %237, align 8
  %238 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %235, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %238)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %239 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %223, 1
  %240 = load ptr, ptr @_llgo_int, align 8
  %241 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %242 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %243 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %242, ptr %224)
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %244, i32 0, i32 0
  store ptr %243, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %244, i32 0, i32 1
  store ptr %239, ptr %246, align 8
  %247 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %244, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %247)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 0
  store ptr @31, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 1
  store i64 21, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %248, align 8
  %252 = load ptr, ptr @_llgo_string, align 8
  %253 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %251, ptr %253, align 8
  %254 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %254, i32 0, i32 0
  store ptr %252, ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %254, i32 0, i32 1
  store ptr %253, ptr %256, align 8
  %257 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %254, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %257)
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
  %40 = load ptr, ptr @_llgo_int, align 8
  %41 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %42 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_13, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_5
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %44, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %45 = load ptr, ptr @_llgo_int, align 8
  %46 = load ptr, ptr @_llgo_int, align 8
  %47 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 0
  store ptr %49, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 1
  store i64 0, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 2
  store i64 0, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %56 = getelementptr ptr, ptr %55, i64 0
  store ptr %46, ptr %56, align 8
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 0
  store ptr %55, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 1
  store i64 1, ptr %59, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 2
  store i64 1, ptr %60, align 4
  %61 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %54, %"github.com/goplus/llgo/internal/runtime.Slice" %61, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %62)
  store ptr %62, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %63 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %64 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %37, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 1
  store ptr %63, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %68, align 8
  %69 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %64, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %37, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 1
  store ptr %63, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %74, align 8
  %75 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %70, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @12, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 6, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 0
  store ptr %82, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 1
  store i64 0, ptr %85, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 2
  store i64 0, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 0
  store ptr %88, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 1
  store i64 0, ptr %91, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 2
  store i64 0, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, align 8
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %87, %"github.com/goplus/llgo/internal/runtime.Slice" %93, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %94)
  store ptr %94, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %95 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %96 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %96, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %96, i32 0, i32 1
  store ptr %95, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %96, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %96, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %100, align 8
  %101 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %96, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %103 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %102, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %75, ptr %103, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 0
  store ptr %102, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 1
  store i64 1, ptr %106, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 2
  store i64 1, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, align 8
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %110 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %109, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %69, ptr %110, align 8
  %111 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %109, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %101, ptr %111, align 8
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 0
  store ptr %109, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 1
  store i64 2, ptr %114, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 2
  store i64 2, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 0
  store ptr @10, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 1
  store i64 4, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %117, align 8
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 0
  store ptr @13, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 1
  store i64 1, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %121, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %120, %"github.com/goplus/llgo/internal/runtime.String" %124, ptr %33, %"github.com/goplus/llgo/internal/runtime.Slice" %108, %"github.com/goplus/llgo/internal/runtime.Slice" %116)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 0
  store ptr @11, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 1
  store i64 6, ptr %127, align 4
  %128 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %125, align 8
  %129 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %129, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %128, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %129, i32 0, i32 1
  store ptr %41, ptr %131, align 8
  %132 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %129, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %134 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %133, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %132, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 0
  store ptr %133, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 1
  store i64 1, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 2
  store i64 1, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @10, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 4, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr null, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 0, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %143, %"github.com/goplus/llgo/internal/runtime.String" %147, %"github.com/goplus/llgo/internal/runtime.Slice" %139)
  store ptr %148, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %149 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 0
  store ptr @8, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 1
  store i64 6, ptr %151, align 4
  %152 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %149, align 8
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %152, i64 25, i64 16, i64 1, i64 2)
  %154 = load ptr, ptr @"*_llgo_main.T", align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %153)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %156)
  store ptr %156, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 0
  store ptr @14, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 1
  store i64 7, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  %161 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %160, i64 2, i64 8, i64 1, i64 1)
  %162 = load ptr, ptr @_llgo_main.T1, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %161, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %164 = load ptr, ptr @_llgo_int, align 8
  br i1 %163, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %165 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %165, i32 0, i32 0
  store ptr @11, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %165, i32 0, i32 1
  store i64 6, ptr %167, align 4
  %168 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %165, align 8
  %169 = load ptr, ptr @_llgo_int, align 8
  %170 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %171 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %171, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %168, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %171, i32 0, i32 1
  store ptr %170, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %171, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %174, align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %171, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %175, align 8
  %176 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %171, align 8
  %177 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %177, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %168, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %177, i32 0, i32 1
  store ptr %170, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %177, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %177, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %181, align 8
  %182 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %177, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %184 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %183, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %182, ptr %184, align 8
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 0
  store ptr %183, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 1
  store i64 1, ptr %187, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 2
  store i64 1, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, align 8
  %190 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %191 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %190, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %176, ptr %191, align 8
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, i32 0, i32 0
  store ptr %190, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, i32 0, i32 1
  store i64 1, ptr %194, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, i32 0, i32 2
  store i64 1, ptr %195, align 4
  %196 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, align 8
  %197 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %197, i32 0, i32 0
  store ptr @10, ptr %198, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %197, i32 0, i32 1
  store i64 4, ptr %199, align 4
  %200 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %197, align 8
  %201 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %201, i32 0, i32 0
  store ptr @15, ptr %202, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %201, i32 0, i32 1
  store i64 2, ptr %203, align 4
  %204 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %201, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %161, %"github.com/goplus/llgo/internal/runtime.String" %200, %"github.com/goplus/llgo/internal/runtime.String" %204, ptr %164, %"github.com/goplus/llgo/internal/runtime.Slice" %189, %"github.com/goplus/llgo/internal/runtime.Slice" %196)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %205 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %205, i32 0, i32 0
  store ptr @14, ptr %206, align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %205, i32 0, i32 1
  store i64 7, ptr %207, align 4
  %208 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %205, align 8
  %209 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %208, i64 2, i64 8, i64 1, i64 1)
  %210 = load ptr, ptr @"*_llgo_main.T1", align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %212 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %209)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %212)
  store ptr %212, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr @16, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 7, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  %217 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %216, i64 14, i64 8, i64 1, i64 1)
  %218 = load ptr, ptr @_llgo_main.T2, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  store ptr %217, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %220 = load ptr, ptr @_llgo_float64, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 46)
  store ptr %222, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %223 = load ptr, ptr @_llgo_float64, align 8
  br i1 %219, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr @11, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 6, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = load ptr, ptr @_llgo_int, align 8
  %229 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %230 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %230, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %227, ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %230, i32 0, i32 1
  store ptr %229, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %230, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %230, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %234, align 8
  %235 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %230, align 8
  %236 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %236, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %227, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %236, i32 0, i32 1
  store ptr %229, ptr %238, align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %236, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %236, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %240, align 8
  %241 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %236, align 8
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %243 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %242, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %241, ptr %243, align 8
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 0
  store ptr %242, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 1
  store i64 1, ptr %246, align 4
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 2
  store i64 1, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, align 8
  %249 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %250 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %249, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %235, ptr %250, align 8
  %251 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 0
  store ptr %249, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 1
  store i64 1, ptr %253, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 2
  store i64 1, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr @10, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 4, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr @17, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 2, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %217, %"github.com/goplus/llgo/internal/runtime.String" %259, %"github.com/goplus/llgo/internal/runtime.String" %263, ptr %223, %"github.com/goplus/llgo/internal/runtime.Slice" %248, %"github.com/goplus/llgo/internal/runtime.Slice" %255)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %264 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 0
  store ptr @16, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 1
  store i64 7, ptr %266, align 4
  %267 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %264, align 8
  %268 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %267, i64 14, i64 8, i64 1, i64 1)
  %269 = load ptr, ptr @"*_llgo_main.T2", align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %271 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %268)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %271)
  store ptr %271, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 0
  store ptr @18, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 1
  store i64 7, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %272, align 8
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %275, i64 3, i64 1, i64 0, i64 1)
  %277 = load ptr, ptr @_llgo_main.T3, align 8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %276, ptr @_llgo_main.T3, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %279 = load ptr, ptr @_llgo_int8, align 8
  %280 = icmp eq ptr %279, null
  br i1 %280, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %281 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %281, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %282 = load ptr, ptr @_llgo_int8, align 8
  br i1 %278, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 0
  store ptr @11, ptr %284, align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 1
  store i64 6, ptr %285, align 4
  %286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %283, align 8
  %287 = load ptr, ptr @_llgo_int, align 8
  %288 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %289 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %286, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 1
  store ptr %288, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %293, align 8
  %294 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %289, align 8
  %295 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %296 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %294, ptr %296, align 8
  %297 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, i32 0, i32 0
  store ptr %295, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, i32 0, i32 1
  store i64 1, ptr %299, align 4
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, i32 0, i32 2
  store i64 1, ptr %300, align 4
  %301 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, align 8
  %302 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 0
  store ptr @10, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 1
  store i64 4, ptr %304, align 4
  %305 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %302, align 8
  %306 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 0
  store ptr @19, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 1
  store i64 2, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %306, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %276, %"github.com/goplus/llgo/internal/runtime.String" %305, %"github.com/goplus/llgo/internal/runtime.String" %309, ptr %282, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %301)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 0
  store ptr @18, ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 1
  store i64 7, ptr %312, align 4
  %313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %310, align 8
  %314 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %313, i64 3, i64 1, i64 0, i64 1)
  %315 = load ptr, ptr @"*_llgo_main.T3", align 8
  %316 = icmp eq ptr %315, null
  br i1 %316, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %317 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %314)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %317)
  store ptr %317, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %318 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %318, i32 0, i32 0
  store ptr @20, ptr %319, align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %318, i32 0, i32 1
  store i64 7, ptr %320, align 4
  %321 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %318, align 8
  %322 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %321, i64 17, i64 8, i64 1, i64 1)
  %323 = load ptr, ptr @_llgo_main.T4, align 8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %322, ptr @_llgo_main.T4, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %325 = load ptr, ptr @_llgo_int, align 8
  %326 = load ptr, ptr @"[1]_llgo_int", align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %328 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %329 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %328)
  store ptr %329, ptr @"[1]_llgo_int", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %330 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %324, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 0
  store ptr @11, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 1
  store i64 6, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %331, align 8
  %335 = load ptr, ptr @_llgo_int, align 8
  %336 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %337 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %334, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 1
  store ptr %336, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %340, align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %337, i32 0, i32 3
  store ptr @"main.(*T4).Invoke", ptr %341, align 8
  %342 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %337, align 8
  %343 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %334, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i32 0, i32 1
  store ptr %336, ptr %345, align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %346, align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i32 0, i32 3
  store ptr @main.T4.Invoke, ptr %347, align 8
  %348 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %343, align 8
  %349 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %350 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %349, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %348, ptr %350, align 8
  %351 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, i32 0, i32 0
  store ptr %349, ptr %352, align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, i32 0, i32 1
  store i64 1, ptr %353, align 4
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, i32 0, i32 2
  store i64 1, ptr %354, align 4
  %355 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, align 8
  %356 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %357 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %356, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %342, ptr %357, align 8
  %358 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, i32 0, i32 0
  store ptr %356, ptr %359, align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, i32 0, i32 1
  store i64 1, ptr %360, align 4
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, i32 0, i32 2
  store i64 1, ptr %361, align 4
  %362 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, align 8
  %363 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 0
  store ptr @10, ptr %364, align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 1
  store i64 4, ptr %365, align 4
  %366 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %363, align 8
  %367 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 0
  store ptr @21, ptr %368, align 8
  %369 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 1
  store i64 2, ptr %369, align 4
  %370 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %367, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %322, %"github.com/goplus/llgo/internal/runtime.String" %366, %"github.com/goplus/llgo/internal/runtime.String" %370, ptr %330, %"github.com/goplus/llgo/internal/runtime.Slice" %355, %"github.com/goplus/llgo/internal/runtime.Slice" %362)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %371 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 0
  store ptr @20, ptr %372, align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 1
  store i64 7, ptr %373, align 4
  %374 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %371, align 8
  %375 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %374, i64 17, i64 8, i64 1, i64 1)
  %376 = load ptr, ptr @"*_llgo_main.T4", align 8
  %377 = icmp eq ptr %376, null
  br i1 %377, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %378 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %375)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %378)
  store ptr %378, ptr @"*_llgo_main.T4", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %379 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %379, i32 0, i32 0
  store ptr @22, ptr %380, align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %379, i32 0, i32 1
  store i64 7, ptr %381, align 4
  %382 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %379, align 8
  %383 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %382, i64 25, i64 8, i64 1, i64 1)
  %384 = load ptr, ptr @_llgo_main.T5, align 8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  store ptr %383, ptr @_llgo_main.T5, align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %386 = load ptr, ptr @_llgo_int, align 8
  %387 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %387, i32 0, i32 0
  store ptr @23, ptr %388, align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %387, i32 0, i32 1
  store i64 1, ptr %389, align 4
  %390 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %387, align 8
  %391 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %391, i32 0, i32 0
  store ptr null, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %391, i32 0, i32 1
  store i64 0, ptr %393, align 4
  %394 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %391, align 8
  %395 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %396 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %390, ptr %395, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %394, i1 false)
  %397 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 0
  store ptr @10, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 1
  store i64 4, ptr %399, align 4
  %400 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %397, align 8
  %401 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %402 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %401, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %396, ptr %402, align 8
  %403 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %403, i32 0, i32 0
  store ptr %401, ptr %404, align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %403, i32 0, i32 1
  store i64 1, ptr %405, align 4
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %403, i32 0, i32 2
  store i64 1, ptr %406, align 4
  %407 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %403, align 8
  %408 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %400, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %407)
  store ptr %408, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %409 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %385, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %410 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %410, i32 0, i32 0
  store ptr @11, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %410, i32 0, i32 1
  store i64 6, ptr %412, align 4
  %413 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %410, align 8
  %414 = load ptr, ptr @_llgo_int, align 8
  %415 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %416 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %416, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %413, ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %416, i32 0, i32 1
  store ptr %415, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %416, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %419, align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %416, i32 0, i32 3
  store ptr @"main.(*T5).Invoke", ptr %420, align 8
  %421 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %416, align 8
  %422 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %422, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %413, ptr %423, align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %422, i32 0, i32 1
  store ptr %415, ptr %424, align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %422, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %425, align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %422, i32 0, i32 3
  store ptr @main.T5.Invoke, ptr %426, align 8
  %427 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %422, align 8
  %428 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %428, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %427, ptr %429, align 8
  %430 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, i32 0, i32 0
  store ptr %428, ptr %431, align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, i32 0, i32 1
  store i64 1, ptr %432, align 4
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, i32 0, i32 2
  store i64 1, ptr %433, align 4
  %434 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %430, align 8
  %435 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %436 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %435, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %421, ptr %436, align 8
  %437 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, i32 0, i32 0
  store ptr %435, ptr %438, align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, i32 0, i32 1
  store i64 1, ptr %439, align 4
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, i32 0, i32 2
  store i64 1, ptr %440, align 4
  %441 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, align 8
  %442 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %442, i32 0, i32 0
  store ptr @10, ptr %443, align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %442, i32 0, i32 1
  store i64 4, ptr %444, align 4
  %445 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %442, align 8
  %446 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %446, i32 0, i32 0
  store ptr @24, ptr %447, align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %446, i32 0, i32 1
  store i64 2, ptr %448, align 4
  %449 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %446, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %383, %"github.com/goplus/llgo/internal/runtime.String" %445, %"github.com/goplus/llgo/internal/runtime.String" %449, ptr %409, %"github.com/goplus/llgo/internal/runtime.Slice" %434, %"github.com/goplus/llgo/internal/runtime.Slice" %441)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %450 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %450, i32 0, i32 0
  store ptr @22, ptr %451, align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %450, i32 0, i32 1
  store i64 7, ptr %452, align 4
  %453 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %450, align 8
  %454 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %453, i64 25, i64 8, i64 1, i64 1)
  %455 = load ptr, ptr @"*_llgo_main.T5", align 8
  %456 = icmp eq ptr %455, null
  br i1 %456, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %457 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %454)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %457)
  store ptr %457, ptr @"*_llgo_main.T5", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %458 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 0
  store ptr @25, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 1
  store i64 7, ptr %460, align 4
  %461 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %458, align 8
  %462 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %461, i64 25, i64 24, i64 1, i64 1)
  %463 = load ptr, ptr @_llgo_main.T6, align 8
  %464 = icmp eq ptr %463, null
  br i1 %464, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %462, ptr @_llgo_main.T6, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %465 = load ptr, ptr @_llgo_Pointer, align 8
  %466 = icmp eq ptr %465, null
  br i1 %466, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %467 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %467)
  store ptr %467, ptr @_llgo_Pointer, align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %468 = load ptr, ptr @_llgo_Pointer, align 8
  %469 = load ptr, ptr @_llgo_int, align 8
  %470 = load ptr, ptr @_llgo_Pointer, align 8
  %471 = load ptr, ptr @_llgo_int, align 8
  %472 = load ptr, ptr @"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw", align 8
  %473 = icmp eq ptr %472, null
  br i1 %473, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %474 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %475 = getelementptr ptr, ptr %474, i64 0
  store ptr %470, ptr %475, align 8
  %476 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %476, i32 0, i32 0
  store ptr %474, ptr %477, align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %476, i32 0, i32 1
  store i64 1, ptr %478, align 4
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %476, i32 0, i32 2
  store i64 1, ptr %479, align 4
  %480 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %476, align 8
  %481 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %482 = getelementptr ptr, ptr %481, i64 0
  store ptr %471, ptr %482, align 8
  %483 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, i32 0, i32 0
  store ptr %481, ptr %484, align 8
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, i32 0, i32 1
  store i64 1, ptr %485, align 4
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, i32 0, i32 2
  store i64 1, ptr %486, align 4
  %487 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, align 8
  %488 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %480, %"github.com/goplus/llgo/internal/runtime.Slice" %487, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %488)
  store ptr %488, ptr @"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %489 = load ptr, ptr @"_llgo_func$xDKPBz2TjGWCkfLQLcYQpZXP65A_RCdH__LHR-wvWiw", align 8
  %490 = load ptr, ptr @_llgo_Pointer, align 8
  %491 = load ptr, ptr @_llgo_Pointer, align 8
  %492 = load ptr, ptr @_llgo_int, align 8
  %493 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %493, i32 0, i32 0
  store ptr @26, ptr %494, align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %493, i32 0, i32 1
  store i64 1, ptr %495, align 4
  %496 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %493, align 8
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 0
  store ptr null, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 1
  store i64 0, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %497, align 8
  %501 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %502 = getelementptr ptr, ptr %501, i64 0
  store ptr %491, ptr %502, align 8
  %503 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %503, i32 0, i32 0
  store ptr %501, ptr %504, align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %503, i32 0, i32 1
  store i64 1, ptr %505, align 4
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %503, i32 0, i32 2
  store i64 1, ptr %506, align 4
  %507 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %503, align 8
  %508 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %509 = getelementptr ptr, ptr %508, i64 0
  store ptr %492, ptr %509, align 8
  %510 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %510, i32 0, i32 0
  store ptr %508, ptr %511, align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %510, i32 0, i32 1
  store i64 1, ptr %512, align 4
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %510, i32 0, i32 2
  store i64 1, ptr %513, align 4
  %514 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %510, align 8
  %515 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %507, %"github.com/goplus/llgo/internal/runtime.Slice" %514, i1 false)
  %516 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %496, ptr %515, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %500, i1 false)
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr @27, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 4, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %521, i32 0, i32 0
  store ptr null, ptr %522, align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %521, i32 0, i32 1
  store i64 0, ptr %523, align 4
  %524 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %521, align 8
  %525 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %526 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %520, ptr %525, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %524, i1 false)
  %527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 0
  store ptr @10, ptr %528, align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 1
  store i64 4, ptr %529, align 4
  %530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %527, align 8
  %531 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %532 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %531, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %516, ptr %532, align 8
  %533 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %531, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %526, ptr %533, align 8
  %534 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %534, i32 0, i32 0
  store ptr %531, ptr %535, align 8
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %534, i32 0, i32 1
  store i64 2, ptr %536, align 4
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %534, i32 0, i32 2
  store i64 2, ptr %537, align 4
  %538 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %534, align 8
  %539 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %530, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %538)
  store ptr %539, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  %540 = load ptr, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  br i1 %464, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %541 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 0
  store ptr @11, ptr %542, align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 1
  store i64 6, ptr %543, align 4
  %544 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %541, align 8
  %545 = load ptr, ptr @_llgo_int, align 8
  %546 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %547 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %548 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %544, ptr %548, align 8
  %549 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 1
  store ptr %546, ptr %549, align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %550, align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 3
  store ptr @"main.(*T6).Invoke", ptr %551, align 8
  %552 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %547, align 8
  %553 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %553, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %544, ptr %554, align 8
  %555 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %553, i32 0, i32 1
  store ptr %546, ptr %555, align 8
  %556 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %553, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %556, align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %553, i32 0, i32 3
  store ptr @main.T6.Invoke, ptr %557, align 8
  %558 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %553, align 8
  %559 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %560 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %559, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %558, ptr %560, align 8
  %561 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, i32 0, i32 0
  store ptr %559, ptr %562, align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, i32 0, i32 1
  store i64 1, ptr %563, align 4
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, i32 0, i32 2
  store i64 1, ptr %564, align 4
  %565 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, align 8
  %566 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %567 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %566, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %552, ptr %567, align 8
  %568 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, i32 0, i32 0
  store ptr %566, ptr %569, align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, i32 0, i32 1
  store i64 1, ptr %570, align 4
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, i32 0, i32 2
  store i64 1, ptr %571, align 4
  %572 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, align 8
  %573 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %573, i32 0, i32 0
  store ptr @10, ptr %574, align 8
  %575 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %573, i32 0, i32 1
  store i64 4, ptr %575, align 4
  %576 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %573, align 8
  %577 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %577, i32 0, i32 0
  store ptr @28, ptr %578, align 8
  %579 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %577, i32 0, i32 1
  store i64 2, ptr %579, align 4
  %580 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %577, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %462, %"github.com/goplus/llgo/internal/runtime.String" %576, %"github.com/goplus/llgo/internal/runtime.String" %580, ptr %540, %"github.com/goplus/llgo/internal/runtime.Slice" %565, %"github.com/goplus/llgo/internal/runtime.Slice" %572)
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %581 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %581, i32 0, i32 0
  store ptr @25, ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %581, i32 0, i32 1
  store i64 7, ptr %583, align 4
  %584 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %581, align 8
  %585 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %584, i64 25, i64 24, i64 1, i64 1)
  %586 = load ptr, ptr @"*_llgo_main.T6", align 8
  %587 = icmp eq ptr %586, null
  br i1 %587, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %588 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %585)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %588)
  store ptr %588, ptr @"*_llgo_main.T6", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %589 = load ptr, ptr @_llgo_int, align 8
  %590 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %591 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %592 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %594 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %594, i32 0, i32 0
  store ptr @11, ptr %595, align 8
  %596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %594, i32 0, i32 1
  store i64 6, ptr %596, align 4
  %597 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %594, align 8
  %598 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %598, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %597, ptr %599, align 8
  %600 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %598, i32 0, i32 1
  store ptr %590, ptr %600, align 8
  %601 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %598, align 8
  %602 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 0
  store ptr @12, ptr %603, align 8
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 1
  store i64 6, ptr %604, align 4
  %605 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %602, align 8
  %606 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %606, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %605, ptr %607, align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %606, i32 0, i32 1
  store ptr %591, ptr %608, align 8
  %609 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %606, align 8
  %610 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %611 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %610, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %601, ptr %611, align 8
  %612 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %610, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %609, ptr %612, align 8
  %613 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %613, i32 0, i32 0
  store ptr %610, ptr %614, align 8
  %615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %613, i32 0, i32 1
  store i64 2, ptr %615, align 4
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %613, i32 0, i32 2
  store i64 2, ptr %616, align 4
  %617 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %613, align 8
  %618 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 0
  store ptr @10, ptr %619, align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 1
  store i64 4, ptr %620, align 4
  %621 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %618, align 8
  %622 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %622, i32 0, i32 0
  store ptr null, ptr %623, align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %622, i32 0, i32 1
  store i64 0, ptr %624, align 4
  %625 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %622, align 8
  %626 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %621, %"github.com/goplus/llgo/internal/runtime.String" %625, %"github.com/goplus/llgo/internal/runtime.Slice" %617)
  store ptr %626, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %627 = load ptr, ptr @_llgo_int, align 8
  %628 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %629 = load ptr, ptr @_llgo_main.I, align 8
  %630 = icmp eq ptr %629, null
  br i1 %630, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %631 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %631, i32 0, i32 0
  store ptr @11, ptr %632, align 8
  %633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %631, i32 0, i32 1
  store i64 6, ptr %633, align 4
  %634 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %631, align 8
  %635 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %636 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %635, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %634, ptr %636, align 8
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %635, i32 0, i32 1
  store ptr %628, ptr %637, align 8
  %638 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %635, align 8
  %639 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %640 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %639, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %638, ptr %640, align 8
  %641 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %642 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %641, i32 0, i32 0
  store ptr %639, ptr %642, align 8
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %641, i32 0, i32 1
  store i64 1, ptr %643, align 4
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %641, i32 0, i32 2
  store i64 1, ptr %644, align 4
  %645 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %641, align 8
  %646 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %646, i32 0, i32 0
  store ptr @10, ptr %647, align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %646, i32 0, i32 1
  store i64 4, ptr %648, align 4
  %649 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %646, align 8
  %650 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %650, i32 0, i32 0
  store ptr @30, ptr %651, align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %650, i32 0, i32 1
  store i64 6, ptr %652, align 4
  %653 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %650, align 8
  %654 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %649, %"github.com/goplus/llgo/internal/runtime.String" %653, %"github.com/goplus/llgo/internal/runtime.Slice" %645)
  store ptr %654, ptr @_llgo_main.I, align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %655 = load ptr, ptr @_llgo_any, align 8
  %656 = icmp eq ptr %655, null
  br i1 %656, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %657 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %658 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %658, i32 0, i32 0
  store ptr %657, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %658, i32 0, i32 1
  store i64 0, ptr %660, align 4
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %658, i32 0, i32 2
  store i64 0, ptr %661, align 4
  %662 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %658, align 8
  %663 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %663, i32 0, i32 0
  store ptr @10, ptr %664, align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %663, i32 0, i32 1
  store i64 4, ptr %665, align 4
  %666 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %663, align 8
  %667 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %668 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %667, i32 0, i32 0
  store ptr null, ptr %668, align 8
  %669 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %667, i32 0, i32 1
  store i64 0, ptr %669, align 4
  %670 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %667, align 8
  %671 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %666, %"github.com/goplus/llgo/internal/runtime.String" %670, %"github.com/goplus/llgo/internal/runtime.Slice" %662)
  store ptr %671, ptr @_llgo_any, align 8
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
