; ModuleID = 'github.com/goplus/llgo/cl/_testgo/returnorder'
source_filename = "github.com/goplus/llgo/cl/_testgo/returnorder"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testgo/returnorder.state" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/returnorder.init$guard" = global i1 false, align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr @"*_llgo_int" }, align 8
@0 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@1 = private unnamed_addr constant [46 x i8] c"return order mismatch: got (%d,%d), want (2,2)", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@3 = private unnamed_addr constant [2 x i8] c"ok", align 1

define void @"github.com/goplus/llgo/cl/_testgo/returnorder.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/returnorder.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/returnorder.init$guard", align 1
  call void @fmt.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/returnorder.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/returnorder.state", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = call { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } @"github.com/goplus/llgo/cl/_testgo/returnorder.returnStateAndMut"()
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %1, 0
  store %"github.com/goplus/llgo/cl/_testgo/returnorder.state" %2, ptr %0, align 4
  %3 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %1, 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %0, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %0, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %9, i64 0
  %11 = inttoptr i64 %8 to ptr
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %11, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %10, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %9, i64 1
  %14 = inttoptr i64 %3 to ptr
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %14, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %13, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 2, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 2, 2
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @fmt.Sprintf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 46 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %19, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %22 = icmp ne i64 %3, 2
  br i1 %22, label %_llgo_1, label %_llgo_2
}

define { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } @"github.com/goplus/llgo/cl/_testgo/returnorder.returnStateAndMut"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/returnorder.(*state).mutate"(ptr %0, i64 2)
  %3 = load %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %0, align 4
  %4 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } undef, %"github.com/goplus/llgo/cl/_testgo/returnorder.state" %3, 0
  %5 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %4, i64 %2, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %5
}

define i64 @"github.com/goplus/llgo/cl/_testgo/returnorder.(*state).mutate"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %0, i32 0, i32 0
  store i64 %1, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  ret i64 %4
}

declare void @fmt.init()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @fmt.Sprintf(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llgo.useiface = !{!0, !1}

!0 = !{ptr @"github.com/goplus/llgo/cl/_testgo/returnorder.main", ptr @_llgo_int}
!1 = !{ptr @"github.com/goplus/llgo/cl/_testgo/returnorder.main", ptr @_llgo_string}
