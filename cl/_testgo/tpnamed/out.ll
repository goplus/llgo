; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tpnamed'
source_filename = "github.com/goplus/llgo/cl/_testgo/tpnamed"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/tpnamed.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1", i64 0 }
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1", i64 0 }
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.main$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1", i64 0 }
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1", i64 0 }

define ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1"
}

define ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1"() {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.WriteFile$1$1"
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
  %0 = call [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.RunIO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]"(ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.main$1")
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1"() {
_llgo_0:
  ret ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1"
}

define [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.main$1$1"() {
_llgo_0:
  ret [0 x i8] zeroinitializer
}

define linkonce [0 x i8] @"github.com/goplus/llgo/cl/_testgo/tpnamed.RunIO[github.com/goplus/llgo/cl/_testgo/tpnamed.Void]"(ptr %0) {
_llgo_0:
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %2)
  %3 = call ptr %1()
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %3, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %5)
  %6 = call [0 x i8] %4()
  ret [0 x i8] %6
}
