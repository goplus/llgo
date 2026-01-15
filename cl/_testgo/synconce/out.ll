; ModuleID = 'github.com/goplus/llgo/cl/_testgo/synconce'
source_filename = "github.com/goplus/llgo/cl/_testgo/synconce"

%sync.Once = type { %sync.Mutex, i1 }
%sync.Mutex = type { %"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Mutex", i32 }
%"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Mutex" = type { [64 x i8] }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/synconce.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testgo/synconce.once" = global %sync.Once zeroinitializer, align 4
@0 = private unnamed_addr constant [13 x i8] c"after once.Do", align 1
@1 = private unnamed_addr constant [14 x i8] c"once.Do called", align 1

define void @"github.com/goplus/llgo/cl/_testgo/synconce.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/synconce.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/synconce.init$guard", align 1
  call void @sync.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/synconce.main"() {
_llgo_0:
  call void @"sync.(*Once).Do"(ptr @"github.com/goplus/llgo/cl/_testgo/synconce.once", { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/synconce.main$1", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/synconce.main$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @sync.init()

declare void @"sync.(*Once).Do"(ptr, { ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
