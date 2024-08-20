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
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [1 x i8] c"s", align 1
@9 = private unnamed_addr constant [4 x i8] c"main", align 1
@10 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [1 x i8] c"T", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null, align 8
@"*_llgo_main.T" = linkonce global ptr null, align 8
@_llgo_main.T1 = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [2 x i8] c"T1", align 1
@"*_llgo_main.T1" = linkonce global ptr null, align 8
@_llgo_main.T2 = linkonce global ptr null, align 8
@_llgo_float64 = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [2 x i8] c"T2", align 1
@"*_llgo_main.T2" = linkonce global ptr null, align 8
@_llgo_main.T3 = linkonce global ptr null, align 8
@_llgo_int8 = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [2 x i8] c"T3", align 1
@"*_llgo_main.T3" = linkonce global ptr null, align 8
@_llgo_main.T4 = linkonce global ptr null, align 8
@"[1]_llgo_int" = linkonce global ptr null, align 8
@16 = private unnamed_addr constant [2 x i8] c"T4", align 1
@"*_llgo_main.T4" = linkonce global ptr null, align 8
@_llgo_main.T5 = linkonce global ptr null, align 8
@"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U" = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [1 x i8] c"n", align 1
@18 = private unnamed_addr constant [2 x i8] c"T5", align 1
@"*_llgo_main.T5" = linkonce global ptr null, align 8
@_llgo_main.T6 = linkonce global ptr null, align 8
@"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [1 x i8] c"f", align 1
@20 = private unnamed_addr constant [4 x i8] c"data", align 1
@21 = private unnamed_addr constant [2 x i8] c"T6", align 1
@"*_llgo_main.T6" = linkonce global ptr null, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [5 x i8] c"world", align 1
@_llgo_main.I = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@24 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
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
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %148, i64 16)
  %150 = getelementptr inbounds %main.T, ptr %149, i32 0, i32 0
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 0
  store ptr @22, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 1
  store i64 5, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %151, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %154, ptr %150, align 8
  %155 = load %main.T, ptr %149, align 8
  %156 = load ptr, ptr @_llgo_main.T, align 8
  %157 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %155, ptr %157, align 8
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %158, i32 0, i32 0
  store ptr %156, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %158, i32 0, i32 1
  store ptr %157, ptr %160, align 8
  %161 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %158, align 8
  %162 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %161, 0
  %163 = load ptr, ptr @_llgo_main.I, align 8
  %164 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %163, ptr %162)
  br i1 %164, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %165 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %161, 1
  %166 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %167 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %166, ptr %162)
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %168, i32 0, i32 0
  store ptr %167, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %168, i32 0, i32 1
  store ptr %165, ptr %170, align 8
  %171 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %168, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %171)
  %172 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %161, 0
  %173 = load ptr, ptr @_llgo_any, align 8
  %174 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %173, ptr %172)
  br i1 %174, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 0
  store ptr @24, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 1
  store i64 21, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %175, align 8
  %179 = load ptr, ptr @_llgo_string, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %178, ptr %180, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %181, i32 0, i32 0
  store ptr %179, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %181, i32 0, i32 1
  store ptr %180, ptr %183, align 8
  %184 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %181, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %184)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %185 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %161, 1
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %186, i32 0, i32 0
  store ptr %172, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %186, i32 0, i32 1
  store ptr %185, ptr %188, align 8
  %189 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %186, align 8
  %190 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %189, 0
  %191 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %192 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %191, ptr %190)
  br i1 %192, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %193 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 0
  store ptr @24, ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 1
  store i64 21, ptr %195, align 4
  %196 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %193, align 8
  %197 = load ptr, ptr @_llgo_string, align 8
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %196, ptr %198, align 8
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %199, i32 0, i32 0
  store ptr %197, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %199, i32 0, i32 1
  store ptr %198, ptr %201, align 8
  %202 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %199, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %202)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %203 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %189, 1
  %204 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %205 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %204, ptr %190)
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %206, i32 0, i32 0
  store ptr %205, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %206, i32 0, i32 1
  store ptr %203, ptr %208, align 8
  %209 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %206, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %209)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %210 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 0
  store ptr @24, ptr %211, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 1
  store i64 21, ptr %212, align 4
  %213 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %210, align 8
  %214 = load ptr, ptr @_llgo_string, align 8
  %215 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %213, ptr %215, align 8
  %216 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %216, i32 0, i32 0
  store ptr %214, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %216, i32 0, i32 1
  store ptr %215, ptr %218, align 8
  %219 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %216, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %219)
  unreachable
}

define i64 @"main.main$1"() {
_llgo_0:
  ret i64 400
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 1, i64 2)
  %1 = load ptr, ptr @_llgo_main.T, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @8, ptr %4, align 8
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
  store ptr @9, ptr %14, align 8
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
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @10, ptr %27, align 8
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
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %35, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %36 = load ptr, ptr @_llgo_int, align 8
  %37 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 1
  store i64 0, ptr %42, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 2
  store i64 0, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %46 = getelementptr ptr, ptr %45, i64 0
  store ptr %36, ptr %46, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 0
  store ptr %45, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 1
  store i64 1, ptr %49, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 2
  store i64 1, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %44, %"github.com/goplus/llgo/internal/runtime.Slice" %51, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %52)
  store ptr %52, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %53 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %54 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %29, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 1
  store ptr %53, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %58, align 8
  %59 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %54, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %29, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 1
  store ptr %53, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %64, align 8
  %65 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %60, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @11, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 6, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 0
  store ptr %72, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 1
  store i64 0, ptr %75, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 2
  store i64 0, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, align 8
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 0
  store ptr %78, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 1
  store i64 0, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 2
  store i64 0, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, align 8
  %84 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %77, %"github.com/goplus/llgo/internal/runtime.Slice" %83, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %84)
  store ptr %84, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %85 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %86 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %86, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %69, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %86, i32 0, i32 1
  store ptr %85, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %86, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %86, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %90, align 8
  %91 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %86, align 8
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %93 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %92, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %65, ptr %93, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 0
  store ptr %92, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 1
  store i64 1, ptr %96, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 2
  store i64 1, ptr %97, align 4
  %98 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %100 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %99, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %59, ptr %100, align 8
  %101 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %99, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %91, ptr %101, align 8
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 0
  store ptr %99, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 1
  store i64 2, ptr %104, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 2
  store i64 2, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 0
  store ptr @9, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 1
  store i64 4, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %107, align 8
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 0
  store ptr @12, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 1
  store i64 1, ptr %113, align 4
  %114 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %111, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %110, %"github.com/goplus/llgo/internal/runtime.String" %114, ptr %25, %"github.com/goplus/llgo/internal/runtime.Slice" %98, %"github.com/goplus/llgo/internal/runtime.Slice" %106)
  br label %_llgo_4

_llgo_11:                                         ; preds = %_llgo_4
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 0
  store ptr @10, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 1
  store i64 6, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %115, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %119, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %118, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %119, i32 0, i32 1
  store ptr %32, ptr %121, align 8
  %122 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %119, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %124 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %123, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %122, ptr %124, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 0
  store ptr %123, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 1
  store i64 1, ptr %127, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 2
  store i64 1, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, align 8
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 0
  store ptr @9, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 1
  store i64 4, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %130, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 0
  store ptr null, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 1
  store i64 0, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %134, align 8
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %133, %"github.com/goplus/llgo/internal/runtime.String" %137, %"github.com/goplus/llgo/internal/runtime.Slice" %129)
  store ptr %138, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_4
  %139 = load ptr, ptr @"*_llgo_main.T", align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %141)
  store ptr %141, ptr @"*_llgo_main.T", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 8, i64 1, i64 1)
  %143 = load ptr, ptr @_llgo_main.T1, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %142, ptr @_llgo_main.T1, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %145 = load ptr, ptr @_llgo_int, align 8
  br i1 %144, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %146 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %146, i32 0, i32 0
  store ptr @10, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %146, i32 0, i32 1
  store i64 6, ptr %148, align 4
  %149 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %146, align 8
  %150 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %151 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %149, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 1
  store ptr %150, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %154, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %155, align 8
  %156 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %151, align 8
  %157 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %149, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 1
  store ptr %150, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %161, align 8
  %162 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %157, align 8
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %164 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %162, ptr %164, align 8
  %165 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, i32 0, i32 0
  store ptr %163, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, i32 0, i32 1
  store i64 1, ptr %167, align 4
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, i32 0, i32 2
  store i64 1, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, align 8
  %170 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %171 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %170, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %156, ptr %171, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 0
  store ptr %170, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 1
  store i64 1, ptr %174, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 2
  store i64 1, ptr %175, align 4
  %176 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, align 8
  %177 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 0
  store ptr @9, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 1
  store i64 4, ptr %179, align 4
  %180 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %177, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 0
  store ptr @13, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 1
  store i64 2, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %181, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %142, %"github.com/goplus/llgo/internal/runtime.String" %180, %"github.com/goplus/llgo/internal/runtime.String" %184, ptr %145, %"github.com/goplus/llgo/internal/runtime.Slice" %169, %"github.com/goplus/llgo/internal/runtime.Slice" %176)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %185 = load ptr, ptr @"*_llgo_main.T1", align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %187 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %142)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %187)
  store ptr %187, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %188 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 8, i64 1, i64 1)
  %189 = load ptr, ptr @_llgo_main.T2, align 8
  %190 = icmp eq ptr %189, null
  br i1 %190, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %188, ptr @_llgo_main.T2, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %191 = load ptr, ptr @_llgo_float64, align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %193 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 46)
  store ptr %193, ptr @_llgo_float64, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %194 = load ptr, ptr @_llgo_float64, align 8
  br i1 %190, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @10, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 6, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %200 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %200, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %198, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %200, i32 0, i32 1
  store ptr %199, ptr %202, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %200, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %200, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %204, align 8
  %205 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %200, align 8
  %206 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %206, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %198, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %206, i32 0, i32 1
  store ptr %199, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %206, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %206, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %210, align 8
  %211 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %206, align 8
  %212 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %213 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %212, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %211, ptr %213, align 8
  %214 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %214, i32 0, i32 0
  store ptr %212, ptr %215, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %214, i32 0, i32 1
  store i64 1, ptr %216, align 4
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %214, i32 0, i32 2
  store i64 1, ptr %217, align 4
  %218 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %214, align 8
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %220 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %219, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %205, ptr %220, align 8
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %221, i32 0, i32 0
  store ptr %219, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %221, i32 0, i32 1
  store i64 1, ptr %223, align 4
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %221, i32 0, i32 2
  store i64 1, ptr %224, align 4
  %225 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %221, align 8
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 0
  store ptr @9, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 1
  store i64 4, ptr %228, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %226, align 8
  %230 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 0
  store ptr @14, ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 1
  store i64 2, ptr %232, align 4
  %233 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %230, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %188, %"github.com/goplus/llgo/internal/runtime.String" %229, %"github.com/goplus/llgo/internal/runtime.String" %233, ptr %194, %"github.com/goplus/llgo/internal/runtime.Slice" %218, %"github.com/goplus/llgo/internal/runtime.Slice" %225)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %234 = load ptr, ptr @"*_llgo_main.T2", align 8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %188)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %236)
  store ptr %236, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %237 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 1, i64 0, i64 1)
  %238 = load ptr, ptr @_llgo_main.T3, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  store ptr %237, ptr @_llgo_main.T3, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %240 = load ptr, ptr @_llgo_int8, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %242, ptr @_llgo_int8, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %243 = load ptr, ptr @_llgo_int8, align 8
  br i1 %239, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 0
  store ptr @10, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 1
  store i64 6, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %244, align 8
  %248 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %249 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %249, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %247, ptr %250, align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %249, i32 0, i32 1
  store ptr %248, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %249, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %249, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %253, align 8
  %254 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %249, align 8
  %255 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %256 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %255, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %254, ptr %256, align 8
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 0
  store ptr %255, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 1
  store i64 1, ptr %259, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 2
  store i64 1, ptr %260, align 4
  %261 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, align 8
  %262 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 0
  store ptr @9, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 1
  store i64 4, ptr %264, align 4
  %265 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %262, align 8
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 0
  store ptr @15, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 1
  store i64 2, ptr %268, align 4
  %269 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %266, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %237, %"github.com/goplus/llgo/internal/runtime.String" %265, %"github.com/goplus/llgo/internal/runtime.String" %269, ptr %243, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %261)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %270 = load ptr, ptr @"*_llgo_main.T3", align 8
  %271 = icmp eq ptr %270, null
  br i1 %271, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %272 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %237)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %272)
  store ptr %272, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 8, i64 1, i64 1)
  %274 = load ptr, ptr @_llgo_main.T4, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %273, ptr @_llgo_main.T4, align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %276 = load ptr, ptr @_llgo_int, align 8
  %277 = load ptr, ptr @"[1]_llgo_int", align 8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %279 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %280 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %279)
  store ptr %280, ptr @"[1]_llgo_int", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %281 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %275, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 0
  store ptr @10, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 1
  store i64 6, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %282, align 8
  %286 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %287 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %285, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 1
  store ptr %286, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 3
  store ptr @"main.(*T4).Invoke", ptr %291, align 8
  %292 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %287, align 8
  %293 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %285, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 1
  store ptr %286, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 2
  store ptr @"main.(*T4).Invoke", ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 3
  store ptr @main.T4.Invoke, ptr %297, align 8
  %298 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %293, align 8
  %299 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %300 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %298, ptr %300, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, i32 0, i32 0
  store ptr %299, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, i32 0, i32 1
  store i64 1, ptr %303, align 4
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, i32 0, i32 2
  store i64 1, ptr %304, align 4
  %305 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, align 8
  %306 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %307 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %306, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %292, ptr %307, align 8
  %308 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, i32 0, i32 0
  store ptr %306, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, i32 0, i32 1
  store i64 1, ptr %310, align 4
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, i32 0, i32 2
  store i64 1, ptr %311, align 4
  %312 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, align 8
  %313 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 0
  store ptr @9, ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 1
  store i64 4, ptr %315, align 4
  %316 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %313, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 0
  store ptr @16, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 1
  store i64 2, ptr %319, align 4
  %320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %317, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %273, %"github.com/goplus/llgo/internal/runtime.String" %316, %"github.com/goplus/llgo/internal/runtime.String" %320, ptr %281, %"github.com/goplus/llgo/internal/runtime.Slice" %305, %"github.com/goplus/llgo/internal/runtime.Slice" %312)
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %321 = load ptr, ptr @"*_llgo_main.T4", align 8
  %322 = icmp eq ptr %321, null
  br i1 %322, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %323 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %273)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %323)
  store ptr %323, ptr @"*_llgo_main.T4", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %324 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 8, i64 1, i64 1)
  %325 = load ptr, ptr @_llgo_main.T5, align 8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  store ptr %324, ptr @_llgo_main.T5, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %327 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 0
  store ptr @17, ptr %328, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 1
  store i64 1, ptr %329, align 4
  %330 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %327, align 8
  %331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 0
  store ptr null, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 1
  store i64 0, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %331, align 8
  %335 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %336 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %330, ptr %335, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %334, i1 false)
  %337 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 0
  store ptr @9, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 1
  store i64 4, ptr %339, align 4
  %340 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %337, align 8
  %341 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %342 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %336, ptr %342, align 8
  %343 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %343, i32 0, i32 0
  store ptr %341, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %343, i32 0, i32 1
  store i64 1, ptr %345, align 4
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %343, i32 0, i32 2
  store i64 1, ptr %346, align 4
  %347 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %343, align 8
  %348 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %340, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %347)
  store ptr %348, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %349 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %326, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %350 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %350, i32 0, i32 0
  store ptr @10, ptr %351, align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %350, i32 0, i32 1
  store i64 6, ptr %352, align 4
  %353 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %350, align 8
  %354 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %355 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %353, ptr %356, align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 1
  store ptr %354, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %358, align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 3
  store ptr @"main.(*T5).Invoke", ptr %359, align 8
  %360 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %355, align 8
  %361 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %361, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %353, ptr %362, align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %361, i32 0, i32 1
  store ptr %354, ptr %363, align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %361, i32 0, i32 2
  store ptr @"main.(*T5).Invoke", ptr %364, align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %361, i32 0, i32 3
  store ptr @main.T5.Invoke, ptr %365, align 8
  %366 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %361, align 8
  %367 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %368 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %367, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %366, ptr %368, align 8
  %369 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %369, i32 0, i32 0
  store ptr %367, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %369, i32 0, i32 1
  store i64 1, ptr %371, align 4
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %369, i32 0, i32 2
  store i64 1, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %369, align 8
  %374 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %375 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %360, ptr %375, align 8
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %376, i32 0, i32 0
  store ptr %374, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %376, i32 0, i32 1
  store i64 1, ptr %378, align 4
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %376, i32 0, i32 2
  store i64 1, ptr %379, align 4
  %380 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %376, align 8
  %381 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 0
  store ptr @9, ptr %382, align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 1
  store i64 4, ptr %383, align 4
  %384 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %381, align 8
  %385 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %385, i32 0, i32 0
  store ptr @18, ptr %386, align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %385, i32 0, i32 1
  store i64 2, ptr %387, align 4
  %388 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %385, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %324, %"github.com/goplus/llgo/internal/runtime.String" %384, %"github.com/goplus/llgo/internal/runtime.String" %388, ptr %349, %"github.com/goplus/llgo/internal/runtime.Slice" %373, %"github.com/goplus/llgo/internal/runtime.Slice" %380)
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %389 = load ptr, ptr @"*_llgo_main.T5", align 8
  %390 = icmp eq ptr %389, null
  br i1 %390, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %391 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %324)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %391)
  store ptr %391, ptr @"*_llgo_main.T5", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %392 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 24, i64 1, i64 1)
  %393 = load ptr, ptr @_llgo_main.T6, align 8
  %394 = icmp eq ptr %393, null
  br i1 %394, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  store ptr %392, ptr @_llgo_main.T6, align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %395 = load ptr, ptr @_llgo_Pointer, align 8
  %396 = icmp eq ptr %395, null
  br i1 %396, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %397 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %397)
  store ptr %397, ptr @_llgo_Pointer, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %398 = load ptr, ptr @_llgo_Pointer, align 8
  %399 = load ptr, ptr @_llgo_int, align 8
  %400 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %400, i32 0, i32 0
  store ptr @19, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %400, i32 0, i32 1
  store i64 1, ptr %402, align 4
  %403 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %400, align 8
  %404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 0
  store ptr null, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 1
  store i64 0, ptr %406, align 4
  %407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %404, align 8
  %408 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %409 = getelementptr ptr, ptr %408, i64 0
  store ptr %398, ptr %409, align 8
  %410 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %410, i32 0, i32 0
  store ptr %408, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %410, i32 0, i32 1
  store i64 1, ptr %412, align 4
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %410, i32 0, i32 2
  store i64 1, ptr %413, align 4
  %414 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %410, align 8
  %415 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %416 = getelementptr ptr, ptr %415, i64 0
  store ptr %399, ptr %416, align 8
  %417 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, i32 0, i32 0
  store ptr %415, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, i32 0, i32 1
  store i64 1, ptr %419, align 4
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, i32 0, i32 2
  store i64 1, ptr %420, align 4
  %421 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, align 8
  %422 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %414, %"github.com/goplus/llgo/internal/runtime.Slice" %421, i1 false)
  %423 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %403, ptr %422, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %407, i1 false)
  %424 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %424, i32 0, i32 0
  store ptr @20, ptr %425, align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %424, i32 0, i32 1
  store i64 4, ptr %426, align 4
  %427 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %424, align 8
  %428 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %428, i32 0, i32 0
  store ptr null, ptr %429, align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %428, i32 0, i32 1
  store i64 0, ptr %430, align 4
  %431 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %428, align 8
  %432 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %433 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %427, ptr %432, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %431, i1 false)
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 0
  store ptr @9, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 1
  store i64 4, ptr %436, align 4
  %437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %434, align 8
  %438 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %439 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %438, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %423, ptr %439, align 8
  %440 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %438, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %433, ptr %440, align 8
  %441 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 0
  store ptr %438, ptr %442, align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 1
  store i64 2, ptr %443, align 4
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 2
  store i64 2, ptr %444, align 4
  %445 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, align 8
  %446 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %437, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %445)
  store ptr %446, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  %447 = load ptr, ptr @"main.struct$2bSfJcCYDdttnIT-JASAjsTNUZvojBt4mPXFJdH4M10", align 8
  br i1 %394, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %448 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %448, i32 0, i32 0
  store ptr @10, ptr %449, align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %448, i32 0, i32 1
  store i64 6, ptr %450, align 4
  %451 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %448, align 8
  %452 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %453 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %453, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %451, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %453, i32 0, i32 1
  store ptr %452, ptr %455, align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %453, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %456, align 8
  %457 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %453, i32 0, i32 3
  store ptr @"main.(*T6).Invoke", ptr %457, align 8
  %458 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %453, align 8
  %459 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %459, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %451, ptr %460, align 8
  %461 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %459, i32 0, i32 1
  store ptr %452, ptr %461, align 8
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %459, i32 0, i32 2
  store ptr @"main.(*T6).Invoke", ptr %462, align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %459, i32 0, i32 3
  store ptr @main.T6.Invoke, ptr %463, align 8
  %464 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %459, align 8
  %465 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %466 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %465, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %464, ptr %466, align 8
  %467 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %468 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, i32 0, i32 0
  store ptr %465, ptr %468, align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, i32 0, i32 1
  store i64 1, ptr %469, align 4
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, i32 0, i32 2
  store i64 1, ptr %470, align 4
  %471 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %467, align 8
  %472 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %473 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %472, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %458, ptr %473, align 8
  %474 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, i32 0, i32 0
  store ptr %472, ptr %475, align 8
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, i32 0, i32 1
  store i64 1, ptr %476, align 4
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, i32 0, i32 2
  store i64 1, ptr %477, align 4
  %478 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %474, align 8
  %479 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %479, i32 0, i32 0
  store ptr @9, ptr %480, align 8
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %479, i32 0, i32 1
  store i64 4, ptr %481, align 4
  %482 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %479, align 8
  %483 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %483, i32 0, i32 0
  store ptr @21, ptr %484, align 8
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %483, i32 0, i32 1
  store i64 2, ptr %485, align 4
  %486 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %483, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %392, %"github.com/goplus/llgo/internal/runtime.String" %482, %"github.com/goplus/llgo/internal/runtime.String" %486, ptr %447, %"github.com/goplus/llgo/internal/runtime.Slice" %471, %"github.com/goplus/llgo/internal/runtime.Slice" %478)
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %487 = load ptr, ptr @"*_llgo_main.T6", align 8
  %488 = icmp eq ptr %487, null
  br i1 %488, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %489 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %392)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %489)
  store ptr %489, ptr @"*_llgo_main.T6", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %490 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %491 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %492 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %493 = icmp eq ptr %492, null
  br i1 %493, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %494 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %494, i32 0, i32 0
  store ptr @10, ptr %495, align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %494, i32 0, i32 1
  store i64 6, ptr %496, align 4
  %497 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %494, align 8
  %498 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %498, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %497, ptr %499, align 8
  %500 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %498, i32 0, i32 1
  store ptr %490, ptr %500, align 8
  %501 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %498, align 8
  %502 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %502, i32 0, i32 0
  store ptr @11, ptr %503, align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %502, i32 0, i32 1
  store i64 6, ptr %504, align 4
  %505 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %502, align 8
  %506 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %506, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %505, ptr %507, align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %506, i32 0, i32 1
  store ptr %491, ptr %508, align 8
  %509 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %506, align 8
  %510 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %511 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %510, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %501, ptr %511, align 8
  %512 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %510, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %509, ptr %512, align 8
  %513 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %513, i32 0, i32 0
  store ptr %510, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %513, i32 0, i32 1
  store i64 2, ptr %515, align 4
  %516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %513, i32 0, i32 2
  store i64 2, ptr %516, align 4
  %517 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %513, align 8
  %518 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 0
  store ptr @9, ptr %519, align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 1
  store i64 4, ptr %520, align 4
  %521 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %518, align 8
  %522 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 0
  store ptr null, ptr %523, align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 1
  store i64 0, ptr %524, align 4
  %525 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %522, align 8
  %526 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %521, %"github.com/goplus/llgo/internal/runtime.String" %525, %"github.com/goplus/llgo/internal/runtime.Slice" %517)
  store ptr %526, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %527 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %528 = load ptr, ptr @_llgo_main.I, align 8
  %529 = icmp eq ptr %528, null
  br i1 %529, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %530 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %530, i32 0, i32 0
  store ptr @10, ptr %531, align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %530, i32 0, i32 1
  store i64 6, ptr %532, align 4
  %533 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %530, align 8
  %534 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %534, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %533, ptr %535, align 8
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %534, i32 0, i32 1
  store ptr %527, ptr %536, align 8
  %537 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %534, align 8
  %538 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %539 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %538, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %537, ptr %539, align 8
  %540 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, i32 0, i32 0
  store ptr %538, ptr %541, align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, i32 0, i32 1
  store i64 1, ptr %542, align 4
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, i32 0, i32 2
  store i64 1, ptr %543, align 4
  %544 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, align 8
  %545 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 0
  store ptr @9, ptr %546, align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 1
  store i64 4, ptr %547, align 4
  %548 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %545, align 8
  %549 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %549, i32 0, i32 0
  store ptr @23, ptr %550, align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %549, i32 0, i32 1
  store i64 6, ptr %551, align 4
  %552 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %549, align 8
  %553 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %548, %"github.com/goplus/llgo/internal/runtime.String" %552, %"github.com/goplus/llgo/internal/runtime.Slice" %544)
  store ptr %553, ptr @_llgo_main.I, align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %554 = load ptr, ptr @_llgo_string, align 8
  %555 = icmp eq ptr %554, null
  br i1 %555, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %556 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %556, ptr @_llgo_string, align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %557 = load ptr, ptr @_llgo_any, align 8
  %558 = icmp eq ptr %557, null
  br i1 %558, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %559 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %560 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %561 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %560, i32 0, i32 0
  store ptr %559, ptr %561, align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %560, i32 0, i32 1
  store i64 0, ptr %562, align 4
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %560, i32 0, i32 2
  store i64 0, ptr %563, align 4
  %564 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %560, align 8
  %565 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 0
  store ptr @9, ptr %566, align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 1
  store i64 4, ptr %567, align 4
  %568 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %565, align 8
  %569 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %569, i32 0, i32 0
  store ptr null, ptr %570, align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %569, i32 0, i32 1
  store i64 0, ptr %571, align 4
  %572 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %569, align 8
  %573 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %568, %"github.com/goplus/llgo/internal/runtime.String" %572, %"github.com/goplus/llgo/internal/runtime.Slice" %564)
  store ptr %573, ptr @_llgo_any, align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

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
