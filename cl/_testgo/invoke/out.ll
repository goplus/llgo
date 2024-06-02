; ModuleID = 'main'
source_filename = "main"

%main.T = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
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
@9 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@10 = private unnamed_addr constant [7 x i8] c"main.T\00", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null
@11 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"*_llgo_main.T" = linkonce global ptr null
@_llgo_main.T1 = linkonce global ptr null
@14 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@15 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@16 = private unnamed_addr constant [8 x i8] c"main.T1\00", align 1
@"*_llgo_main.T1" = linkonce global ptr null
@_llgo_main.T2 = linkonce global ptr null
@_llgo_float64 = linkonce global ptr null
@17 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@18 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@19 = private unnamed_addr constant [8 x i8] c"main.T2\00", align 1
@"*_llgo_main.T2" = linkonce global ptr null
@"*_llgo_main.T3" = linkonce global ptr null
@_llgo_main.T3 = linkonce global ptr null
@_llgo_int8 = linkonce global ptr null
@20 = private unnamed_addr constant [7 x i8] c"Invoke\00", align 1
@21 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@22 = private unnamed_addr constant [8 x i8] c"main.T3\00", align 1

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
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 0
  %2 = getelementptr ptr, ptr %1, i64 3
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceData"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %5 = alloca { ptr, ptr }, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 0
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 1
  store ptr %4, ptr %7, align 8
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
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_main.T, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 1, i64 1)
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

_llgo_6:                                          ; preds = %_llgo_10, %_llgo_4
  %35 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %36 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_11, label %_llgo_12

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
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %70 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %69, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %68, ptr %70, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 0
  store ptr %69, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 1
  store i64 1, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 2
  store i64 1, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %77 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %62, ptr %77, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 0
  store ptr %76, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 1
  store i64 1, ptr %80, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 2
  store i64 1, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, align 8
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @9, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 4, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 0
  store ptr @10, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 1
  store i64 6, ptr %89, align 4
  %90 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %87, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %86, %"github.com/goplus/llgo/internal/runtime.String" %90, ptr %28, %"github.com/goplus/llgo/internal/runtime.Slice" %75, %"github.com/goplus/llgo/internal/runtime.Slice" %82)
  br label %_llgo_6

_llgo_11:                                         ; preds = %_llgo_6
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 0
  store ptr @11, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 1
  store i64 6, ptr %93, align 4
  %94 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %91, align 8
  %95 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %94, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, i32 0, i32 1
  store ptr %35, ptr %97, align 8
  %98 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %100 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %99, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %98, ptr %100, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 0
  store ptr %99, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 1
  store i64 1, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 2
  store i64 1, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
  store ptr @12, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 4, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 0
  store ptr @13, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 0, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %109, %"github.com/goplus/llgo/internal/runtime.String" %113, %"github.com/goplus/llgo/internal/runtime.Slice" %105)
  store ptr %114, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_6
  %115 = load ptr, ptr @_llgo_main.T, align 8
  %116 = load ptr, ptr @"*_llgo_main.T", align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %115)
  store ptr %118, ptr @"*_llgo_main.T", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %119 = load ptr, ptr @_llgo_main.T1, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  store ptr %121, ptr @_llgo_main.T1, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %122 = load ptr, ptr @_llgo_int, align 8
  br i1 %120, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 0
  store ptr @14, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 1
  store i64 6, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %123, align 8
  %127 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %128 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %128, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %126, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %128, i32 0, i32 1
  store ptr %127, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %128, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %128, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %132, align 8
  %133 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %128, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %134, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %126, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %134, i32 0, i32 1
  store ptr %127, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %134, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %134, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %138, align 8
  %139 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %134, align 8
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %141 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %140, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %139, ptr %141, align 8
  %142 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, i32 0, i32 0
  store ptr %140, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, i32 0, i32 1
  store i64 1, ptr %144, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, i32 0, i32 2
  store i64 1, ptr %145, align 4
  %146 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, align 8
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %148 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %147, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %133, ptr %148, align 8
  %149 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, i32 0, i32 0
  store ptr %147, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, i32 0, i32 1
  store i64 1, ptr %151, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, i32 0, i32 2
  store i64 1, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, align 8
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr @15, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 4, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 0
  store ptr @16, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 1
  store i64 7, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %158, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %121, %"github.com/goplus/llgo/internal/runtime.String" %157, %"github.com/goplus/llgo/internal/runtime.String" %161, ptr %122, %"github.com/goplus/llgo/internal/runtime.Slice" %146, %"github.com/goplus/llgo/internal/runtime.Slice" %153)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %162 = load ptr, ptr @_llgo_main.T1, align 8
  %163 = load ptr, ptr @"*_llgo_main.T1", align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %162)
  store ptr %165, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %166 = load ptr, ptr @_llgo_main.T2, align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  store ptr %168, ptr @_llgo_main.T2, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %169 = load ptr, ptr @_llgo_float64, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  store ptr %171, ptr @_llgo_float64, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %172 = load ptr, ptr @_llgo_float64, align 8
  br i1 %167, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %173 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %173, i32 0, i32 0
  store ptr @17, ptr %174, align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %173, i32 0, i32 1
  store i64 6, ptr %175, align 4
  %176 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %173, align 8
  %177 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %178 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %178, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %176, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %178, i32 0, i32 1
  store ptr %177, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %178, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %178, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %182, align 8
  %183 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %178, align 8
  %184 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %184, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %176, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %184, i32 0, i32 1
  store ptr %177, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %184, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %184, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %188, align 8
  %189 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %184, align 8
  %190 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %191 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %190, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %189, ptr %191, align 8
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, i32 0, i32 0
  store ptr %190, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, i32 0, i32 1
  store i64 1, ptr %194, align 4
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, i32 0, i32 2
  store i64 1, ptr %195, align 4
  %196 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %192, align 8
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %198 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %197, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %183, ptr %198, align 8
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, i32 0, i32 0
  store ptr %197, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, i32 0, i32 1
  store i64 1, ptr %201, align 4
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, i32 0, i32 2
  store i64 1, ptr %202, align 4
  %203 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, align 8
  %204 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 0
  store ptr @18, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 1
  store i64 4, ptr %206, align 4
  %207 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %204, align 8
  %208 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %208, i32 0, i32 0
  store ptr @19, ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %208, i32 0, i32 1
  store i64 7, ptr %210, align 4
  %211 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %208, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %168, %"github.com/goplus/llgo/internal/runtime.String" %207, %"github.com/goplus/llgo/internal/runtime.String" %211, ptr %172, %"github.com/goplus/llgo/internal/runtime.Slice" %196, %"github.com/goplus/llgo/internal/runtime.Slice" %203)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %212 = load ptr, ptr @_llgo_main.T2, align 8
  %213 = load ptr, ptr @"*_llgo_main.T2", align 8
  %214 = icmp eq ptr %213, null
  br i1 %214, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %215 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %212)
  store ptr %215, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %216 = load ptr, ptr @_llgo_main.T3, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 0, i64 1)
  store ptr %218, ptr @_llgo_main.T3, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %219 = load ptr, ptr @_llgo_int8, align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %221 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  store ptr %221, ptr @_llgo_int8, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %222 = load ptr, ptr @_llgo_int8, align 8
  br i1 %217, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 0
  store ptr @20, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 1
  store i64 6, ptr %225, align 4
  %226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %223, align 8
  %227 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %228 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %226, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 1
  store ptr %227, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %228, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %232, align 8
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
  %241 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 0
  store ptr @21, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 1
  store i64 4, ptr %243, align 4
  %244 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %241, align 8
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 0
  store ptr @22, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 1
  store i64 7, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %245, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %218, %"github.com/goplus/llgo/internal/runtime.String" %244, %"github.com/goplus/llgo/internal/runtime.String" %248, ptr %222, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %240)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %249 = load ptr, ptr @_llgo_main.T3, align 8
  %250 = load ptr, ptr @"*_llgo_main.T3", align 8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %252 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %249)
  store ptr %252, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
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
