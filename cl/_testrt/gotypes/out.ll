; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1

define void @main.foo(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  ret void
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

define void @main.main() {
_llgo_0:
  call void @main.foo(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}
