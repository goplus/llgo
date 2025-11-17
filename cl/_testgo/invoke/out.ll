; ModuleID = 'github.com/goplus/llgo/cl/_testgo/invoke'
source_filename = "github.com/goplus/llgo/cl/_testgo/invoke"

%"github.com/goplus/llgo/cl/_testgo/invoke.T" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/invoke.T5" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/invoke.T6" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/invoke.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"invoke1", align 1
@2 = private unnamed_addr constant [7 x i8] c"invoke2", align 1
@3 = private unnamed_addr constant [7 x i8] c"invoke3", align 1
@4 = private unnamed_addr constant [7 x i8] c"invoke4", align 1
@5 = private unnamed_addr constant [7 x i8] c"invoke5", align 1
@6 = private unnamed_addr constant [7 x i8] c"invoke6", align 1
@7 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke", align 1
@9 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_string = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"s", align 1
@11 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [2 x i8] c"T1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [2 x i8] c"T2", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [2 x i8] c"T3", align 1
@_llgo_int8 = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" = linkonce global ptr null, align 8
@16 = private unnamed_addr constant [2 x i8] c"T4", align 1
@"[1]_llgo_int" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [2 x i8] c"T5", align 1
@"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [1 x i8] c"n", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [2 x i8] c"T6", align 1
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [2 x i8] c"$f", align 1
@21 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6" = linkonce global ptr null, align 8
@"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [5 x i8] c"world", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [1 x i8] c"I", align 1
@24 = private unnamed_addr constant [71 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testgo/invoke.I failed", align 1
@_llgo_any = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [32 x i8] c"type assertion any -> any failed", align 1
@26 = private unnamed_addr constant [52 x i8] c"type assertion any -> interface{Invoke() int} failed", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 0
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, align 8
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T" %1)
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method"(ptr %0) {
_llgo_0:
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 1
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke"(i64 %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke"(double %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke"(ptr %0) {
_llgo_0:
  %1 = load double, ptr %0, align 8
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke"(double %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke"(ptr %0) {
_llgo_0:
  %1 = load i8, ptr %0, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %2 = sext i8 %1 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke"([1 x i64] %0) {
_llgo_0:
  %1 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store [1 x i64] %0, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke"(ptr %0) {
_llgo_0:
  %1 = load [1 x i64], ptr %0, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke"([1 x i64] %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T5" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %1, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 5
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %0, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T5" %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %0, 0
  %3 = call i64 %2(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 6
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %0, align 8
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(%"github.com/goplus/llgo/cl/_testgo/invoke.T6" %1)
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call i64 %8(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store double 1.001000e+02, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 1)
  store i8 127, ptr %4, align 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  store i64 200, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %7, i32 0, i32 0
  store i64 300, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/invoke.main$1", ptr null }, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, align 8
  %11 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T"()
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %10, ptr %12, align 8
  %13 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %14 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %14, ptr %11)
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %12, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %17)
  %18 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T"()
  %19 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %19, ptr %18)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %22)
  %23 = load i64, ptr %2, align 4
  %24 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1"()
  %25 = inttoptr i64 %23 to ptr
  %26 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %26, ptr %24)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %25, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %29)
  %30 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1"()
  %31 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %31, ptr %30)
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %2, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %34)
  %35 = load double, ptr %3, align 8
  %36 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2"()
  %37 = bitcast double %35 to i64
  %38 = inttoptr i64 %37 to ptr
  %39 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %39, ptr %36)
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %38, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %42)
  %43 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2"()
  %44 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %44, ptr %43)
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %45, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %3, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %47)
  %48 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3"()
  %49 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3"()
  %50 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %50, ptr %49)
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %51, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %4, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %53)
  %54 = load [1 x i64], ptr %5, align 4
  %55 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4"()
  %56 = extractvalue [1 x i64] %54, 0
  %57 = inttoptr i64 %56 to ptr
  %58 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %58, ptr %55)
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %59, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, ptr %57, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %61)
  %62 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4"()
  %63 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %63, ptr %62)
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %5, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %66)
  %67 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %7, align 4
  %68 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5"()
  %69 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T5" %67, 0
  %70 = inttoptr i64 %69 to ptr
  %71 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %71, ptr %68)
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %72, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %70, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %74)
  %75 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5"()
  %76 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %76, ptr %75)
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %77, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, ptr %7, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %79)
  %80 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %9, align 8
  %81 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6"()
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %80, ptr %82, align 8
  %83 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %83, ptr %81)
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %84, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %85, ptr %82, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %86)
  %87 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6"()
  %88 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %88, ptr %87)
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %9, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %91)
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %93 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %93, ptr %92)
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %94, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr null, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %96)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %97 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T"()
  %98 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %99 = call ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"()
  %100 = call ptr @"__llgo_load__llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI"()
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %100, ptr %97)
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %101, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %0, 1
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %103)
  %105 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %103, 1
  %106 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %106, ptr %104)
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %107, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %108, ptr %105, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %109)
  %110 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %110, i8 0, i64 16, i1 false)
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %110, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr %111, align 8
  %112 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %110, align 8
  %113 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T"()
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %112, ptr %114, align 8
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %113, 0
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %115, ptr %114, 1
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 0
  %118 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.I"()
  %119 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %118, ptr %117)
  br i1 %119, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %120 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 1
  %121 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %121, ptr %117)
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %122, 0
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %123, ptr %120, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %124)
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 0
  %126 = call ptr @__llgo_load__llgo_any()
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 1
  br i1 true, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %128 = call ptr @__llgo_load__llgo_string()
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 71 }, ptr %129, align 8
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %128, 0
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %130, ptr %129, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %131)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %132 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 0
  %133 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %134 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %133, ptr %132)
  br i1 %134, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %135 = call ptr @__llgo_load__llgo_string()
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 32 }, ptr %136, align 8
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %135, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %137, ptr %136, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %138)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 1
  %140 = call ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"()
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %140, ptr %132)
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %141, 0
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %142, ptr %139, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %143)
  ret void

_llgo_6:                                          ; preds = %_llgo_3
  %144 = call ptr @__llgo_load__llgo_string()
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 52 }, ptr %145, align 8
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %144, 0
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %146, ptr %145, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %147)
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"() {
_llgo_0:
  ret i64 400
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/invoke.main$1"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"()
  ret i64 %1
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, i64 25, i64 16, i64 1, i64 2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %3 = call ptr @__llgo_load__llgo_string()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ"()
  %5 = call ptr @__llgo_load__llgo_int()
  %6 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 2
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 3
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 2
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke", 3
  %13 = call ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"()
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %13, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", 2
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", 3
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %17, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %23 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %22, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %22, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 2, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %28 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  ret ptr %28
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @__llgo_load__llgo_string() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @__llgo_load__llgo_int() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %10)
  store ptr %10, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  ret ptr %11
}

define linkonce ptr @"__llgo_load__llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, i64 25, i64 16, i64 1, i64 2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, i64 2, i64 8, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %3 = call ptr @__llgo_load__llgo_int()
  %4 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 3
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke", 3
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %11, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  ret ptr %21
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, i64 2, i64 8, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, i64 14, i64 8, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %3 = call ptr @__llgo_load__llgo_float64()
  %4 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 3
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke", 3
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %11, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  ret ptr %21
}

define linkonce ptr @__llgo_load__llgo_float64() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %2, ptr @_llgo_float64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_float64, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, i64 14, i64 8, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 2 }, i64 3, i64 1, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %3 = call ptr @__llgo_load__llgo_int8()
  %4 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", 3
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  ret ptr %13
}

define linkonce ptr @__llgo_load__llgo_int8() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %2, ptr @_llgo_int8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int8, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 2 }, i64 3, i64 1, i64 0, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, i64 17, i64 8, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %3 = call ptr @"__llgo_load_[1]_llgo_int"()
  %4 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 3
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke", 3
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %11, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  ret ptr %21
}

define linkonce ptr @"__llgo_load_[1]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"[1]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %2)
  store ptr %3, ptr @"[1]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[1]_llgo_int", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, i64 17, i64 8, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, i64 25, i64 8, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %3 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U"()
  %4 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 3
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke", 3
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %11, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  ret ptr %21
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  ret ptr %10
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, i64 25, i64 8, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, i64 25, i64 24, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %3 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %4 = call ptr @__llgo_load__llgo_Pointer()
  %5 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s"()
  %6 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 2
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 3
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 2
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke", 3
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %13, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %18, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %23 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  ret ptr %23
}

define linkonce ptr @__llgo_load__llgo_Pointer() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_Pointer, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 2 }, ptr %12, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 2, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  store ptr %22, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %23 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", align 8
  ret ptr %23
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, i64 25, i64 24, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce ptr @"__llgo_load__llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %3 = call ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"()
  %4 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %2, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef }, ptr %3, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %7 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %4, ptr %7, align 8
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %5, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 2, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/invoke.I"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 1 })
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  %3 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %4 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %3, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %6 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %5, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %4, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce ptr @__llgo_load__llgo_any() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_any, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  store ptr %6, ptr @_llgo_any, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_any, align 8
  ret ptr %7
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
