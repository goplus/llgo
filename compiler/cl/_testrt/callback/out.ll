; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"callback\0A\00", align 1

define void @main.callback(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = extractvalue { ptr, ptr } %1, 1
  %3 = extractvalue { ptr, ptr } %1, 0
  call void %3(ptr %2, ptr %0)
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

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  call void @main.callback(ptr @0, { ptr, ptr } { ptr @__llgo_stub.main.print, ptr null })
  call void @main.callback(ptr @1, { ptr, ptr } { ptr @__llgo_stub.main.print, ptr null })
  ret i32 0
}

define void @main.print(ptr %0) {
_llgo_0:
  %1 = call i32 (ptr, ...) @printf(ptr %0)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define linkonce void @__llgo_stub.main.print(ptr %0, ptr %1) {
_llgo_0:
  tail call void @main.print(ptr %1)
  ret void
}

declare i32 @printf(ptr, ...)
