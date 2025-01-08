; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [6 x i8] c"Hello ", align 1
@1 = private unnamed_addr constant [5 x i8] c"World", align 1
@2 = private unnamed_addr constant [3 x i8] c"buf", align 1
@3 = private unnamed_addr constant [2 x i8] c"Go", align 1
@4 = private unnamed_addr constant [2 x i8] c"go", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @bytes.init()
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  %4 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3)
  %5 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %2)
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 })
  %10 = call i1 @bytes.EqualFold(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @bytes.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @bytes.EqualFold(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)
