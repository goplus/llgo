; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/typalias'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/typalias"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format" = global [10 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/compiler/cl/_testrt/typalias.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.Print"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds { i32, i1 }, ptr %0, i32 0, i32 1
  %2 = load i1, ptr %1, align 1
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = getelementptr inbounds { i32, i1 }, ptr %0, i32 0, i32 0
  %4 = load i32, ptr %3, align 4
  call void (ptr, ...) @printf(ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i32 %4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias._Cgo_ptr"(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @runtime.cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.init$guard", align 1
  call void @syscall.init()
  store i8 72, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.format", i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds { i32, i1 }, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds { i32, i1 }, ptr %0, i32 0, i32 1
  store i32 100, ptr %1, align 4
  store i1 true, ptr %2, align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/typalias.Print"(ptr %0)
  ret void
}

declare void @printf(ptr, ...)

declare void @syscall.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)
