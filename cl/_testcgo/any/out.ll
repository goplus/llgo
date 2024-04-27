; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@main.format = global ptr null
@"main.init$guard" = global ptr null

define i64 @main.incVal(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %2 = call i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %1)
  %3 = add i64 %2, 1
  ret i64 %3
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i8 72, ptr @main.format, align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @main.format, i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @main.format, i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @main.format, i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @main.format, i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @main.format, i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @main.format, i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @main.format, i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main() {
_llgo_0:
  call void @main.init()
  %0 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(i64 100)
  %1 = call i64 @main.incVal(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  call void (ptr, ...) @printf(ptr @main.format, i64 %1)
  ret void
}

declare void @printf(ptr, ...)

declare i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface", ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr, i64)
