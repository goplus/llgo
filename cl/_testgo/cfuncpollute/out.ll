; ModuleID = 'github.com/goplus/llgo/cl/_testgo/cfuncpollute'
source_filename = "github.com/goplus/llgo/cl/_testgo/cfuncpollute"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/cfuncpollute.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1 = private unnamed_addr constant [13 x i8] c"starting test", align 1
@2 = private unnamed_addr constant [7 x i8] c"result:", align 1
@3 = private unnamed_addr constant [22 x i8] c"FAIL: expected 42, got", align 1
@4 = private unnamed_addr constant [4 x i8] c"PASS", align 1
@5 = private unnamed_addr constant [17 x i8] c"before reading x\0A", align 1

define ptr @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.cstr"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 })
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %5 = icmp sge i64 0, %4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %5)
  %6 = getelementptr inbounds i8, ptr %3, i64 0
  ret ptr %6
}

define void @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.makeClosure"(i64 42)
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %2)
  %3 = call i64 %1()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = icmp ne i64 %3, 42
  br i1 %4, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2
}

define ptr @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.makeClosure"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.makeClosure$1", ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 2
  store ptr %1, ptr %5, align 8
  ret ptr %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.makeClosure$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/cl/_testgo/cfuncpollute.cstr"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 17 })
  %3 = call i32 @printf(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %4 = extractvalue { ptr } %1, 0
  %5 = load i64, ptr %4, align 4
  ret i64 %5
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
