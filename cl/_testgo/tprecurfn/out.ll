; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tprecurfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/tprecurfn"

%"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1", i64 0 }

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %0, i32 0, i32 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %2, i32 0, i32 0
  store ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1", ptr %3, align 8
  store ptr %2, ptr %1, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %7, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %9)
  call void %8(i64 100)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
