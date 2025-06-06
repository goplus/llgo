; ModuleID = 'github.com/goplus/llgo/cl/_testgo/invoke'
source_filename = "github.com/goplus/llgo/cl/_testgo/invoke"

%"github.com/goplus/llgo/cl/_testgo/invoke.T" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/invoke.T5" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/invoke.T6" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
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

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %2, ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 0
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %1, ptr %2, align 8
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke"(ptr %2)
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method"(ptr %0) {
_llgo_0:
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke"(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %1)
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
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %1)
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
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %3 = sext i8 %1 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
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
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr %4, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %4)
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
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr %4, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %4)
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

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %1, 1
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %1, 0
  %4 = call i64 %3(ptr %2)
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 6
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %1, ptr %2, align 8
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke"(ptr %2)
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
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
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %10, ptr %12, align 8
  %13 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %14 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %14, ptr %11)
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %12, 1
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %18, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %18)
  %19 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %20 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %20, ptr %19)
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %21, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, ptr %0, 1
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %24, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %24)
  %25 = load i64, ptr %2, align 4
  %26 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %27 = inttoptr i64 %25 to ptr
  %28 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %28, ptr %26)
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %27, 1
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %32, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %32)
  %33 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %34 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %34, ptr %33)
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, ptr %2, 1
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %38, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %38)
  %39 = load double, ptr %3, align 8
  %40 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %41 = bitcast double %39 to i64
  %42 = inttoptr i64 %41 to ptr
  %43 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %43, ptr %40)
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %44, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %42, 1
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %47, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %47)
  %48 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %49 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %49, ptr %48)
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %50, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %3, 1
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %53, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %53)
  %54 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %55 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %56 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %56, ptr %55)
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %4, 1
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, ptr %60, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %60)
  %61 = load [1 x i64], ptr %5, align 4
  %62 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %63 = extractvalue [1 x i64] %61, 0
  %64 = inttoptr i64 %63 to ptr
  %65 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %65, ptr %62)
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %66, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, ptr %64, 1
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %68, ptr %69, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %69)
  %70 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %71 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %71, ptr %70)
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %72, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %5, 1
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %74, ptr %75, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %75)
  %76 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %7, align 4
  %77 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %78 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T5" %76, 0
  %79 = inttoptr i64 %78 to ptr
  %80 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %80, ptr %77)
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %81, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %82, ptr %79, 1
  %84 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %84, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %84)
  %85 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %86 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %86, ptr %85)
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %87, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %88, ptr %7, 1
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, ptr %90, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %90)
  %91 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %9, align 8
  %92 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %91, ptr %93, align 8
  %94 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %94, ptr %92)
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %95, 0
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %96, ptr %93, 1
  %98 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %97, ptr %98, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %98)
  %99 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %100 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %100, ptr %99)
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %101, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %9, 1
  %104 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %103, ptr %104, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %104)
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %105, align 8
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %105)
  %107 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %107, ptr %106)
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %108, 0
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %109, ptr null, 1
  %111 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %110, ptr %111, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr %111)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %112, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %113 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %114 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %115 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %116 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %116, ptr %113)
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %117, 0
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %118, ptr %0, 1
  %120 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %119, ptr %120, align 8
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %120)
  %122 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %119, 1
  %123 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %123, ptr %121)
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %124, 0
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %125, ptr %122, 1
  %127 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %126, ptr %127, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %127)
  %128 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %128, i8 0, i64 16, i1 false)
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %128, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr %129, align 8
  %130 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %128, align 8
  %131 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %130, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %131, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %133, ptr %132, 1
  %135 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, 0
  %136 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  %137 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %136, ptr %135)
  br i1 %137, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %138 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, 1
  %139 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %139, ptr %135)
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %140, 0
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %141, ptr %138, 1
  %143 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %142, ptr %143, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %143)
  %144 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, 0
  %145 = load ptr, ptr @_llgo_any, align 8
  br i1 true, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %146 = load ptr, ptr @_llgo_string, align 8
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 71 }, ptr %147, align 8
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %146, 0
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %148, ptr %147, 1
  %150 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %149, ptr %150, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %150)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %151 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, 0
  %152 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %153 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %152, ptr %151)
  br i1 %153, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %154 = load ptr, ptr @_llgo_string, align 8
  %155 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 32 }, ptr %155, align 8
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %154, 0
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %156, ptr %155, 1
  %158 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %157, ptr %158, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %158)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %159 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, 1
  %160 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %160, ptr %151)
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %161, 0
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %162, ptr %159, 1
  %164 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %163, ptr %164, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(ptr %164)
  ret void

_llgo_6:                                          ; preds = %_llgo_3
  %165 = load ptr, ptr @_llgo_string, align 8
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 52 }, ptr %166, align 8
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %165, 0
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %167, ptr %166, 1
  %169 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %168, ptr %169, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %169)
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"() {
_llgo_0:
  ret i64 400
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/invoke.main$1"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/invoke.main$1"()
  ret i64 %1
}

define void @"github.com/goplus/llgo/cl/_testgo/invoke.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 16, i64 1, i64 2)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %7, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %10 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr %11, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %10, ptr %11, ptr %9, i64 0, ptr %12, i1 false)
  %13 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %10, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 1, 2
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %19, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, ptr %20, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %19, i64 16, ptr %20)
  store ptr %21, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %22 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_4
  %25 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %26 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_13, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_5
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %28, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %29 = load ptr, ptr @_llgo_int, align 8
  %30 = load ptr, ptr @_llgo_int, align 8
  %31 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 0, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 0, 2
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %38 = getelementptr ptr, ptr %37, i64 0
  store ptr %30, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 1, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 1, 2
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %43, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %42, ptr %43, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %44)
  store ptr %44, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %45 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %45, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 2
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %47, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 3
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %45, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 2
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke", 3
  %52 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %54, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 0, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 0, 2
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %58, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 0, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 0, 2
  %62 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, ptr %62, align 8
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, ptr %63, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %62, ptr %63, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %64)
  store ptr %64, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %65 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %65, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", 2
  %68 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %67, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", 3
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %69, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %51, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 1, 2
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %75 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %74, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %48, ptr %75, align 8
  %76 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %74, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %68, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 2, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 2, 2
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, ptr %80, align 8
  %81 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, ptr %81, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %22, ptr %80, ptr %81)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %25, 1
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %84 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %83, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %82, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %83, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 1, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 1, 2
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %88, align 8
  %89 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr %89, align 8
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %88, ptr %89)
  store ptr %90, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %91, align 8
  %92 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %92, align 8
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %91, ptr %92, i64 25, i64 16, i64 1, i64 2)
  %94 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %96)
  store ptr %96, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %97 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %97, align 8
  %98 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, ptr %98, align 8
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %97, ptr %98, i64 2, i64 8, i64 1, i64 1)
  %100 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %99, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %102 = load ptr, ptr @_llgo_int, align 8
  br i1 %101, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %103 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %103, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %104, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 2
  %106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %105, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 3
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %103, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %107, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 2
  %109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %108, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke", 3
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %111 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %110, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %109, ptr %111, align 8
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %110, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 1, 1
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 1, 2
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %116 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %115, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %106, ptr %116, align 8
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %115, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 1, 1
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, i64 1, 2
  %120 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, ptr %120, align 8
  %121 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, ptr %121, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %99, ptr %102, ptr %120, ptr %121)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %122 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %122, align 8
  %123 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, ptr %123, align 8
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %122, ptr %123, i64 2, i64 8, i64 1, i64 1)
  %125 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %127)
  store ptr %127, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %128 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %128, align 8
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, ptr %129, align 8
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %128, ptr %129, i64 14, i64 8, i64 1, i64 1)
  %131 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  store ptr %130, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %133 = load ptr, ptr @_llgo_float64, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %135, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %136 = load ptr, ptr @_llgo_float64, align 8
  br i1 %132, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %137 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %138 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %137, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %138, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 2
  %140 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %139, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 3
  %141 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %137, 1
  %142 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %141, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 2
  %143 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %142, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke", 3
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %145 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %144, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %143, ptr %145, align 8
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %144, 0
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %146, i64 1, 1
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %147, i64 1, 2
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %150 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %149, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %140, ptr %150, align 8
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %149, 0
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, i64 1, 1
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, i64 1, 2
  %154 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %148, ptr %154, align 8
  %155 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, ptr %155, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %130, ptr %136, ptr %154, ptr %155)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %156 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %156, align 8
  %157 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, ptr %157, align 8
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %156, ptr %157, i64 14, i64 8, i64 1, i64 1)
  %159 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %158)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %161)
  store ptr %161, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %162 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %162, align 8
  %163 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 2 }, ptr %163, align 8
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %162, ptr %163, i64 3, i64 1, i64 0, i64 1)
  %165 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %164, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %167 = load ptr, ptr @_llgo_int8, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %169, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %170 = load ptr, ptr @_llgo_int8, align 8
  br i1 %166, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %171 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %172 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %171, 1
  %173 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %172, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", 2
  %174 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %173, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", 3
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %176 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %175, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %174, ptr %176, align 8
  %177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %175, 0
  %178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %177, i64 1, 1
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %178, i64 1, 2
  %180 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %180, align 8
  %181 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, ptr %181, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %164, ptr %170, ptr %180, ptr %181)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %182 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %182, align 8
  %183 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 2 }, ptr %183, align 8
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %182, ptr %183, i64 3, i64 1, i64 0, i64 1)
  %185 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %184)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %187)
  store ptr %187, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %188 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %188, align 8
  %189 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, ptr %189, align 8
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %188, ptr %189, i64 17, i64 8, i64 1, i64 1)
  %191 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %190, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %193 = load ptr, ptr @"[1]_llgo_int", align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %196 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %195)
  store ptr %196, ptr @"[1]_llgo_int", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %197 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %192, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %198 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %199 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %198, 1
  %200 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %199, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 2
  %201 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %200, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 3
  %202 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %198, 1
  %203 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %202, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 2
  %204 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %203, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke", 3
  %205 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %206 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %205, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %204, ptr %206, align 8
  %207 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %205, 0
  %208 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %207, i64 1, 1
  %209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %208, i64 1, 2
  %210 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %211 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %210, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %201, ptr %211, align 8
  %212 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %210, 0
  %213 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %212, i64 1, 1
  %214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %213, i64 1, 2
  %215 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %209, ptr %215, align 8
  %216 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %214, ptr %216, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %190, ptr %197, ptr %215, ptr %216)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %217 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %217, align 8
  %218 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, ptr %218, align 8
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %217, ptr %218, i64 17, i64 8, i64 1, i64 1)
  %220 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %219)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %222)
  store ptr %222, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %223 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %223, align 8
  %224 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, ptr %224, align 8
  %225 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %223, ptr %224, i64 25, i64 8, i64 1, i64 1)
  %226 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  store ptr %225, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %229 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %230 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %230, align 8
  %231 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %231, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %229, ptr %230, ptr %228, i64 0, ptr %231, i1 false)
  %232 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %229, align 8
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %234 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %233, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %232, ptr %234, align 8
  %235 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %233, 0
  %236 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %235, i64 1, 1
  %237 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %236, i64 1, 2
  %238 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %238, align 8
  %239 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %237, ptr %239, align 8
  %240 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %238, i64 8, ptr %239)
  store ptr %240, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %241 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %227, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %242 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %243 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %242, 1
  %244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %243, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 2
  %245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %244, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 3
  %246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %242, 1
  %247 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %246, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 2
  %248 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %247, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke", 3
  %249 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %250 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %249, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %248, ptr %250, align 8
  %251 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %249, 0
  %252 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %251, i64 1, 1
  %253 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %252, i64 1, 2
  %254 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %255 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %254, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %245, ptr %255, align 8
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %254, 0
  %257 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, i64 1, 1
  %258 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %257, i64 1, 2
  %259 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %253, ptr %259, align 8
  %260 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %258, ptr %260, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %225, ptr %241, ptr %259, ptr %260)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %261 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %261, align 8
  %262 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, ptr %262, align 8
  %263 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %261, ptr %262, i64 25, i64 8, i64 1, i64 1)
  %264 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %265 = icmp eq ptr %264, null
  br i1 %265, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %266 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %263)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %266)
  store ptr %266, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %267 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %267, align 8
  %268 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, ptr %268, align 8
  %269 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %267, ptr %268, i64 25, i64 24, i64 1, i64 1)
  %270 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %271 = icmp eq ptr %270, null
  br i1 %271, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %269, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %272 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %273 = load ptr, ptr @_llgo_Pointer, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %275 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %275)
  store ptr %275, ptr @_llgo_Pointer, align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %276 = load ptr, ptr @_llgo_Pointer, align 8
  %277 = load ptr, ptr @_llgo_int, align 8
  %278 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %279 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %278, 0
  %280 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %279, i64 0, 1
  %281 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, i64 0, 2
  %282 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %283 = getelementptr ptr, ptr %282, i64 0
  store ptr %277, ptr %283, align 8
  %284 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %282, 0
  %285 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %284, i64 1, 1
  %286 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %285, i64 1, 2
  %287 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %281, ptr %287, align 8
  %288 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %286, ptr %288, align 8
  %289 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %287, ptr %288, i1 false)
  %290 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %291 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 2 }, ptr %291, align 8
  %292 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %292, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %290, ptr %291, ptr %289, i64 0, ptr %292, i1 false)
  %293 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %290, align 8
  %294 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %295 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %296 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %296, align 8
  %297 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %297, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %295, ptr %296, ptr %294, i64 8, ptr %297, i1 false)
  %298 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %295, align 8
  %299 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %300 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %299, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %293, ptr %300, align 8
  %301 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %299, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %298, ptr %301, align 8
  %302 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %299, 0
  %303 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %302, i64 2, 1
  %304 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %303, i64 2, 2
  %305 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %305, align 8
  %306 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %304, ptr %306, align 8
  %307 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %305, i64 16, ptr %306)
  store ptr %307, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", align 8
  %308 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", align 8
  br i1 %271, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %309 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %310 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %309, 1
  %311 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %310, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 2
  %312 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %311, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 3
  %313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %309, 1
  %314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %313, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 2
  %315 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %314, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke", 3
  %316 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %317 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %316, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %315, ptr %317, align 8
  %318 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %316, 0
  %319 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %318, i64 1, 1
  %320 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %319, i64 1, 2
  %321 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %322 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %321, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %312, ptr %322, align 8
  %323 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %321, 0
  %324 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %323, i64 1, 1
  %325 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %324, i64 1, 2
  %326 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %320, ptr %326, align 8
  %327 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %325, ptr %327, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %269, ptr %308, ptr %326, ptr %327)
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %328 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %328, align 8
  %329 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, ptr %329, align 8
  %330 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %328, ptr %329, i64 25, i64 24, i64 1, i64 1)
  %331 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %332 = icmp eq ptr %331, null
  br i1 %332, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %333 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %330)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %333)
  store ptr %333, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %334 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %335 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %336 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %337 = icmp eq ptr %336, null
  br i1 %337, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %338 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %334, 1
  %339 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef }, ptr %335, 1
  %340 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %340, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %338, ptr %341, align 8
  %342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %340, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %339, ptr %342, align 8
  %343 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %340, 0
  %344 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %343, i64 2, 1
  %345 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, i64 2, 2
  %346 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %346, align 8
  %347 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %345, ptr %347, align 8
  %348 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %346, ptr %347)
  store ptr %348, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %349 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %349, align 8
  %350 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 1 }, ptr %350, align 8
  %351 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %349, ptr %350)
  %352 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  store ptr %351, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %354 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br i1 %353, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %355 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %354, 1
  %356 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %357 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %356, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %355, ptr %357, align 8
  %358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %356, 0
  %359 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %358, i64 1, 1
  %360 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %359, i64 1, 2
  %361 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %360, ptr %361, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %351, ptr %361)
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %362 = load ptr, ptr @_llgo_any, align 8
  %363 = icmp eq ptr %362, null
  br i1 %363, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %364 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %365 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %364, 0
  %366 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %365, i64 0, 1
  %367 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %366, i64 0, 2
  %368 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 40 }, ptr %368, align 8
  %369 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %367, ptr %369, align 8
  %370 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %368, ptr %369)
  store ptr %370, ptr @_llgo_any, align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
