; ModuleID = 'github.com/goplus/llgo/cl/_testgo/regpollute'
source_filename = "github.com/goplus/llgo/cl/_testgo/regpollute"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/regpollute.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [13 x i8] c"starting test", align 1
@1 = private unnamed_addr constant [7 x i8] c"result:", align 1
@2 = private unnamed_addr constant [22 x i8] c"FAIL: expected 42, got", align 1
@3 = private unnamed_addr constant [4 x i8] c"PASS", align 1

define void @"github.com/goplus/llgo/cl/_testgo/regpollute.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/regpollute.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/regpollute.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/regpollute.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testgo/regpollute.makeOuter"(i64 42)
  %1 = extractvalue { ptr, ptr } %0, 1
  %2 = extractvalue { ptr, ptr } %0, 0
  %3 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %4 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %1)
  %5 = call i64 %2()
  %6 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = icmp ne i64 %5, 42
  br i1 %7, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testgo/regpollute.makeInner"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/regpollute.makeInner$1", ptr undef }, ptr %2, 1
  ret { ptr, ptr } %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/regpollute.makeInner$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, 1
  ret i64 %4
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testgo/regpollute.makeOuter"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %3 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testgo/regpollute.makeInner"(i64 100)
  store { ptr, ptr } %3, ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr %1, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/regpollute.makeOuter$1", ptr undef }, ptr %4, 1
  ret { ptr, ptr } %7
}

define i64 @"github.com/goplus/llgo/cl/_testgo/regpollute.makeOuter$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %1 = load { ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr } %1, 0
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  %6 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %7 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %4)
  %8 = call i64 %5()
  %9 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %6)
  %10 = extractvalue { ptr, ptr } %1, 1
  %11 = load i64, ptr %10, align 4
  ret i64 %11
}

define void @"github.com/goplus/llgo/cl/_testgo/regpollute.noop"() {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
