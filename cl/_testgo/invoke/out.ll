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
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"invoke1", align 1
@2 = private unnamed_addr constant [7 x i8] c"invoke2", align 1
@3 = private unnamed_addr constant [7 x i8] c"invoke3", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@4 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_main.T = linkonce global ptr null
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null
@_llgo_string = linkonce global ptr null
@5 = private unnamed_addr constant [1 x i8] c"s", align 1
@6 = private unnamed_addr constant [4 x i8] c"main", align 1
@7 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null
@_llgo_int = linkonce global ptr null
@8 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null
@9 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null
@"*_llgo_main.T" = linkonce global ptr null
@_llgo_main.T1 = linkonce global ptr null
@10 = private unnamed_addr constant [7 x i8] c"main.T1", align 1
@"*_llgo_main.T1" = linkonce global ptr null
@_llgo_main.T2 = linkonce global ptr null
@_llgo_float64 = linkonce global ptr null
@11 = private unnamed_addr constant [7 x i8] c"main.T2", align 1
@"*_llgo_main.T2" = linkonce global ptr null
@"*_llgo_main.T3" = linkonce global ptr null
@_llgo_main.T3 = linkonce global ptr null
@_llgo_int8 = linkonce global ptr null
@12 = private unnamed_addr constant [7 x i8] c"main.T3", align 1
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null
@13 = private unnamed_addr constant [5 x i8] c"world", align 1
@_llgo_main.I = linkonce global ptr null
@14 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@15 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_any = linkonce global ptr null

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
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %38, i32 0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = or i8 %40, 32
  store i8 %41, ptr %39, align 1
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
  store i64 6, ptr %119, align 4
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
  %145 = load ptr, ptr @_llgo_main.T, align 8
  %146 = load ptr, ptr @"*_llgo_main.T", align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %145)
  store ptr %148, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %149 = load ptr, ptr @_llgo_main.T1, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 1, i64 1)
  store ptr %151, ptr @_llgo_main.T1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %151, i32 0, i32 6
  %153 = load i8, ptr %152, align 1
  %154 = or i8 %153, 32
  store i8 %154, ptr %152, align 1
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
  store i64 7, ptr %193, align 4
  %194 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %191, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %151, %"github.com/goplus/llgo/internal/runtime.String" %190, %"github.com/goplus/llgo/internal/runtime.String" %194, ptr %155, %"github.com/goplus/llgo/internal/runtime.Slice" %179, %"github.com/goplus/llgo/internal/runtime.Slice" %186)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %195 = load ptr, ptr @_llgo_main.T1, align 8
  %196 = load ptr, ptr @"*_llgo_main.T1", align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %195)
  store ptr %198, ptr @"*_llgo_main.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %199 = load ptr, ptr @_llgo_main.T2, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 14, i64 1, i64 1)
  store ptr %201, ptr @_llgo_main.T2, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %201, i32 0, i32 6
  %203 = load i8, ptr %202, align 1
  %204 = or i8 %203, 32
  store i8 %204, ptr %202, align 1
  %205 = load ptr, ptr @_llgo_float64, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  store ptr %207, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %207, i32 0, i32 6
  %209 = load i8, ptr %208, align 1
  %210 = or i8 %209, 32
  store i8 %210, ptr %208, align 1
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
  store i64 7, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %247, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %201, %"github.com/goplus/llgo/internal/runtime.String" %246, %"github.com/goplus/llgo/internal/runtime.String" %250, ptr %211, %"github.com/goplus/llgo/internal/runtime.Slice" %235, %"github.com/goplus/llgo/internal/runtime.Slice" %242)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %251 = load ptr, ptr @_llgo_main.T2, align 8
  %252 = load ptr, ptr @"*_llgo_main.T2", align 8
  %253 = icmp eq ptr %252, null
  br i1 %253, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %251)
  store ptr %254, ptr @"*_llgo_main.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %255 = load ptr, ptr @_llgo_main.T3, align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %257 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 3, i64 0, i64 1)
  store ptr %257, ptr @_llgo_main.T3, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %257, i32 0, i32 6
  %259 = load i8, ptr %258, align 1
  %260 = or i8 %259, 32
  store i8 %260, ptr %258, align 1
  %261 = load ptr, ptr @_llgo_int8, align 8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %263 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  store ptr %263, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %263, i32 0, i32 6
  %265 = load i8, ptr %264, align 1
  %266 = or i8 %265, 32
  store i8 %266, ptr %264, align 1
  %267 = load ptr, ptr @_llgo_int8, align 8
  br i1 %256, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 0
  store ptr @7, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 1
  store i64 6, ptr %270, align 4
  %271 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %268, align 8
  %272 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %273 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %271, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 1
  store ptr %272, ptr %275, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 2
  store ptr @"main.(*T3).Invoke", ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 3
  store ptr @"main.(*T3).Invoke", ptr %277, align 8
  %278 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %273, align 8
  %279 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %280 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %278, ptr %280, align 8
  %281 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 0
  store ptr %279, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 1
  store i64 1, ptr %283, align 4
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 2
  store i64 1, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, align 8
  %286 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %286, i32 0, i32 0
  store ptr @6, ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %286, i32 0, i32 1
  store i64 4, ptr %288, align 4
  %289 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %286, align 8
  %290 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %290, i32 0, i32 0
  store ptr @12, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %290, i32 0, i32 1
  store i64 7, ptr %292, align 4
  %293 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %290, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %257, %"github.com/goplus/llgo/internal/runtime.String" %289, %"github.com/goplus/llgo/internal/runtime.String" %293, ptr %267, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %285)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %294 = load ptr, ptr @_llgo_main.T3, align 8
  %295 = load ptr, ptr @"*_llgo_main.T3", align 8
  %296 = icmp eq ptr %295, null
  br i1 %296, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %297 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %294)
  store ptr %297, ptr @"*_llgo_main.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %298 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %299 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %300 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %301 = icmp eq ptr %300, null
  br i1 %301, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %302 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 0
  store ptr @7, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 1
  store i64 6, ptr %304, align 4
  %305 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %302, align 8
  %306 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %306, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %305, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %306, i32 0, i32 1
  store ptr %298, ptr %308, align 8
  %309 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %306, align 8
  %310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 0
  store ptr @8, ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 1
  store i64 6, ptr %312, align 4
  %313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %310, align 8
  %314 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %314, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %313, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %314, i32 0, i32 1
  store ptr %299, ptr %316, align 8
  %317 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %314, align 8
  %318 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %319 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %318, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %309, ptr %319, align 8
  %320 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %318, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %317, ptr %320, align 8
  %321 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %321, i32 0, i32 0
  store ptr %318, ptr %322, align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %321, i32 0, i32 1
  store i64 2, ptr %323, align 4
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %321, i32 0, i32 2
  store i64 2, ptr %324, align 4
  %325 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %321, align 8
  %326 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 0
  store ptr @6, ptr %327, align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 1
  store i64 4, ptr %328, align 4
  %329 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %326, align 8
  %330 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %330, i32 0, i32 0
  store ptr null, ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %330, i32 0, i32 1
  store i64 0, ptr %332, align 4
  %333 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %330, align 8
  %334 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %329, %"github.com/goplus/llgo/internal/runtime.String" %333, %"github.com/goplus/llgo/internal/runtime.Slice" %325)
  store ptr %334, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %335 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %336 = load ptr, ptr @_llgo_main.I, align 8
  %337 = icmp eq ptr %336, null
  br i1 %337, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %338 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 0
  store ptr @7, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 1
  store i64 6, ptr %340, align 4
  %341 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %338, align 8
  %342 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %342, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %341, ptr %343, align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %342, i32 0, i32 1
  store ptr %335, ptr %344, align 8
  %345 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %342, align 8
  %346 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %347 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %346, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %345, ptr %347, align 8
  %348 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, i32 0, i32 0
  store ptr %346, ptr %349, align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, i32 0, i32 1
  store i64 1, ptr %350, align 4
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, i32 0, i32 2
  store i64 1, ptr %351, align 4
  %352 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %348, align 8
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 0
  store ptr @6, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 1
  store i64 4, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %353, align 8
  %357 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 0
  store ptr @14, ptr %358, align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 1
  store i64 6, ptr %359, align 4
  %360 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %357, align 8
  %361 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %356, %"github.com/goplus/llgo/internal/runtime.String" %360, %"github.com/goplus/llgo/internal/runtime.Slice" %352)
  store ptr %361, ptr @_llgo_main.I, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %362 = load ptr, ptr @_llgo_any, align 8
  %363 = icmp eq ptr %362, null
  br i1 %363, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %364 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 0
  store ptr %364, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 1
  store i64 0, ptr %367, align 4
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 2
  store i64 0, ptr %368, align 4
  %369 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, align 8
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 0
  store ptr @6, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 1
  store i64 4, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %370, align 8
  %374 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 0
  store ptr null, ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 1
  store i64 0, ptr %376, align 4
  %377 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %374, align 8
  %378 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %373, %"github.com/goplus/llgo/internal/runtime.String" %377, %"github.com/goplus/llgo/internal/runtime.Slice" %369)
  store ptr %378, ptr @_llgo_any, align 8
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
