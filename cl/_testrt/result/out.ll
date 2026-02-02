; ModuleID = 'github.com/goplus/llgo/cl/_testrt/result'
source_filename = "github.com/goplus/llgo/cl/_testrt/result"

@"github.com/goplus/llgo/cl/_testrt/result.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/result.add$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/result.add$1", i64 0 }
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/result.add2$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/result.add2$1", i64 0 }
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/result.main$1$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/result.main$1$1", i64 0 }

define ptr @"github.com/goplus/llgo/cl/_testrt/result.add"() {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/result.add$1"
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define { ptr, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"() {
_llgo_0:
  ret { ptr, i64 } { ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/result.add2$1", i64 1 }
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/result.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/result.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testrt/result.main$1"()
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %2)
  %3 = call i64 %1(i64 100, i64 200)
  %4 = call i32 (ptr, ...) @printf(ptr @0, i64 %3)
  %5 = call ptr @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %5, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %7)
  %8 = call i64 %6(i64 100, i64 200)
  %9 = call i32 (ptr, ...) @printf(ptr @1, i64 %8)
  %10 = call { ptr, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"()
  %11 = extractvalue { ptr, i64 } %10, 0
  %12 = extractvalue { ptr, i64 } %10, 1
  %13 = call ptr @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %13, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %15)
  %16 = call i64 %14(i64 100, i64 200)
  %17 = call i32 (ptr, ...) @printf(ptr @2, i64 %16, i64 %12)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testrt/result.main$1"() {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/result.main$1$1"
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

declare i32 @printf(ptr, ...)
