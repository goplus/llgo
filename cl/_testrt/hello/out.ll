; ModuleID = 'github.com/goplus/llgo/cl/_testrt/hello'
source_filename = "github.com/goplus/llgo/cl/_testrt/hello"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/hello.format" = global [10 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/cl/_testrt/hello.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/hello.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/hello.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/hello.init$guard", align 1
  store i8 72, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/hello.main"() {
_llgo_0:
  %0 = call i32 @strlen(ptr @"github.com/goplus/llgo/cl/_testrt/hello.format")
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i32 %0, ptr %1, align 4
  call void @printf(ptr @"github.com/goplus/llgo/cl/_testrt/hello.format", ptr %1)
  ret void
}

declare i32 @strlen(ptr)

declare void @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
