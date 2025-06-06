; ModuleID = 'github.com/goplus/llgo/cl/_testrt/alloca'
source_filename = "github.com/goplus/llgo/cl/_testrt/alloca"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/alloca.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"Hi\0A\00", align 1
@1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/alloca.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/alloca.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/alloca.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/alloca.main"() {
_llgo_0:
  %0 = alloca i8, i64 4, align 1
  %1 = call ptr @memcpy(ptr %0, ptr @0, i64 4)
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 @printf(ptr @1, ptr %2)
  ret void
}

declare ptr @memcpy(ptr, ptr, i64)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
