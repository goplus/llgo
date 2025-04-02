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
@8 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/invoke", align 1
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
@24 = private unnamed_addr constant [80 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testgo/invoke.I failed", align 1
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
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.init$after"()
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
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %10, ptr %12, align 8
  %13 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %14 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %14, ptr %11)
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %12, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %17)
  %18 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %19 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %19, ptr %18)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %22)
  %23 = load i64, ptr %2, align 4
  %24 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %25 = inttoptr i64 %23 to ptr
  %26 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %26, ptr %24)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %25, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %29)
  %30 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %31 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %31, ptr %30)
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %2, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %34)
  %35 = load double, ptr %3, align 8
  %36 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %37 = bitcast double %35 to i64
  %38 = inttoptr i64 %37 to ptr
  %39 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %39, ptr %36)
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %38, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %42)
  %43 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %44 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %44, ptr %43)
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %45, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %3, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %47)
  %48 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %49 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %50 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %50, ptr %49)
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %51, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %4, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %53)
  %54 = load [1 x i64], ptr %5, align 4
  %55 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %56 = extractvalue [1 x i64] %54, 0
  %57 = inttoptr i64 %56 to ptr
  %58 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %58, ptr %55)
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %59, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, ptr %57, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %61)
  %62 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %63 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %63, ptr %62)
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, ptr %5, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %66)
  %67 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T5", ptr %7, align 4
  %68 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %69 = extractvalue %"github.com/goplus/llgo/cl/_testgo/invoke.T5" %67, 0
  %70 = inttoptr i64 %69 to ptr
  %71 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %71, ptr %68)
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %72, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %70, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %74)
  %75 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %76 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %76, ptr %75)
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %77, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, ptr %7, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %79)
  %80 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T6", ptr %9, align 8
  %81 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T6" %80, ptr %82, align 8
  %83 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %83, ptr %81)
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %84, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %85, ptr %82, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %86)
  %87 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %88 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %88, ptr %87)
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %9, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %91)
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %93 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %93, ptr %92)
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %94, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr null, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %96)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %97 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %98 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %99 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %100 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %100, ptr %97)
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %101, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %0, 1
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %103)
  %105 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %103, 1
  %106 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %106, ptr %104)
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %107, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %108, ptr %105, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %109)
  %110 = alloca %"github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  call void @llvm.memset(ptr %110, i8 0, i64 16, i1 false)
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %110, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr %111, align 8
  %112 = load %"github.com/goplus/llgo/cl/_testgo/invoke.T", ptr %110, align 8
  %113 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/invoke.T" %112, ptr %114, align 8
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %113, 0
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %115, ptr %114, 1
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 0
  %118 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  %119 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %118, ptr %117)
  br i1 %119, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %120 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 1
  %121 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %121, ptr %117)
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %122, 0
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %123, ptr %120, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %124)
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 0
  %126 = load ptr, ptr @_llgo_any, align 8
  br i1 true, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %127 = load ptr, ptr @_llgo_string, align 8
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 80 }, ptr %128, align 8
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %127, 0
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %129, ptr %128, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %130)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %131 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 0
  %132 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %133 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %132, ptr %131)
  br i1 %133, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_1
  %134 = load ptr, ptr @_llgo_string, align 8
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 32 }, ptr %135, align 8
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %134, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %136, ptr %135, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %137)
  unreachable

_llgo_5:                                          ; preds = %_llgo_3
  %138 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, 1
  %139 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %139, ptr %131)
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %140, 0
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %141, ptr %138, 1
  call void @"github.com/goplus/llgo/cl/_testgo/invoke.invoke"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %142)
  ret void

_llgo_6:                                          ; preds = %_llgo_3
  %143 = load ptr, ptr @_llgo_string, align 8
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 52 }, ptr %144, align 8
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %143, 0
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %145, ptr %144, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %146)
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

define void @"github.com/goplus/llgo/cl/_testgo/invoke.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, i64 25, i64 16, i64 1, i64 2)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr %7, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 1, 2
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13)
  store ptr %14, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %15 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br i1 %2, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %16 = load ptr, ptr @_llgo_int, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_4
  %18 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %19 = load ptr, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %_llgo_13, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_5
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %21, ptr @_llgo_int, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %22 = load ptr, ptr @_llgo_int, align 8
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 0, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 0, 2
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %31 = getelementptr ptr, ptr %30, i64 0
  store ptr %23, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %30, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 1, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 2
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %35)
  store ptr %35, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %36 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 2
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 3
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %36, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Invoke", 2
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %41, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T.Invoke", 3
  %43 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %45, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 0, 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 0, 2
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 0, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 0, 2
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %53)
  store ptr %53, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %54 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %54, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", 2
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T).Method", 3
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %59 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %58, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %58, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 1, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 1, 2
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %64 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %63, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr %64, align 8
  %65 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %63, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 2, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68)
  br label %_llgo_6

_llgo_13:                                         ; preds = %_llgo_6
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %18, 1
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %71 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %70, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %69, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 1, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 1, 2
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74)
  store ptr %75, ptr @"_llgo_iface$uRUteI7wmSy7y7ODhGzk0FdDaxGKMhVSSu6HZEv9aa0", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_6
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, i64 25, i64 16, i64 1, i64 2)
  %77 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %76)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %79)
  store ptr %79, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, i64 2, i64 8, i64 1, i64 1)
  %81 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %80, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %83 = load ptr, ptr @_llgo_int, align 8
  br i1 %82, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %84 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %84, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 2
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 3
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %84, 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T1).Invoke", 2
  %90 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %89, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T1.Invoke", 3
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %92 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %91, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %90, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %91, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 1, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, i64 1, 2
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %97 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %96, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr %97, align 8
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %96, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 1, 1
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %80, ptr %83, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 2 }, i64 2, i64 8, i64 1, i64 1)
  %102 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %104)
  store ptr %104, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, i64 14, i64 8, i64 1, i64 1)
  %106 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  store ptr %105, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %108 = load ptr, ptr @_llgo_float64, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %110, ptr @_llgo_float64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %111 = load ptr, ptr @_llgo_float64, align 8
  br i1 %107, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %112 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %113 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %112, 1
  %114 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %113, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 2
  %115 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %114, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 3
  %116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %112, 1
  %117 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %116, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T2).Invoke", 2
  %118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %117, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T2.Invoke", 3
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %118, ptr %120, align 8
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %119, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 1, 1
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 2
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %125 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %124, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %115, ptr %125, align 8
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %124, 0
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, i64 1, 1
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %105, ptr %111, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %128)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, i64 14, i64 8, i64 1, i64 1)
  %130 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %129)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %132)
  store ptr %132, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 2 }, i64 3, i64 1, i64 0, i64 1)
  %134 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %133, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %136 = load ptr, ptr @_llgo_int8, align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %138, ptr @_llgo_int8, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %139 = load ptr, ptr @_llgo_int8, align 8
  br i1 %135, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %140 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %141 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %140, 1
  %142 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %141, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", 2
  %143 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %142, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T3).Invoke", 3
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %145 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %144, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %143, ptr %145, align 8
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %144, 0
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %146, i64 1, 1
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %147, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %133, ptr %139, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %148)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 2 }, i64 3, i64 1, i64 0, i64 1)
  %150 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %149)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %152)
  store ptr %152, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, i64 17, i64 8, i64 1, i64 1)
  %154 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %153, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %156 = load ptr, ptr @"[1]_llgo_int", align 8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %159 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %158)
  store ptr %159, ptr @"[1]_llgo_int", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %160 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %155, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %161 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %162 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %161, 1
  %163 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %162, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 2
  %164 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %163, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 3
  %165 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %161, 1
  %166 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %165, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T4).Invoke", 2
  %167 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %166, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T4.Invoke", 3
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %169 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %168, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %167, ptr %169, align 8
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %168, 0
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %170, i64 1, 1
  %172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %171, i64 1, 2
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %174 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %173, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %164, ptr %174, align 8
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %173, 0
  %176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %175, i64 1, 1
  %177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %176, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %153, ptr %160, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %172, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %177)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %178 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, i64 17, i64 8, i64 1, i64 1)
  %179 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %178)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %181)
  store ptr %181, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, i64 25, i64 8, i64 1, i64 1)
  %183 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  store ptr %182, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %185 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %186 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %185, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %188 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %187, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %186, ptr %188, align 8
  %189 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %187, 0
  %190 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %189, i64 1, 1
  %191 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %190, i64 1, 2
  %192 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %191)
  store ptr %192, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %193 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %184, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %194 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %195 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %194, 1
  %196 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %195, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 2
  %197 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %196, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 3
  %198 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %194, 1
  %199 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %198, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T5).Invoke", 2
  %200 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %199, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T5.Invoke", 3
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %202 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %201, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %200, ptr %202, align 8
  %203 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %201, 0
  %204 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %203, i64 1, 1
  %205 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %204, i64 1, 2
  %206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %207 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %206, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %197, ptr %207, align 8
  %208 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %206, 0
  %209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %208, i64 1, 1
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %209, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %182, ptr %193, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %205, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %210)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %211 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, i64 25, i64 8, i64 1, i64 1)
  %212 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %214 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %211)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %214)
  store ptr %214, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %215 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, i64 25, i64 24, i64 1, i64 1)
  %216 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %215, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %218 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %219 = load ptr, ptr @_llgo_Pointer, align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %221)
  store ptr %221, ptr @_llgo_Pointer, align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %222 = load ptr, ptr @_llgo_Pointer, align 8
  %223 = load ptr, ptr @_llgo_int, align 8
  %224 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %225 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %224, 0
  %226 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %225, i64 0, 1
  %227 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %226, i64 0, 2
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %229 = getelementptr ptr, ptr %228, i64 0
  store ptr %223, ptr %229, align 8
  %230 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %228, 0
  %231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %230, i64 1, 1
  %232 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %231, i64 1, 2
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %227, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %232, i1 false)
  %234 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 2 }, ptr %233, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %235 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %236 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %235, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %238 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %237, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %234, ptr %238, align 8
  %239 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %237, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %236, ptr %239, align 8
  %240 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %237, 0
  %241 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %240, i64 2, 1
  %242 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %241, i64 2, 2
  %243 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %242)
  store ptr %243, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", align 8
  %244 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.struct$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", align 8
  br i1 %217, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %245 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %245, 1
  %247 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %246, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 2
  %248 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %247, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 3
  %249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %245, 1
  %250 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %249, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.(*T6).Invoke", 2
  %251 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %250, ptr @"github.com/goplus/llgo/cl/_testgo/invoke.T6.Invoke", 3
  %252 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %253 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %252, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %251, ptr %253, align 8
  %254 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %252, 0
  %255 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %254, i64 1, 1
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %255, i64 1, 2
  %257 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %258 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %257, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %248, ptr %258, align 8
  %259 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %257, 0
  %260 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %259, i64 1, 1
  %261 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %260, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %215, ptr %244, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %261)
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %262 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, i64 25, i64 24, i64 1, i64 1)
  %263 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %265 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %262)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %265)
  store ptr %265, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %266 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %267 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %268 = load ptr, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  %269 = icmp eq ptr %268, null
  br i1 %269, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %266, 1
  %271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef }, ptr %267, 1
  %272 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %273 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %272, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %270, ptr %273, align 8
  %274 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %272, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %271, ptr %274, align 8
  %275 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %272, 0
  %276 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %275, i64 2, 1
  %277 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %276, i64 2, 2
  %278 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %277)
  store ptr %278, ptr @"_llgo_iface$jwmSdgh1zvY_TDIgLzCkvkbiyrdwl9N806DH0JGcyMI", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %279 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 1 })
  %280 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  %281 = icmp eq ptr %280, null
  br i1 %281, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  store ptr %279, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.I", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %282 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br i1 %281, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %283 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef }, ptr %282, 1
  %284 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %285 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %284, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %283, ptr %285, align 8
  %286 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %284, 0
  %287 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %286, i64 1, 1
  %288 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %287, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %279, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %288)
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %289 = load ptr, ptr @_llgo_any, align 8
  %290 = icmp eq ptr %289, null
  br i1 %290, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %291 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %292 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %291, 0
  %293 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %292, i64 0, 1
  %294 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %293, i64 0, 2
  %295 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %294)
  store ptr %295, ptr @_llgo_any, align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
