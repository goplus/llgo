; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/c/pthread/sync.Once" = type { i64, [8 x i8] }

@"main.init$guard" = global i1 false, align 1
@main.once = global %"github.com/goplus/llgo/c/pthread/sync.Once" zeroinitializer, align 8
@"github.com/goplus/llgo/c/pthread/sync.OnceInit" = external global %"github.com/goplus/llgo/c/pthread/sync.Once", align 8
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [9 x i8] c"Do once\0A\00", align 1

define void @main.f() {
_llgo_0:
  %0 = call i32 @pthread_once(ptr @main.once, ptr @"main.f$1")
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  %1 = load %"github.com/goplus/llgo/c/pthread/sync.Once", ptr @"github.com/goplus/llgo/c/pthread/sync.OnceInit", align 4
  store %"github.com/goplus/llgo/c/pthread/sync.Once" %1, ptr @main.once, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  call void @main.f()
  call void @main.f()
  ret i32 0
}

declare i32 @pthread_once(ptr, ptr)

define void @"main.f$1"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @0)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @printf(ptr, ...)
