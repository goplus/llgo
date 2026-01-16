; ModuleID = 'github.com/goplus/llgo/cl/_testrt/result'
source_filename = "github.com/goplus/llgo/cl/_testrt/result"

@"github.com/goplus/llgo/cl/_testrt/result.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.add"() {
_llgo_0:
  ret { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/result.add$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define { { ptr, ptr }, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"() {
_llgo_0:
  ret { { ptr, ptr }, i64 } { { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/result.add2$1", ptr null }, i64 1 }
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
  %0 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.main$1"()
  %1 = extractvalue { ptr, ptr } %0, 1
  %2 = extractvalue { ptr, ptr } %0, 0
  %3 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %1)
  %4 = call i64 %2(i64 100, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %3)
  %5 = call i32 (ptr, ...) @printf(ptr @0, i64 %4)
  %6 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %7)
  %10 = call i64 %8(i64 100, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %9)
  %11 = call i32 (ptr, ...) @printf(ptr @1, i64 %10)
  %12 = call { { ptr, ptr }, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"()
  %13 = extractvalue { { ptr, ptr }, i64 } %12, 0
  %14 = extractvalue { { ptr, ptr }, i64 } %12, 1
  %15 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %16)
  %19 = call i64 %17(i64 100, i64 200)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %18)
  %20 = call i32 (ptr, ...) @printf(ptr @2, i64 %19, i64 %14)
  ret void
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.main$1"() {
_llgo_0:
  ret { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/result.main$1$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

declare i32 @printf(ptr, ...)
