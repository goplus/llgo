; ModuleID = 'main'
source_filename = "main"

%main.T = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [7 x i8] c"invoke\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"invoke1\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"invoke2\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"invoke3\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@4 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@_llgo_main.T = linkonce global ptr null
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null
@_llgo_string = linkonce global ptr null
@5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@7 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@8 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null
@_llgo_int = linkonce global ptr null
@9 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null
@10 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@11 = private unnamed_addr constant [7 x i8] c"main.T\00", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null
@12 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@13 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"*_llgo_main.T" = linkonce global ptr null
@_llgo_main.T1 = linkonce global ptr null
@15 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@17 = private unnamed_addr constant [8 x i8] c"main.T1\00", align 1
@"*_llgo_main.T1" = linkonce global ptr null
@_llgo_main.T2 = linkonce global ptr null
@_llgo_float64 = linkonce global ptr null
@18 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@19 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@20 = private unnamed_addr constant [8 x i8] c"main.T2\00", align 1
@"*_llgo_main.T2" = linkonce global ptr null
@"*_llgo_main.T3" = linkonce global ptr null
@_llgo_main.T3 = linkonce global ptr null
@_llgo_int8 = linkonce global ptr null
@21 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@22 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@23 = private unnamed_addr constant [8 x i8] c"main.T3\00", align 1
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null
@24 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@25 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@28 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@_llgo_main.I = linkonce global ptr null
@29 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@30 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@31 = private unnamed_addr constant [7 x i8] c"main.I\00", align 1
@32 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@_llgo_any = linkonce global ptr null
@33 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@35 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@36 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1

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
  store ptr @4, ptr %5, align 8
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
  %11 = load %main.T, ptr %2, align 8
  %12 = load ptr, ptr @_llgo_main.T, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %11, ptr %13, align 8
  %14 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %14, ptr %12)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %16, i32 0, i32 1
  store ptr %13, ptr %18, align 8
  %19 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %16, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %19)
  %20 = load ptr, ptr @"*_llgo_main.T", align 8
  %21 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %21, ptr %20)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %23, i32 0, i32 1
  store ptr %2, ptr %25, align 8
  %26 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %23, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %26)
  %27 = load i64, ptr %8, align 4
  %28 = load ptr, ptr @_llgo_main.T1, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %28, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = or i8 %30, 32
  store i8 %31, ptr %29, align 1
  %32 = inttoptr i64 %27 to ptr
  %33 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %33, ptr %28)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i32 0, i32 1
  store ptr %32, ptr %37, align 8
  %38 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %38)
  %39 = load ptr, ptr @"*_llgo_main.T1", align 8
  %40 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %40, ptr %39)
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %42, i32 0, i32 0
  store ptr %41, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %42, i32 0, i32 1
  store ptr %8, ptr %44, align 8
  %45 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %42, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %45)
  %46 = load double, ptr %9, align 8
  %47 = load ptr, ptr @_llgo_main.T2, align 8
  %48 = bitcast double %46 to i64
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %47, i32 0, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = or i8 %50, 32
  store i8 %51, ptr %49, align 1
  %52 = inttoptr i64 %48 to ptr
  %53 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %53, ptr %47)
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %55, i32 0, i32 0
  store ptr %54, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %55, i32 0, i32 1
  store ptr %52, ptr %57, align 8
  %58 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %55, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %58)
  %59 = load ptr, ptr @"*_llgo_main.T2", align 8
  %60 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %60, ptr %59)
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %62, i32 0, i32 0
  store ptr %61, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %62, i32 0, i32 1
  store ptr %9, ptr %64, align 8
  %65 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %62, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %65)
  %66 = load ptr, ptr @"*_llgo_main.T3", align 8
  %67 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %67, ptr %66)
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %69, i32 0, i32 0
  store ptr %68, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %69, i32 0, i32 1
  store ptr %10, ptr %71, align 8
  %72 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %69, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %72)
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %74 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %74, ptr %73)
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %76, i32 0, i32 0
  store ptr %75, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %76, i32 0, i32 1
  store ptr null, ptr %78, align 8
  %79 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %76, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %79)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %80 = load ptr, ptr @"*_llgo_main.T", align 8
  %81 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %81, ptr %80)
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %83, i32 0, i32 0
  store ptr %82, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %83, i32 0, i32 1
  store ptr %2, ptr %85, align 8
  %86 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %83, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %86)
  %88 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %86, 1
  %89 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %89, ptr %87)
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %91, i32 0, i32 0
  store ptr %90, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %91, i32 0, i32 1
  store ptr %88, ptr %93, align 8
  %94 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %91, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %94)
  %95 = alloca %main.T, align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %95, i64 16)
  %97 = getelementptr inbounds %main.T, ptr %96, i32 0, i32 0
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 0
  store ptr @28, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 1
  store i64 5, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %98, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %101, ptr %97, align 8
  %102 = load %main.T, ptr %96, align 8
  %103 = load ptr, ptr @_llgo_main.T, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %102, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %105, i32 0, i32 0
  store ptr %103, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %105, i32 0, i32 1
  store ptr %104, ptr %107, align 8
  %108 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %105, align 8
  %109 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %108, 0
  %110 = load ptr, ptr @_llgo_main.I, align 8
  %111 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %110, ptr %109)
  br i1 %111, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %112 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %108, 1
  %113 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %113, ptr %109)
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, i32 0, i32 0
  store ptr %114, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, i32 0, i32 1
  store ptr %112, ptr %117, align 8
  %118 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %115, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %118)
  %119 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %108, 0
  %120 = load ptr, ptr @_llgo_any, align 8
  br i1 true, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 0
  store ptr @32, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 1
  store i64 21, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %121, align 8
  %125 = load ptr, ptr @_llgo_string, align 8
  %126 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %124, ptr %126, align 8
  %127 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %127, i32 0, i32 0
  store ptr %125, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %127, i32 0, i32 1
  store ptr %126, ptr %129, align 8
  %130 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %127, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %130)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %131 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %108, 1
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, i32 0, i32 0
  store ptr %119, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, i32 0, i32 1
  store ptr %131, ptr %134, align 8
  %135 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, align 8
  %136 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %135, 0
  %137 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %138 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %137, ptr %136)
  br i1 %138, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 0
  store ptr @35, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 1
  store i64 21, ptr %141, align 4
  %142 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %139, align 8
  %143 = load ptr, ptr @_llgo_string, align 8
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %142, ptr %144, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %145, i32 0, i32 0
  store ptr %143, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %145, i32 0, i32 1
  store ptr %144, ptr %147, align 8
  %148 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %145, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %148)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %149 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %135, 1
  %150 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %150, ptr %136)
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %152, i32 0, i32 0
  store ptr %151, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %152, i32 0, i32 1
  store ptr %149, ptr %154, align 8
  %155 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %152, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %155)
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @36, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 21, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = load ptr, ptr @_llgo_string, align 8
  %161 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %161, align 8
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %162, i32 0, i32 0
  store ptr %160, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %162, i32 0, i32 1
  store ptr %161, ptr %164, align 8
  %165 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %162, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %165)
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
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @5, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @6, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 0, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %10, ptr %6, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %14, i1 false)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @7, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 4, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %21 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %20, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %15, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, i32 0, i32 0
  store ptr %20, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, i32 0, i32 1
  store i64 1, ptr %24, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, i32 0, i32 2
  store i64 1, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %19, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %26)
  store ptr %27, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %28 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br i1 %1, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @8, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 6, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = load ptr, ptr @_llgo_int, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_4
  %35 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %36 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_13, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_5
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %38, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %39 = load ptr, ptr @_llgo_int, align 8
  %40 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
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
  store ptr %55, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %56 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %57 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %32, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 1
  store ptr %56, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %61, align 8
  %62 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %57, align 8
  %63 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %32, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 1
  store ptr %56, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %63, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 0
  store ptr @9, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 1
  store i64 6, ptr %71, align 4
  %72 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %69, align 8
  %73 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
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
  store ptr %87, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
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
  store ptr @10, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 4, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @11, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 6, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %113, %"github.com/goplus/llgo/internal/runtime.String" %117, ptr %28, %"github.com/goplus/llgo/internal/runtime.Slice" %101, %"github.com/goplus/llgo/internal/runtime.Slice" %109)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @12, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 6, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %122, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %122, i32 0, i32 1
  store ptr %35, ptr %124, align 8
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
  store ptr @13, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %133, i32 0, i32 1
  store i64 4, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %133, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr @14, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 0, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %136, %"github.com/goplus/llgo/internal/runtime.String" %140, %"github.com/goplus/llgo/internal/runtime.Slice" %132)
  store ptr %141, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %142 = load ptr, ptr @_llgo_main.T, align 8
  %143 = load ptr, ptr @"*_llgo_main.T", align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %142)
  store ptr %145, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %146 = load ptr, ptr @_llgo_main.T1, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  store ptr %148, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %149 = load ptr, ptr @_llgo_int, align 8
  br i1 %147, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 0
  store ptr @15, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 1
  store i64 6, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %150, align 8
  %154 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %155 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %155, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %153, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %155, i32 0, i32 1
  store ptr %154, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %155, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %155, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %159, align 8
  %160 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %155, align 8
  %161 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %153, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 1
  store ptr %154, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %165, align 8
  %166 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %161, align 8
  %167 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %168 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %166, ptr %168, align 8
  %169 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, i32 0, i32 0
  store ptr %167, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, i32 0, i32 1
  store i64 1, ptr %171, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, i32 0, i32 2
  store i64 1, ptr %172, align 4
  %173 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %175 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %174, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %160, ptr %175, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 0
  store ptr %174, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 1
  store i64 1, ptr %178, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 2
  store i64 1, ptr %179, align 4
  %180 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 0
  store ptr @16, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 1
  store i64 4, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %181, align 8
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 0
  store ptr @17, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 1
  store i64 7, ptr %187, align 4
  %188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %185, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %148, %"github.com/goplus/llgo/internal/runtime.String" %184, %"github.com/goplus/llgo/internal/runtime.String" %188, ptr %149, %"github.com/goplus/llgo/internal/runtime.Slice" %173, %"github.com/goplus/llgo/internal/runtime.Slice" %180)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %189 = load ptr, ptr @_llgo_main.T1, align 8
  %190 = load ptr, ptr @"*_llgo_main.T1", align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %189)
  store ptr %192, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %193 = load ptr, ptr @_llgo_main.T2, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  store ptr %195, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %196 = load ptr, ptr @_llgo_float64, align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  store ptr %198, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %199 = load ptr, ptr @_llgo_float64, align 8
  br i1 %194, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %200 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 0
  store ptr @18, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 1
  store i64 6, ptr %202, align 4
  %203 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %200, align 8
  %204 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %205 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %203, ptr %206, align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 1
  store ptr %204, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %209, align 8
  %210 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %205, align 8
  %211 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %211, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %203, ptr %212, align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %211, i32 0, i32 1
  store ptr %204, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %211, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %211, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %215, align 8
  %216 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %211, align 8
  %217 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %218 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %217, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %216, ptr %218, align 8
  %219 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %219, i32 0, i32 0
  store ptr %217, ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %219, i32 0, i32 1
  store i64 1, ptr %221, align 4
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %219, i32 0, i32 2
  store i64 1, ptr %222, align 4
  %223 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %219, align 8
  %224 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %225 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %224, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %210, ptr %225, align 8
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 0
  store ptr %224, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 1
  store i64 1, ptr %228, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 2
  store i64 1, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, align 8
  %231 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 0
  store ptr @19, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 1
  store i64 4, ptr %233, align 4
  %234 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %231, align 8
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr @20, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 7, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %195, %"github.com/goplus/llgo/internal/runtime.String" %234, %"github.com/goplus/llgo/internal/runtime.String" %238, ptr %199, %"github.com/goplus/llgo/internal/runtime.Slice" %223, %"github.com/goplus/llgo/internal/runtime.Slice" %230)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %239 = load ptr, ptr @_llgo_main.T2, align 8
  %240 = load ptr, ptr @"*_llgo_main.T2", align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %239)
  store ptr %242, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %243 = load ptr, ptr @_llgo_main.T3, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 0, i64 1)
  store ptr %245, ptr @_llgo_main.T3, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %246 = load ptr, ptr @_llgo_int8, align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %248 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  store ptr %248, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %249 = load ptr, ptr @_llgo_int8, align 8
  br i1 %244, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 0
  store ptr @21, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 1
  store i64 6, ptr %252, align 4
  %253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %250, align 8
  %254 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %255 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %255, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %253, ptr %256, align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %255, i32 0, i32 1
  store ptr %254, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %255, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %255, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %259, align 8
  %260 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %255, align 8
  %261 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %262 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %260, ptr %262, align 8
  %263 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, i32 0, i32 0
  store ptr %261, ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, i32 0, i32 1
  store i64 1, ptr %265, align 4
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, i32 0, i32 2
  store i64 1, ptr %266, align 4
  %267 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, align 8
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 0
  store ptr @22, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 1
  store i64 4, ptr %270, align 4
  %271 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %268, align 8
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 0
  store ptr @23, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 1
  store i64 7, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %272, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %245, %"github.com/goplus/llgo/internal/runtime.String" %271, %"github.com/goplus/llgo/internal/runtime.String" %275, ptr %249, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %267)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %276 = load ptr, ptr @_llgo_main.T3, align 8
  %277 = load ptr, ptr @"*_llgo_main.T3", align 8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %279 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %276)
  store ptr %279, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %280 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %281 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %282 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 0
  store ptr @24, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 1
  store i64 6, ptr %286, align 4
  %287 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %284, align 8
  %288 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %288, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %287, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %288, i32 0, i32 1
  store ptr %280, ptr %290, align 8
  %291 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %288, align 8
  %292 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 0
  store ptr @25, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 1
  store i64 6, ptr %294, align 4
  %295 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %292, align 8
  %296 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %296, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %295, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %296, i32 0, i32 1
  store ptr %281, ptr %298, align 8
  %299 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %296, align 8
  %300 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %301 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %300, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %291, ptr %301, align 8
  %302 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %300, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %299, ptr %302, align 8
  %303 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %303, i32 0, i32 0
  store ptr %300, ptr %304, align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %303, i32 0, i32 1
  store i64 2, ptr %305, align 4
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %303, i32 0, i32 2
  store i64 2, ptr %306, align 4
  %307 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %303, align 8
  %308 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 0
  store ptr @26, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 1
  store i64 4, ptr %310, align 4
  %311 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %308, align 8
  %312 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %312, i32 0, i32 0
  store ptr @27, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %312, i32 0, i32 1
  store i64 0, ptr %314, align 4
  %315 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %312, align 8
  %316 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %311, %"github.com/goplus/llgo/internal/runtime.String" %315, %"github.com/goplus/llgo/internal/runtime.Slice" %307)
  store ptr %316, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %317 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %318 = load ptr, ptr @_llgo_main.I, align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %320 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 0
  store ptr @29, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 1
  store i64 6, ptr %322, align 4
  %323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %320, align 8
  %324 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %324, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %323, ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %324, i32 0, i32 1
  store ptr %317, ptr %326, align 8
  %327 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %324, align 8
  %328 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %329 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %328, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %327, ptr %329, align 8
  %330 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, i32 0, i32 0
  store ptr %328, ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, i32 0, i32 1
  store i64 1, ptr %332, align 4
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, i32 0, i32 2
  store i64 1, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, align 8
  %335 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %335, i32 0, i32 0
  store ptr @30, ptr %336, align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %335, i32 0, i32 1
  store i64 4, ptr %337, align 4
  %338 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %335, align 8
  %339 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %339, i32 0, i32 0
  store ptr @31, ptr %340, align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %339, i32 0, i32 1
  store i64 6, ptr %341, align 4
  %342 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %339, align 8
  %343 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %338, %"github.com/goplus/llgo/internal/runtime.String" %342, %"github.com/goplus/llgo/internal/runtime.Slice" %334)
  store ptr %343, ptr @_llgo_main.I, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %344 = load ptr, ptr @_llgo_any, align 8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %346 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %347 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 0
  store ptr %346, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 1
  store i64 0, ptr %349, align 4
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 2
  store i64 0, ptr %350, align 4
  %351 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, align 8
  %352 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 0
  store ptr @33, ptr %353, align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 1
  store i64 4, ptr %354, align 4
  %355 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %352, align 8
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 0
  store ptr @34, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 0, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  %360 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %355, %"github.com/goplus/llgo/internal/runtime.String" %359, %"github.com/goplus/llgo/internal/runtime.Slice" %351)
  store ptr %360, ptr @_llgo_any, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")
