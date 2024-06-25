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
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @5, ptr %4, align 8
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
  store ptr @6, ptr %14, align 8
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
  store ptr @7, ptr %27, align 8
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
  store ptr @8, ptr %70, align 8
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
  store ptr @6, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 4, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @9, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 1, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %113, %"github.com/goplus/llgo/internal/runtime.String" %117, ptr %25, %"github.com/goplus/llgo/internal/runtime.Slice" %101, %"github.com/goplus/llgo/internal/runtime.Slice" %109)
  br label %_llgo_4

_llgo_11:                                         ; preds = %_llgo_4
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @7, ptr %119, align 8
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
  store ptr @6, ptr %134, align 8
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
  store ptr @7, ptr %153, align 8
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
  store ptr @6, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 1
  store i64 4, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr @10, ptr %188, align 8
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
  store ptr @7, ptr %208, align 8
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
  store ptr @6, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 1
  store i64 4, ptr %240, align 4
  %241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %238, align 8
  %242 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 0
  store ptr @11, ptr %243, align 8
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
  store ptr @7, ptr %263, align 8
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
  store ptr @6, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 4, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 0
  store ptr @12, ptr %285, align 8
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
  store ptr %290, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %291 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %292 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %293 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %295 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %295, i32 0, i32 0
  store ptr @7, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %295, i32 0, i32 1
  store i64 6, ptr %297, align 4
  %298 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %295, align 8
  %299 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %299, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %298, ptr %300, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %299, i32 0, i32 1
  store ptr %291, ptr %301, align 8
  %302 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %299, align 8
  %303 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %303, i32 0, i32 0
  store ptr @8, ptr %304, align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %303, i32 0, i32 1
  store i64 6, ptr %305, align 4
  %306 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %303, align 8
  %307 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %307, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %306, ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %307, i32 0, i32 1
  store ptr %292, ptr %309, align 8
  %310 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %307, align 8
  %311 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %312 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %311, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %302, ptr %312, align 8
  %313 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %311, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %310, ptr %313, align 8
  %314 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %314, i32 0, i32 0
  store ptr %311, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %314, i32 0, i32 1
  store i64 2, ptr %316, align 4
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %314, i32 0, i32 2
  store i64 2, ptr %317, align 4
  %318 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %314, align 8
  %319 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %319, i32 0, i32 0
  store ptr @6, ptr %320, align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %319, i32 0, i32 1
  store i64 4, ptr %321, align 4
  %322 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %319, align 8
  %323 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 0
  store ptr null, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 1
  store i64 0, ptr %325, align 4
  %326 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %323, align 8
  %327 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %322, %"github.com/goplus/llgo/internal/runtime.String" %326, %"github.com/goplus/llgo/internal/runtime.Slice" %318)
  store ptr %327, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %328 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %329 = load ptr, ptr @_llgo_main.I, align 8
  %330 = icmp eq ptr %329, null
  br i1 %330, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 0
  store ptr @7, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 1
  store i64 6, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %331, align 8
  %335 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %335, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %334, ptr %336, align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %335, i32 0, i32 1
  store ptr %328, ptr %337, align 8
  %338 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %335, align 8
  %339 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %340 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %339, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %338, ptr %340, align 8
  %341 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, i32 0, i32 0
  store ptr %339, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, i32 0, i32 1
  store i64 1, ptr %343, align 4
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, i32 0, i32 2
  store i64 1, ptr %344, align 4
  %345 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %341, align 8
  %346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 0
  store ptr @6, ptr %347, align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 1
  store i64 4, ptr %348, align 4
  %349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %346, align 8
  %350 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %350, i32 0, i32 0
  store ptr @14, ptr %351, align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %350, i32 0, i32 1
  store i64 6, ptr %352, align 4
  %353 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %350, align 8
  %354 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %349, %"github.com/goplus/llgo/internal/runtime.String" %353, %"github.com/goplus/llgo/internal/runtime.Slice" %345)
  store ptr %354, ptr @_llgo_main.I, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %355 = load ptr, ptr @_llgo_string, align 8
  %356 = icmp eq ptr %355, null
  br i1 %356, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %357 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %357, ptr @_llgo_string, align 8
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

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

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
