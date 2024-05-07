; ModuleID = 'main'
source_filename = "main"

@main.a = global ptr null
@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i64 100, ptr @main.a, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = load i64, ptr @main.a, align 4
  %3 = add i64 %2, 1
  store i64 %3, ptr @main.a, align 4
  %4 = load i64, ptr @main.a, align 4
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()
