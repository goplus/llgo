; ModuleID = 'github.com/goplus/llgo/cl/_testcall/nofreeclosure'
source_filename = "github.com/goplus/llgo/cl/_testcall/nofreeclosure"

@"github.com/goplus/llgo/cl/_testcall/nofreeclosure.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testcall/nofreeclosure.main$1$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.main$1$1", i64 0 }

define void @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.main$1"()
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %2)
  %3 = call i64 %1(i64 1)
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.main$1"() {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testcall/nofreeclosure.main$1$1"
}

define i64 @"github.com/goplus/llgo/cl/_testcall/nofreeclosure.main$1$1"(i64 %0) {
_llgo_0:
  %1 = add i64 %0, 1
  ret i64 %1
}
