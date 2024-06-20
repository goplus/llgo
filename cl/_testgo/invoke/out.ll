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
@9 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null, align 8
@"*_llgo_main.T" = linkonce global ptr null, align 8
@_llgo_main.T1 = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [7 x i8] c"main.T1", align 1
@"*_llgo_main.T1" = linkonce global ptr null, align 8
@_llgo_main.T2 = linkonce global ptr null, align 8
@_llgo_float64 = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [7 x i8] c"main.T2", align 1
@"*_llgo_main.T2" = linkonce global ptr null, align 8
@"*_llgo_main.T3" = linkonce global ptr null, align 8
@_llgo_main.T3 = linkonce global ptr null, align 8
@_llgo_int8 = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [7 x i8] c"main.T3", align 1
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
  store ptr @13, ptr %99, align 8
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
  %121 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %120, ptr %119)
  br i1 %121, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 0
  store ptr @15, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 1
  store i64 21, ptr %124, align 4
  %125 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %122, align 8
  %126 = load ptr, ptr @_llgo_string, align 8
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %125, ptr %127, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %128, i32 0, i32 0
  store ptr %126, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %128, i32 0, i32 1
  store ptr %127, ptr %130, align 8
  %131 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %128, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %131)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %132 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %108, 1
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, i32 0, i32 0
  store ptr %119, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, i32 0, i32 1
  store ptr %132, ptr %135, align 8
  %136 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, align 8
  %137 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %136, 0
  %138 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %139 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %138, ptr %137)
  br i1 %139, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @15, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 21, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = load ptr, ptr @_llgo_string, align 8
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %143, ptr %145, align 8
  %146 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, i32 0, i32 0
  store ptr %144, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, i32 0, i32 1
  store ptr %145, ptr %148, align 8
  %149 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %149)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %150 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %136, 1
  %151 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %151, ptr %137)
  %153 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %153, i32 0, i32 0
  store ptr %152, ptr %154, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %153, i32 0, i32 1
  store ptr %150, ptr %155, align 8
  %156 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %153, align 8
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" %156)
  call void @main.invoke(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_3
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 0
  store ptr @15, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 1
  store i64 21, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  %161 = load ptr, ptr @_llgo_string, align 8
  %162 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %160, ptr %162, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %163, i32 0, i32 0
  store ptr %161, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %163, i32 0, i32 1
  store ptr %162, ptr %165, align 8
  %166 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %163, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %166)
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
  store ptr %38, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %39 = load ptr, ptr @_llgo_int, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %39, i32 0, i32 6
  %41 = load i8, ptr %40, align 1
  %42 = or i8 %41, 32
  store i8 %42, ptr %40, align 1
  %43 = load ptr, ptr @_llgo_int, align 8
  %44 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 0
  store ptr %46, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 1
  store i64 0, ptr %49, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 2
  store i64 0, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %53 = getelementptr ptr, ptr %52, i64 0
  store ptr %43, ptr %53, align 8
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 0
  store ptr %52, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 1
  store i64 1, ptr %56, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 2
  store i64 1, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %51, %"github.com/goplus/llgo/internal/runtime.Slice" %58, i1 false)
  store ptr %59, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %60 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %61 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %61, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %32, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %61, i32 0, i32 1
  store ptr %60, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %61, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %61, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %61, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %67, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %32, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %67, i32 0, i32 1
  store ptr %60, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %67, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %67, i32 0, i32 3
  store ptr @main.T.Invoke, ptr %71, align 8
  %72 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %67, align 8
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 0
  store ptr @8, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 1
  store i64 6, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %73, align 8
  %77 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 0
  store ptr %79, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 1
  store i64 0, ptr %82, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 2
  store i64 0, ptr %83, align 4
  %84 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, align 8
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, i32 0, i32 0
  store ptr %85, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, i32 0, i32 1
  store i64 0, ptr %88, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, i32 0, i32 2
  store i64 0, ptr %89, align 4
  %90 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, align 8
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %84, %"github.com/goplus/llgo/internal/runtime.Slice" %90, i1 false)
  store ptr %91, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %92 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %93 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %76, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 1
  store ptr %92, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 2
  store ptr @"main.(*T).Method", ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 3
  store ptr @"main.(*T).Method", ptr %97, align 8
  %98 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %93, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %100 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %99, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %72, ptr %100, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 0
  store ptr %99, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 1
  store i64 1, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 2
  store i64 1, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, align 8
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %107 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %106, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %66, ptr %107, align 8
  %108 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %106, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %98, ptr %108, align 8
  %109 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 0
  store ptr %106, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 1
  store i64 2, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 2
  store i64 2, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, align 8
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @6, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 4, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @9, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 6, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %117, %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %28, %"github.com/goplus/llgo/internal/runtime.Slice" %105, %"github.com/goplus/llgo/internal/runtime.Slice" %113)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 0
  store ptr @7, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 1
  store i64 6, ptr %124, align 4
  %125 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %122, align 8
  %126 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %126, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %125, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %126, i32 0, i32 1
  store ptr %35, ptr %128, align 8
  %129 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %126, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %131 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %129, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 0
  store ptr %130, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 1
  store i64 1, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 2
  store i64 1, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr @6, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 4, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr null, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 0, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %140, %"github.com/goplus/llgo/internal/runtime.String" %144, %"github.com/goplus/llgo/internal/runtime.Slice" %136)
  store ptr %145, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %146 = load ptr, ptr @_llgo_main.T, align 8
  %147 = load ptr, ptr @"*_llgo_main.T", align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %146)
  store ptr %149, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %150 = load ptr, ptr @_llgo_main.T1, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  store ptr %152, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %153 = load ptr, ptr @_llgo_main.T1, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %153, i32 0, i32 6
  %155 = load i8, ptr %154, align 1
  %156 = or i8 %155, 32
  store i8 %156, ptr %154, align 1
  %157 = load ptr, ptr @_llgo_int, align 8
  br i1 %151, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 0
  store ptr @7, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 1
  store i64 6, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %158, align 8
  %162 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %163 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %161, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 1
  store ptr %162, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i32 0, i32 3
  store ptr @"main.(*T1).Invoke", ptr %167, align 8
  %168 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %163, align 8
  %169 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %161, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 1
  store ptr %162, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 2
  store ptr @"main.(*T1).Invoke", ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %169, i32 0, i32 3
  store ptr @main.T1.Invoke, ptr %173, align 8
  %174 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %169, align 8
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %176 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %174, ptr %176, align 8
  %177 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, i32 0, i32 0
  store ptr %175, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, i32 0, i32 1
  store i64 1, ptr %179, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, i32 0, i32 2
  store i64 1, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, align 8
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %183 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %182, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %168, ptr %183, align 8
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, i32 0, i32 0
  store ptr %182, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, i32 0, i32 1
  store i64 1, ptr %186, align 4
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, i32 0, i32 2
  store i64 1, ptr %187, align 4
  %188 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 0
  store ptr @6, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 1
  store i64 4, ptr %191, align 4
  %192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %189, align 8
  %193 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 0
  store ptr @10, ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 1
  store i64 7, ptr %195, align 4
  %196 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %193, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %152, %"github.com/goplus/llgo/internal/runtime.String" %192, %"github.com/goplus/llgo/internal/runtime.String" %196, ptr %157, %"github.com/goplus/llgo/internal/runtime.Slice" %181, %"github.com/goplus/llgo/internal/runtime.Slice" %188)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %197 = load ptr, ptr @_llgo_main.T1, align 8
  %198 = load ptr, ptr @"*_llgo_main.T1", align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %200 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %197)
  store ptr %200, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %201 = load ptr, ptr @_llgo_main.T2, align 8
  %202 = icmp eq ptr %201, null
  br i1 %202, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %203 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  store ptr %203, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %204 = load ptr, ptr @_llgo_main.T2, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %204, i32 0, i32 6
  %206 = load i8, ptr %205, align 1
  %207 = or i8 %206, 32
  store i8 %207, ptr %205, align 1
  %208 = load ptr, ptr @_llgo_float64, align 8
  %209 = icmp eq ptr %208, null
  br i1 %209, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %210 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  store ptr %210, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %211 = load ptr, ptr @_llgo_float64, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %211, i32 0, i32 6
  %213 = load i8, ptr %212, align 1
  %214 = or i8 %213, 32
  store i8 %214, ptr %212, align 1
  %215 = load ptr, ptr @_llgo_float64, align 8
  br i1 %202, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %216 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 0
  store ptr @7, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 1
  store i64 6, ptr %218, align 4
  %219 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %216, align 8
  %220 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %221 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %219, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 1
  store ptr %220, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %221, i32 0, i32 3
  store ptr @"main.(*T2).Invoke", ptr %225, align 8
  %226 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %221, align 8
  %227 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %219, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 1
  store ptr %220, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 2
  store ptr @"main.(*T2).Invoke", ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %227, i32 0, i32 3
  store ptr @main.T2.Invoke, ptr %231, align 8
  %232 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %227, align 8
  %233 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %234 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %233, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %232, ptr %234, align 8
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %235, i32 0, i32 0
  store ptr %233, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %235, i32 0, i32 1
  store i64 1, ptr %237, align 4
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %235, i32 0, i32 2
  store i64 1, ptr %238, align 4
  %239 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %235, align 8
  %240 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %241 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %240, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %226, ptr %241, align 8
  %242 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, i32 0, i32 0
  store ptr %240, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, i32 0, i32 1
  store i64 1, ptr %244, align 4
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, i32 0, i32 2
  store i64 1, ptr %245, align 4
  %246 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, align 8
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 0
  store ptr @6, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 1
  store i64 4, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %247, align 8
  %251 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %251, i32 0, i32 0
  store ptr @11, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %251, i32 0, i32 1
  store i64 7, ptr %253, align 4
  %254 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %251, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %203, %"github.com/goplus/llgo/internal/runtime.String" %250, %"github.com/goplus/llgo/internal/runtime.String" %254, ptr %215, %"github.com/goplus/llgo/internal/runtime.Slice" %239, %"github.com/goplus/llgo/internal/runtime.Slice" %246)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %255 = load ptr, ptr @_llgo_main.T2, align 8
  %256 = load ptr, ptr @"*_llgo_main.T2", align 8
  %257 = icmp eq ptr %256, null
  br i1 %257, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %258 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %255)
  store ptr %258, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %259 = load ptr, ptr @_llgo_main.T3, align 8
  %260 = icmp eq ptr %259, null
  br i1 %260, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %261 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 0, i64 1)
  store ptr %261, ptr @_llgo_main.T3, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %262 = load ptr, ptr @_llgo_main.T3, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %262, i32 0, i32 6
  %264 = load i8, ptr %263, align 1
  %265 = or i8 %264, 32
  store i8 %265, ptr %263, align 1
  %266 = load ptr, ptr @_llgo_int8, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %268 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  store ptr %268, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %269 = load ptr, ptr @_llgo_int8, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %269, i32 0, i32 6
  %271 = load i8, ptr %270, align 1
  %272 = or i8 %271, 32
  store i8 %272, ptr %270, align 1
  %273 = load ptr, ptr @_llgo_int8, align 8
  br i1 %260, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %274 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %274, i32 0, i32 0
  store ptr @7, ptr %275, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %274, i32 0, i32 1
  store i64 6, ptr %276, align 4
  %277 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %274, align 8
  %278 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %279 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %277, ptr %280, align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 1
  store ptr %278, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %283, align 8
  %284 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %279, align 8
  %285 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %286 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %285, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %284, ptr %286, align 8
  %287 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, i32 0, i32 0
  store ptr %285, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, i32 0, i32 1
  store i64 1, ptr %289, align 4
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, i32 0, i32 2
  store i64 1, ptr %290, align 4
  %291 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, align 8
  %292 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 0
  store ptr @6, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 1
  store i64 4, ptr %294, align 4
  %295 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %292, align 8
  %296 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %296, i32 0, i32 0
  store ptr @12, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %296, i32 0, i32 1
  store i64 7, ptr %298, align 4
  %299 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %296, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %261, %"github.com/goplus/llgo/internal/runtime.String" %295, %"github.com/goplus/llgo/internal/runtime.String" %299, ptr %273, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %291)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %300 = load ptr, ptr @_llgo_main.T3, align 8
  %301 = load ptr, ptr @"*_llgo_main.T3", align 8
  %302 = icmp eq ptr %301, null
  br i1 %302, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %303 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %300)
  store ptr %303, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %304 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %305 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %306 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %307 = icmp eq ptr %306, null
  br i1 %307, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %308 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 0
  store ptr @7, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 1
  store i64 6, ptr %310, align 4
  %311 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %308, align 8
  %312 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %312, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %311, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %312, i32 0, i32 1
  store ptr %304, ptr %314, align 8
  %315 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %312, align 8
  %316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 0
  store ptr @8, ptr %317, align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 1
  store i64 6, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %316, align 8
  %320 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %320, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %319, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %320, i32 0, i32 1
  store ptr %305, ptr %322, align 8
  %323 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %320, align 8
  %324 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %325 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %324, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %315, ptr %325, align 8
  %326 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %324, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %323, ptr %326, align 8
  %327 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %327, i32 0, i32 0
  store ptr %324, ptr %328, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %327, i32 0, i32 1
  store i64 2, ptr %329, align 4
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %327, i32 0, i32 2
  store i64 2, ptr %330, align 4
  %331 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %327, align 8
  %332 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 0
  store ptr @6, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 1
  store i64 4, ptr %334, align 4
  %335 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %332, align 8
  %336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 0
  store ptr null, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 1
  store i64 0, ptr %338, align 4
  %339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %336, align 8
  %340 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %335, %"github.com/goplus/llgo/internal/runtime.String" %339, %"github.com/goplus/llgo/internal/runtime.Slice" %331)
  store ptr %340, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %341 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %342 = load ptr, ptr @_llgo_main.I, align 8
  %343 = icmp eq ptr %342, null
  br i1 %343, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %344 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %344, i32 0, i32 0
  store ptr @7, ptr %345, align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %344, i32 0, i32 1
  store i64 6, ptr %346, align 4
  %347 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %344, align 8
  %348 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %348, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %347, ptr %349, align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %348, i32 0, i32 1
  store ptr %341, ptr %350, align 8
  %351 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %348, align 8
  %352 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %353 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %352, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %351, ptr %353, align 8
  %354 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, i32 0, i32 0
  store ptr %352, ptr %355, align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, i32 0, i32 1
  store i64 1, ptr %356, align 4
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, i32 0, i32 2
  store i64 1, ptr %357, align 4
  %358 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, align 8
  %359 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 0
  store ptr @6, ptr %360, align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 1
  store i64 4, ptr %361, align 4
  %362 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %359, align 8
  %363 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 0
  store ptr @14, ptr %364, align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 1
  store i64 6, ptr %365, align 4
  %366 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %363, align 8
  %367 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %362, %"github.com/goplus/llgo/internal/runtime.String" %366, %"github.com/goplus/llgo/internal/runtime.Slice" %358)
  store ptr %367, ptr @_llgo_main.I, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %368 = load ptr, ptr @_llgo_any, align 8
  %369 = icmp eq ptr %368, null
  br i1 %369, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %370 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %371 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %371, i32 0, i32 0
  store ptr %370, ptr %372, align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %371, i32 0, i32 1
  store i64 0, ptr %373, align 4
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %371, i32 0, i32 2
  store i64 0, ptr %374, align 4
  %375 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %371, align 8
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 0
  store ptr @6, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 1
  store i64 4, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %376, align 8
  %380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 0
  store ptr null, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 1
  store i64 0, ptr %382, align 4
  %383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %380, align 8
  %384 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %379, %"github.com/goplus/llgo/internal/runtime.String" %383, %"github.com/goplus/llgo/internal/runtime.Slice" %375)
  store ptr %384, ptr @_llgo_any, align 8
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
