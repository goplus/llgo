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
@"*_llgo_main.T3" = linkonce global ptr null, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [5 x i8] c"world", align 1
@_llgo_main.I = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@14 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
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
  store ptr @12, ptr %93, align 8
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
  store ptr @14, ptr %117, align 8
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
  store ptr @14, ptr %135, align 8
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
  store ptr @14, ptr %152, align 8
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
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 1, i64 2)
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %147)
  store ptr %148, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %149 = load ptr, ptr @_llgo_main.T1, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %151, i32 0, i32 6
  %153 = load i8, ptr %152, align 1
  %154 = or i8 %153, 32
  store i8 %154, ptr %152, align 1
  store ptr %151, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %155 = load ptr, ptr @_llgo_int, align 8
  br i1 %150, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @7, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 6, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %161 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 1
  store ptr %160, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %165, align 8
  %166 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %161, align 8
  %167 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 1
  store ptr %160, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %171, align 8
  %172 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %167, align 8
  %173 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %174 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %173, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %172, ptr %174, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 0
  store ptr %173, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 1
  store i64 1, ptr %177, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 2
  store i64 1, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %181 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %180, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %166, ptr %181, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 0
  store ptr %180, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 1
  store i64 1, ptr %184, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 2
  store i64 1, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, align 8
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr @6, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 4, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 0
  store ptr @10, ptr %192, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 1
  store i64 2, ptr %193, align 4
  %194 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %191, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %151, %"github.com/goplus/llgo/internal/runtime.String" %190, %"github.com/goplus/llgo/internal/runtime.String" %194, ptr %155, %"github.com/goplus/llgo/internal/runtime.Slice" %179, %"github.com/goplus/llgo/internal/runtime.Slice" %186)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %195 = load ptr, ptr @"*_llgo_main.T1", align 8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %197)
  store ptr %198, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %199 = load ptr, ptr @_llgo_main.T2, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %201, i32 0, i32 6
  %203 = load i8, ptr %202, align 1
  %204 = or i8 %203, 32
  store i8 %204, ptr %202, align 1
  store ptr %201, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %205 = load ptr, ptr @_llgo_float64, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %207, i32 0, i32 6
  %209 = load i8, ptr %208, align 1
  %210 = or i8 %209, 32
  store i8 %210, ptr %208, align 1
  store ptr %207, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %211 = load ptr, ptr @_llgo_float64, align 8
  br i1 %200, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %212 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %212, i32 0, i32 0
  store ptr @7, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %212, i32 0, i32 1
  store i64 6, ptr %214, align 4
  %215 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %212, align 8
  %216 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %217 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %217, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %215, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %217, i32 0, i32 1
  store ptr %216, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %217, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %217, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %221, align 8
  %222 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %217, align 8
  %223 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %223, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %215, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %223, i32 0, i32 1
  store ptr %216, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %223, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %226, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %223, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %227, align 8
  %228 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %223, align 8
  %229 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %230 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %229, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %228, ptr %230, align 8
  %231 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, i32 0, i32 0
  store ptr %229, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, i32 0, i32 1
  store i64 1, ptr %233, align 4
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, i32 0, i32 2
  store i64 1, ptr %234, align 4
  %235 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, align 8
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %237 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %236, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %222, ptr %237, align 8
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 0
  store ptr %236, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 1
  store i64 1, ptr %240, align 4
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 2
  store i64 1, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, align 8
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 0
  store ptr @6, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 1
  store i64 4, ptr %245, align 4
  %246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %243, align 8
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 0
  store ptr @11, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 1
  store i64 2, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %247, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %201, %"github.com/goplus/llgo/internal/runtime.String" %246, %"github.com/goplus/llgo/internal/runtime.String" %250, ptr %211, %"github.com/goplus/llgo/internal/runtime.Slice" %235, %"github.com/goplus/llgo/internal/runtime.Slice" %242)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %251 = load ptr, ptr @"*_llgo_main.T2", align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %253 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %253)
  store ptr %254, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %255 = load ptr, ptr @"*_llgo_main.T3", align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %257 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 0, i64 1)
  %258 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %257)
  store ptr %258, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %259 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %260 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %261 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %263 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %263, i32 0, i32 0
  store ptr @7, ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %263, i32 0, i32 1
  store i64 6, ptr %265, align 4
  %266 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %263, align 8
  %267 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %267, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %266, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %267, i32 0, i32 1
  store ptr %259, ptr %269, align 8
  %270 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %267, align 8
  %271 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 0
  store ptr @8, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 1
  store i64 6, ptr %273, align 4
  %274 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %271, align 8
  %275 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %275, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %274, ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %275, i32 0, i32 1
  store ptr %260, ptr %277, align 8
  %278 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %275, align 8
  %279 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %280 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %279, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %270, ptr %280, align 8
  %281 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %279, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %278, ptr %281, align 8
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, i32 0, i32 0
  store ptr %279, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, i32 0, i32 1
  store i64 2, ptr %284, align 4
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, i32 0, i32 2
  store i64 2, ptr %285, align 4
  %286 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, align 8
  %287 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %287, i32 0, i32 0
  store ptr @6, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %287, i32 0, i32 1
  store i64 4, ptr %289, align 4
  %290 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %287, align 8
  %291 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %291, i32 0, i32 0
  store ptr null, ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %291, i32 0, i32 1
  store i64 0, ptr %293, align 4
  %294 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %291, align 8
  %295 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %290, %"github.com/goplus/llgo/internal/runtime.String" %294, %"github.com/goplus/llgo/internal/runtime.Slice" %286)
  store ptr %295, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %296 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %297 = load ptr, ptr @_llgo_main.I, align 8
  %298 = icmp eq ptr %297, null
  br i1 %298, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %299 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %299, i32 0, i32 0
  store ptr @7, ptr %300, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %299, i32 0, i32 1
  store i64 6, ptr %301, align 4
  %302 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %299, align 8
  %303 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %303, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %302, ptr %304, align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %303, i32 0, i32 1
  store ptr %296, ptr %305, align 8
  %306 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %303, align 8
  %307 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %308 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %307, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %306, ptr %308, align 8
  %309 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %309, i32 0, i32 0
  store ptr %307, ptr %310, align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %309, i32 0, i32 1
  store i64 1, ptr %311, align 4
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %309, i32 0, i32 2
  store i64 1, ptr %312, align 4
  %313 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %309, align 8
  %314 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 0
  store ptr @6, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 1
  store i64 4, ptr %316, align 4
  %317 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %314, align 8
  %318 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %318, i32 0, i32 0
  store ptr @13, ptr %319, align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %318, i32 0, i32 1
  store i64 6, ptr %320, align 4
  %321 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %318, align 8
  %322 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %317, %"github.com/goplus/llgo/internal/runtime.String" %321, %"github.com/goplus/llgo/internal/runtime.Slice" %313)
  store ptr %322, ptr @_llgo_main.I, align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %323 = load ptr, ptr @_llgo_any, align 8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %325 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %326 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, i32 0, i32 0
  store ptr %325, ptr %327, align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, i32 0, i32 1
  store i64 0, ptr %328, align 4
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, i32 0, i32 2
  store i64 0, ptr %329, align 4
  %330 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, align 8
  %331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 0
  store ptr @6, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 1
  store i64 4, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %331, align 8
  %335 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %335, i32 0, i32 0
  store ptr null, ptr %336, align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %335, i32 0, i32 1
  store i64 0, ptr %337, align 4
  %338 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %335, align 8
  %339 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %334, %"github.com/goplus/llgo/internal/runtime.String" %338, %"github.com/goplus/llgo/internal/runtime.Slice" %330)
  store ptr %339, ptr @_llgo_any, align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
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
