; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/tpnamed'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/tpnamed"

%"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[[0]byte]" = type { ptr, ptr }
%"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" = type { ptr, ptr }

@"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.init$guard" = global i1 false, align 1

define %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[error]" @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[error]" { ptr @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1", ptr null }
}

define %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[error]" @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[error]" { ptr @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1$1", ptr null }
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main"() {
_llgo_0:
  %0 = call [0 x i8] @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.RunIO[[0]byte]"(%"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[[0]byte]" { ptr @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1", ptr null })
  ret void
}

define %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" { ptr @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1$1", ptr null }
}

define [0 x i8] @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1$1"() {
_llgo_0:
  ret [0 x i8] zeroinitializer
}

define linkonce %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[error]" @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1"(ptr %0) {
_llgo_0:
  %1 = tail call %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[error]" @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1"()
  ret %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[error]" %1
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1$1"(ptr %0) {
_llgo_0:
  %1 = tail call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.WriteFile$1$1"()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1
}

define linkonce %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1"(ptr %0) {
_llgo_0:
  %1 = tail call %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1"()
  ret %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" %1
}

define linkonce [0 x i8] @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.RunIO[[0]byte]"(%"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[[0]byte]" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[[0]byte]" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.IO[[0]byte]" %0, 0
  %3 = call %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" %2(ptr %1)
  %4 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" %3, 1
  %5 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.Future[[0]byte]" %3, 0
  %6 = call [0 x i8] %5(ptr %4)
  ret [0 x i8] %6
}

define linkonce [0 x i8] @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1$1"(ptr %0) {
_llgo_0:
  %1 = tail call [0 x i8] @"github.com/goplus/llgo/compiler/cl/_testgo/tpnamed.main$1$1"()
  ret [0 x i8] %1
}
