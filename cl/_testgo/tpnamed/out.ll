; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tpnamed'
source_filename = "github.com/goplus/llgo/cl/_testgo/tpnamed"

%"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[error]" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/tpnamed.init$guard" = global i1 false, align 1

define %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[error]" @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[error]" { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1", ptr null }
}

define %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[error]" @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[error]" { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1", ptr null }
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
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
  %0 = call [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.RunIO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]"(%"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1", ptr null })
  ret void
}

define %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1", ptr null }
}

define [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1"() {
_llgo_0:
  ret [0 x i8] zeroinitializer
}

define linkonce [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.RunIO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]"(%"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.IO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %0, 0
  %3 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %1)
  %4 = call %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %2()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %3)
  %5 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %4, 1
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tpnamed.Future[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]" %4, 0
  %7 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  %8 = call [0 x i8] %6()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %7)
  ret [0 x i8] %8
}
