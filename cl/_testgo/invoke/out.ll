; ModuleID = 'main'
source_filename = "main"

%main.T = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
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
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"s", align 1
@6 = private unnamed_addr constant [4 x i8] c"main", align 1
@7 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"T", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null, align 8
@"*_llgo_main.T" = linkonce global ptr null, align 8
@_llgo_main.T1 = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"T1", align 1
@"*_llgo_main.T1" = linkonce global ptr null, align 8
@_llgo_main.T2 = linkonce global ptr null, align 8
@_llgo_float64 = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [2 x i8] c"T2", align 1
@"*_llgo_main.T2" = linkonce global ptr null, align 8
@_llgo_main.T3 = linkonce global ptr null, align 8
@_llgo_int8 = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [2 x i8] c"T3", align 1
@"*_llgo_main.T3" = linkonce global ptr null, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [5 x i8] c"world", align 1
@_llgo_main.I = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@15 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
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
  %29 = inttoptr i64 %27 to ptr
  %30 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %30, ptr %28)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, i32 0, i32 0
  store ptr %31, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, i32 0, i32 1
  store ptr %29, ptr %34, align 8
  %35 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %35)
  %36 = load ptr, ptr @"*_llgo_main.T1", align 8
  %37 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %37, ptr %36)
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %39, i32 0, i32 0
  store ptr %38, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %39, i32 0, i32 1
  store ptr %8, ptr %41, align 8
  %42 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %39, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %42)
  %43 = load double, ptr %9, align 8
  %44 = load ptr, ptr @_llgo_main.T2, align 8
  %45 = bitcast double %43 to i64
  %46 = inttoptr i64 %45 to ptr
  %47 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %47, ptr %44)
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %49, i32 0, i32 0
  store ptr %48, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %49, i32 0, i32 1
  store ptr %46, ptr %51, align 8
  %52 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %49, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %52)
  %53 = load ptr, ptr @"*_llgo_main.T2", align 8
  %54 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %54, ptr %53)
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %56, i32 0, i32 0
  store ptr %55, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %56, i32 0, i32 1
  store ptr %9, ptr %58, align 8
  %59 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %56, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %59)
  %60 = load ptr, ptr @"*_llgo_main.T3", align 8
  %61 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %61, ptr %60)
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %63, i32 0, i32 0
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %63, i32 0, i32 1
  store ptr %10, ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %63, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %66)
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %68 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %68, ptr %67)
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %70, i32 0, i32 0
  store ptr %69, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %70, i32 0, i32 1
  store ptr null, ptr %72, align 8
  %73 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %70, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %73)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %74 = load ptr, ptr @"*_llgo_main.T", align 8
  %75 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %75, ptr %74)
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, i32 0, i32 0
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, i32 0, i32 1
  store ptr %2, ptr %79, align 8
  %80 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %77, align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %80)
  %82 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %80, 1
  %83 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %84 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %83, ptr %81)
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %85, i32 0, i32 0
  store ptr %84, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %85, i32 0, i32 1
  store ptr %82, ptr %87, align 8
  %88 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %85, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %88)
  %89 = alloca %main.T, align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %89, i64 16)
  %91 = getelementptr inbounds %main.T, ptr %90, i32 0, i32 0
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr @13, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 5, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %95, ptr %91, align 8
  %96 = load %main.T, ptr %90, align 8
  %97 = load ptr, ptr @_llgo_main.T, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.T %96, ptr %98, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, i32 0, i32 0
  store ptr %97, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, i32 0, i32 1
  store ptr %98, ptr %101, align 8
  %102 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, align 8
  %103 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %102, 0
  %104 = load ptr, ptr @_llgo_main.I, align 8
  %105 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %104, ptr %103)
  br i1 %105, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %106 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %102, 1
  %107 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %107, ptr %103)
  %109 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %109, i32 0, i32 0
  store ptr %108, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %109, i32 0, i32 1
  store ptr %106, ptr %111, align 8
  %112 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %109, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %112)
  %113 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %102, 0
  %114 = load ptr, ptr @_llgo_any, align 8
  %115 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %114, ptr %113)
  br i1 %115, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @15, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 21, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = load ptr, ptr @_llgo_string, align 8
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %119, ptr %121, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, i32 0, i32 0
  store ptr %120, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, i32 0, i32 1
  store ptr %121, ptr %124, align 8
  %125 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %125)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %126 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %102, 1
  %127 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %127, i32 0, i32 0
  store ptr %113, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %127, i32 0, i32 1
  store ptr %126, ptr %129, align 8
  %130 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %127, align 8
  %131 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %130, 0
  %132 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %133 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %132, ptr %131)
  br i1 %133, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 0
  store ptr @15, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 1
  store i64 21, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %134, align 8
  %138 = load ptr, ptr @_llgo_string, align 8
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %137, ptr %139, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %140, i32 0, i32 0
  store ptr %138, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %140, i32 0, i32 1
  store ptr %139, ptr %142, align 8
  %143 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %140, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %143)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %144 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %130, 1
  %145 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %145, ptr %131)
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %147, i32 0, i32 0
  store ptr %146, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %147, i32 0, i32 1
  store ptr %144, ptr %149, align 8
  %150 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %147, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %150)
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 0
  store ptr @15, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 1
  store i64 21, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %151, align 8
  %155 = load ptr, ptr @_llgo_string, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %154, ptr %156, align 8
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %157, i32 0, i32 0
  store ptr %155, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %157, i32 0, i32 1
  store ptr %156, ptr %159, align 8
  %160 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %157, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %160)
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
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 0, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %10, ptr %6, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %14, i1 false)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @6, ptr %17, align 8
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
  store ptr @7, ptr %30, align 8
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
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %38, i32 0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = or i8 %40, 32
  store i8 %41, ptr %39, align 1
  store ptr %38, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %42 = load ptr, ptr @_llgo_int, align 8
  %43 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 0
  store ptr %45, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 1
  store i64 0, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 2
  store i64 0, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %52 = getelementptr ptr, ptr %51, i64 0
  store ptr %42, ptr %52, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 0
  store ptr %51, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 1
  store i64 1, ptr %55, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 2
  store i64 1, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %50, %"github.com/goplus/llgo/internal/runtime.Slice" %57, i1 false)
  store ptr %58, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %59 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %60 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %32, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 1
  store ptr %59, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %64, align 8
  %65 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %60, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %66, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %32, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %66, i32 0, i32 1
  store ptr %59, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %66, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %66, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %66, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @8, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 6, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 0
  store ptr %78, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 1
  store i64 0, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 2
  store i64 0, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, align 8
  %84 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, i32 0, i32 0
  store ptr %84, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, i32 0, i32 1
  store i64 0, ptr %87, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, i32 0, i32 2
  store i64 0, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %83, %"github.com/goplus/llgo/internal/runtime.Slice" %89, i1 false)
  store ptr %90, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %91 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %92 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %92, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %75, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %92, i32 0, i32 1
  store ptr %91, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %92, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %92, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %96, align 8
  %97 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %92, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %99 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %98, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %71, ptr %99, align 8
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 0
  store ptr %98, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 1
  store i64 1, ptr %102, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 2
  store i64 1, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %106 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %105, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %65, ptr %106, align 8
  %107 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %105, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %97, ptr %107, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 0
  store ptr %105, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 1
  store i64 2, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 2
  store i64 2, ptr %111, align 4
  %112 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, align 8
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 0
  store ptr @6, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 1
  store i64 4, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %113, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 0
  store ptr @9, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 1
  store i64 1, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %117, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %116, %"github.com/goplus/llgo/internal/runtime.String" %120, ptr %28, %"github.com/goplus/llgo/internal/runtime.Slice" %104, %"github.com/goplus/llgo/internal/runtime.Slice" %112)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 0
  store ptr @7, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 1
  store i64 6, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %121, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %125, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %124, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %125, i32 0, i32 1
  store ptr %35, ptr %127, align 8
  %128 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %125, align 8
  %129 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %130 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %129, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %128, ptr %130, align 8
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, i32 0, i32 0
  store ptr %129, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, i32 0, i32 1
  store i64 1, ptr %133, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, i32 0, i32 2
  store i64 1, ptr %134, align 4
  %135 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 0
  store ptr @6, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 1
  store i64 4, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %136, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr null, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 0, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %139, %"github.com/goplus/llgo/internal/runtime.String" %143, %"github.com/goplus/llgo/internal/runtime.Slice" %135)
  store ptr %144, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %145 = load ptr, ptr @"*_llgo_main.T", align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2)
  store ptr %147, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %148 = load ptr, ptr @_llgo_main.T1, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %150 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %150, i32 0, i32 6
  %152 = load i8, ptr %151, align 1
  %153 = or i8 %152, 32
  store i8 %153, ptr %151, align 1
  store ptr %150, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %154 = load ptr, ptr @_llgo_int, align 8
  br i1 %149, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @7, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 6, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %160 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %160, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %158, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %160, i32 0, i32 1
  store ptr %159, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %160, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %160, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %164, align 8
  %165 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %160, align 8
  %166 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %166, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %158, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %166, i32 0, i32 1
  store ptr %159, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %166, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %166, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %170, align 8
  %171 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %166, align 8
  %172 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %173 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %172, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %171, ptr %173, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, i32 0, i32 0
  store ptr %172, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, i32 0, i32 1
  store i64 1, ptr %176, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, i32 0, i32 2
  store i64 1, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, align 8
  %179 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %180 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %179, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %165, ptr %180, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 0
  store ptr %179, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 1
  store i64 1, ptr %183, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 2
  store i64 1, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, align 8
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr @6, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 4, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @10, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 2, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %150, %"github.com/goplus/llgo/internal/runtime.String" %189, %"github.com/goplus/llgo/internal/runtime.String" %193, ptr %154, %"github.com/goplus/llgo/internal/runtime.Slice" %178, %"github.com/goplus/llgo/internal/runtime.Slice" %185)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %194 = load ptr, ptr @"*_llgo_main.T1", align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %196 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %150)
  store ptr %196, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %197 = load ptr, ptr @_llgo_main.T2, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %199 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %199, i32 0, i32 6
  %201 = load i8, ptr %200, align 1
  %202 = or i8 %201, 32
  store i8 %202, ptr %200, align 1
  store ptr %199, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %203 = load ptr, ptr @_llgo_float64, align 8
  %204 = icmp eq ptr %203, null
  br i1 %204, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %205 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %205, i32 0, i32 6
  %207 = load i8, ptr %206, align 1
  %208 = or i8 %207, 32
  store i8 %208, ptr %206, align 1
  store ptr %205, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %209 = load ptr, ptr @_llgo_float64, align 8
  br i1 %198, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %210 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 0
  store ptr @7, ptr %211, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 1
  store i64 6, ptr %212, align 4
  %213 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %210, align 8
  %214 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %215 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %215, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %213, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %215, i32 0, i32 1
  store ptr %214, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %215, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %215, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %219, align 8
  %220 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %215, align 8
  %221 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %213, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 1
  store ptr %214, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %225, align 8
  %226 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %221, align 8
  %227 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %228 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %226, ptr %228, align 8
  %229 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, i32 0, i32 0
  store ptr %227, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, i32 0, i32 1
  store i64 1, ptr %231, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, i32 0, i32 2
  store i64 1, ptr %232, align 4
  %233 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, align 8
  %234 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %235 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %234, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %220, ptr %235, align 8
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
  store ptr @6, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 1
  store i64 4, ptr %243, align 4
  %244 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %241, align 8
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 0
  store ptr @11, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 1
  store i64 2, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %245, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %199, %"github.com/goplus/llgo/internal/runtime.String" %244, %"github.com/goplus/llgo/internal/runtime.String" %248, ptr %209, %"github.com/goplus/llgo/internal/runtime.Slice" %233, %"github.com/goplus/llgo/internal/runtime.Slice" %240)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %249 = load ptr, ptr @"*_llgo_main.T2", align 8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %199)
  store ptr %251, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %252 = load ptr, ptr @_llgo_main.T3, align 8
  %253 = icmp eq ptr %252, null
  br i1 %253, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 0, i64 1)
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %254, i32 0, i32 6
  %256 = load i8, ptr %255, align 1
  %257 = or i8 %256, 32
  store i8 %257, ptr %255, align 1
  store ptr %254, ptr @_llgo_main.T3, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %258 = load ptr, ptr @_llgo_int8, align 8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %260 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %260, i32 0, i32 6
  %262 = load i8, ptr %261, align 1
  %263 = or i8 %262, 32
  store i8 %263, ptr %261, align 1
  store ptr %260, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %264 = load ptr, ptr @_llgo_int8, align 8
  br i1 %253, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %265 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 0
  store ptr @7, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 1
  store i64 6, ptr %267, align 4
  %268 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %265, align 8
  %269 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %270 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %268, ptr %271, align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 1
  store ptr %269, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %274, align 8
  %275 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %270, align 8
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %277 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %276, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %275, ptr %277, align 8
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 0
  store ptr %276, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 1
  store i64 1, ptr %280, align 4
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 2
  store i64 1, ptr %281, align 4
  %282 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, align 8
  %283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 0
  store ptr @6, ptr %284, align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 1
  store i64 4, ptr %285, align 4
  %286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %283, align 8
  %287 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %287, i32 0, i32 0
  store ptr @12, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %287, i32 0, i32 1
  store i64 2, ptr %289, align 4
  %290 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %287, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %254, %"github.com/goplus/llgo/internal/runtime.String" %286, %"github.com/goplus/llgo/internal/runtime.String" %290, ptr %264, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %282)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %291 = load ptr, ptr @"*_llgo_main.T3", align 8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %293 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %254)
  store ptr %293, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %294 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %295 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %296 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %297 = icmp eq ptr %296, null
  br i1 %297, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %298 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 0
  store ptr @7, ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 1
  store i64 6, ptr %300, align 4
  %301 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %298, align 8
  %302 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %302, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %301, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %302, i32 0, i32 1
  store ptr %294, ptr %304, align 8
  %305 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %302, align 8
  %306 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 0
  store ptr @8, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 1
  store i64 6, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %306, align 8
  %310 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %310, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %309, ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %310, i32 0, i32 1
  store ptr %295, ptr %312, align 8
  %313 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %310, align 8
  %314 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %315 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %314, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %305, ptr %315, align 8
  %316 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %314, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %313, ptr %316, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 0
  store ptr %314, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 1
  store i64 2, ptr %319, align 4
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 2
  store i64 2, ptr %320, align 4
  %321 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, align 8
  %322 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %322, i32 0, i32 0
  store ptr @6, ptr %323, align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %322, i32 0, i32 1
  store i64 4, ptr %324, align 4
  %325 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %322, align 8
  %326 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 0
  store ptr null, ptr %327, align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 1
  store i64 0, ptr %328, align 4
  %329 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %326, align 8
  %330 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %325, %"github.com/goplus/llgo/internal/runtime.String" %329, %"github.com/goplus/llgo/internal/runtime.Slice" %321)
  store ptr %330, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %331 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %332 = load ptr, ptr @_llgo_main.I, align 8
  %333 = icmp eq ptr %332, null
  br i1 %333, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %334 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 0
  store ptr @7, ptr %335, align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 1
  store i64 6, ptr %336, align 4
  %337 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %334, align 8
  %338 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %338, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %337, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %338, i32 0, i32 1
  store ptr %331, ptr %340, align 8
  %341 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %338, align 8
  %342 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %343 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %342, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %341, ptr %343, align 8
  %344 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %344, i32 0, i32 0
  store ptr %342, ptr %345, align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %344, i32 0, i32 1
  store i64 1, ptr %346, align 4
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %344, i32 0, i32 2
  store i64 1, ptr %347, align 4
  %348 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %344, align 8
  %349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 0
  store ptr @6, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 1
  store i64 4, ptr %351, align 4
  %352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %349, align 8
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 0
  store ptr @14, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 1
  store i64 6, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %353, align 8
  %357 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %352, %"github.com/goplus/llgo/internal/runtime.String" %356, %"github.com/goplus/llgo/internal/runtime.Slice" %348)
  store ptr %357, ptr @_llgo_main.I, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %358 = load ptr, ptr @_llgo_any, align 8
  %359 = icmp eq ptr %358, null
  br i1 %359, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %360 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %361 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %361, i32 0, i32 0
  store ptr %360, ptr %362, align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %361, i32 0, i32 1
  store i64 0, ptr %363, align 4
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %361, i32 0, i32 2
  store i64 0, ptr %364, align 4
  %365 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %361, align 8
  %366 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 0
  store ptr @6, ptr %367, align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 1
  store i64 4, ptr %368, align 4
  %369 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %366, align 8
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 0
  store ptr null, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 1
  store i64 0, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %370, align 8
  %374 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %369, %"github.com/goplus/llgo/internal/runtime.String" %373, %"github.com/goplus/llgo/internal/runtime.Slice" %365)
  store ptr %374, ptr @_llgo_any, align 8
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
