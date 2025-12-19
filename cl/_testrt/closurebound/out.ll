; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closurebound'
source_filename = "github.com/goplus/llgo/cl/_testrt/closurebound"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" = type {}
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/closurebound.my" = global { ptr, ptr } zeroinitializer, align 8
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 0, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %0) {
_llgo_0:
  ret i64 1
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.(*demo1).encode"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %0) {
_llgo_0:
  ret i64 2
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.(*demo2).encode"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %1)
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/closurebound.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard", align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %2 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" zeroinitializer, ptr %2, align 1
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound", ptr undef }, ptr %1, 1
  store { ptr, ptr } %3, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.my", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closurebound.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" zeroinitializer, ptr %1, align 1
  %2 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound", ptr undef }, ptr %0, 1
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  %5 = call i64 %4(ptr %3)
  %6 = icmp ne i64 %5, 1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %0, align 1
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" } %1, 0
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %2)
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, align 1
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" } %1, 0
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %2)
  ret i64 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
