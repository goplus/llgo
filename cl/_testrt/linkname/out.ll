; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"4\00", align 1

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

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  call void @"github.com/goplus/llgo/cl/internal/linktarget.F"(ptr @0, ptr @1, ptr @2, ptr @3)
  call void @"github.com/goplus/llgo/cl/internal/linktarget.F"(ptr @4, ptr @5, ptr @6, ptr @7)
  ret void
}

declare void @"github.com/goplus/llgo/cl/internal/linktarget.F"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.init"()
