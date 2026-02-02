; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closurebound'
source_filename = "github.com/goplus/llgo/cl/_testrt/closurebound"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" = type {}
%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closurebound.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/closurebound.my" = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", i64 0 }
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }

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
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %2 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %1, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %1, i32 0, i32 2
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" zeroinitializer, ptr %4, align 1
  store ptr %1, ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.my", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closurebound.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound", ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, i32 0, i32 2
  store %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" zeroinitializer, ptr %3, align 1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %5)
  %6 = call i64 %4()
  %7 = icmp ne i64 %6, 1
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" }, ptr %0, align 1
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" } %1, 0
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo2.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo2" %2)
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" }, ptr %0, align 1
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" } %1, 0
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/closurebound.demo1.encode"(%"github.com/goplus/llgo/cl/_testrt/closurebound.demo1" %2)
  ret i64 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
