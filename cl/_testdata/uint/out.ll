; ModuleID = 'github.com/goplus/llgo/cl/_testdata/uint'
source_filename = "github.com/goplus/llgo/cl/_testdata/uint"

@"github.com/goplus/llgo/cl/_testdata/uint.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [11 x i8] c"Hello, %u\0A\00", align 1

define i32 @"github.com/goplus/llgo/cl/_testdata/uint.f"(i32 %0) {
_llgo_0:
  %1 = add i32 %0, 1
  ret i32 %1
}

define void @"github.com/goplus/llgo/cl/_testdata/uint.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/uint.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/uint.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/uint.main"() {
_llgo_0:
  %0 = call i32 @"github.com/goplus/llgo/cl/_testdata/uint.f"(i32 100)
  %1 = call i32 (ptr, ...) @printf(ptr @0, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...)
