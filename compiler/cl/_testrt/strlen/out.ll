; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/strlen'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/strlen"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format" = global [10 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/compiler/cl/_testrt/strlen.init$guard" = global i1 false, align 1

define ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen._Cgo_ptr"(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @runtime.cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.init$guard", align 1
  call void @syscall.init()
  store i8 72, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.main"() {
_llgo_0:
  %0 = call i32 @strlen(ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format")
  call void (ptr, ...) @printf(ptr @"github.com/goplus/llgo/compiler/cl/_testrt/strlen.format", i32 %0)
  ret void
}

declare void @syscall.init()

declare i32 @strlen(ptr)

declare void @printf(ptr, ...)
