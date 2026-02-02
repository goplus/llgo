; ModuleID = 'github.com/goplus/llgo/cl/_testrt/callback'
source_filename = "github.com/goplus/llgo/cl/_testrt/callback"

@"github.com/goplus/llgo/cl/_testrt/callback.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/callback.print" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/callback.print", i64 0 }
@1 = private unnamed_addr constant [10 x i8] c"callback\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr i8, ptr %1, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %3)
  call void %2(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @0, ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/callback.print")
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr @1, ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/callback.print")
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %0) {
_llgo_0:
  %1 = call i32 (ptr, ...) @printf(ptr %0)
  ret void
}

declare i32 @printf(ptr, ...)
