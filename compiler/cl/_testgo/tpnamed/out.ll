; ModuleID = 'main'
source_filename = "main"

%"main.IO[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"main.Future[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"main.IO[[0]byte]" = type { ptr, ptr }
%"main.Future[[0]byte]" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define %"main.IO[error]" @main.WriteFile(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  ret %"main.IO[error]" { ptr @"__llgo_stub.main.WriteFile$1", ptr null }
}

define %"main.Future[error]" @"main.WriteFile$1"() {
_llgo_0:
  ret %"main.Future[error]" { ptr @"__llgo_stub.main.WriteFile$1$1", ptr null }
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.WriteFile$1$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call [0 x i8] @"main.RunIO[[0]byte]"(%"main.IO[[0]byte]" { ptr @"__llgo_stub.main.main$1", ptr null })
  ret i32 0
}

define %"main.Future[[0]byte]" @"main.main$1"() {
_llgo_0:
  ret %"main.Future[[0]byte]" { ptr @"__llgo_stub.main.main$1$1", ptr null }
}

define [0 x i8] @"main.main$1$1"() {
_llgo_0:
  ret [0 x i8] zeroinitializer
}

define linkonce %"main.Future[error]" @"__llgo_stub.main.WriteFile$1"(ptr %0) {
_llgo_0:
  %1 = tail call %"main.Future[error]" @"main.WriteFile$1"()
  ret %"main.Future[error]" %1
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"__llgo_stub.main.WriteFile$1$1"(ptr %0) {
_llgo_0:
  %1 = tail call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.WriteFile$1$1"()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define linkonce %"main.Future[[0]byte]" @"__llgo_stub.main.main$1"(ptr %0) {
_llgo_0:
  %1 = tail call %"main.Future[[0]byte]" @"main.main$1"()
  ret %"main.Future[[0]byte]" %1
}

define linkonce [0 x i8] @"main.RunIO[[0]byte]"(%"main.IO[[0]byte]" %0) {
_llgo_0:
  %1 = extractvalue %"main.IO[[0]byte]" %0, 1
  %2 = extractvalue %"main.IO[[0]byte]" %0, 0
  %3 = call %"main.Future[[0]byte]" %2(ptr %1)
  %4 = extractvalue %"main.Future[[0]byte]" %3, 1
  %5 = extractvalue %"main.Future[[0]byte]" %3, 0
  %6 = call [0 x i8] %5(ptr %4)
  ret [0 x i8] %6
}

define linkonce [0 x i8] @"__llgo_stub.main.main$1$1"(ptr %0) {
_llgo_0:
  %1 = tail call [0 x i8] @"main.main$1$1"()
  ret [0 x i8] %1
}
