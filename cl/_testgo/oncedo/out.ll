; ModuleID = 'github.com/goplus/llgo/cl/_testgo/oncedo'
source_filename = "github.com/goplus/llgo/cl/_testgo/oncedo"

%"github.com/goplus/llgo/cl/_testgo/oncedo.Once" = type { i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/oncedo.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testgo/oncedo.once" = global %"github.com/goplus/llgo/cl/_testgo/oncedo.Once" zeroinitializer, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/oncedo.main$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/oncedo.main$1", i64 0 }
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/oncedo.main$2" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/oncedo.main$2", i64 0 }
@0 = private unnamed_addr constant [4 x i8] c"done", align 1
@1 = private unnamed_addr constant [10 x i8] c"first call", align 1
@2 = private unnamed_addr constant [30 x i8] c"second call - should not print", align 1

define void @"github.com/goplus/llgo/cl/_testgo/oncedo.(*Once).Do"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/oncedo.Once", ptr %0, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/oncedo.Once", ptr %0, i32 0, i32 0
  store i1 true, ptr %4, align 1
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr i8, ptr %1, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  call void %5()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/oncedo.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/oncedo.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/oncedo.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/oncedo.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/oncedo.(*Once).Do"(ptr @"github.com/goplus/llgo/cl/_testgo/oncedo.once", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/oncedo.main$1")
  call void @"github.com/goplus/llgo/cl/_testgo/oncedo.(*Once).Do"(ptr @"github.com/goplus/llgo/cl/_testgo/oncedo.once", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/oncedo.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/oncedo.main$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/oncedo.main$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
