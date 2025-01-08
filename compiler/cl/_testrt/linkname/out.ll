; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%main.m = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.m.info"(%main.m)

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.init"()
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
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.F"(ptr @0, ptr @1, ptr @2, ptr @3)
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.F"(ptr @4, ptr @5, ptr @6, ptr @7)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.(*m).setInfo"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 })
  %3 = load %main.m, ptr %2, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.m.info"(%main.m %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.F"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.(*m).setInfo"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/compiler/cl/_testrt/linkname/linktarget.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
