; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tpnamed'
source_filename = "github.com/goplus/llgo/cl/_testgo/tpnamed"

%"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/tpnamed.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile"(ptr %0, ptr %1) {
_llgo_0:
  store %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[error]" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1", ptr null }, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1"(ptr %0) {
_llgo_0:
  store %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[error]" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1", ptr null }, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1"(ptr %0) {
_llgo_0:
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpnamed.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpnamed.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]", align 8
  store %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.main$1", ptr null }, ptr %0, align 8
  %1 = call [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.RunIO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]"(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1"(ptr %0) {
_llgo_0:
  store %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1", ptr null }, ptr %0, align 8
  ret void
}

define [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1"() {
_llgo_0:
  ret [0 x i8] zeroinitializer
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[error]", align 8
  call void @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1"(ptr %2)
  %3 = load volatile %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[error]", ptr %2, align 4
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1"(ptr %2)
  %3 = load volatile %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 4
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]", align 8
  call void @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1"(ptr %2)
  %3 = load volatile %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]", ptr %2, align 4
  ret void
}

define linkonce [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.RunIO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]", ptr %0, align 8
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %1, 1
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %1, 0
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]", align 8
  call void %3(ptr %2, ptr %4)
  %5 = load %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %5, 1
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %5, 0
  %8 = call [0 x i8] %7(ptr %6)
  ret [0 x i8] %8
}

define linkonce [0 x i8] @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1"(ptr %0) {
_llgo_0:
  %1 = tail call [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1"()
  ret [0 x i8] %1
}
