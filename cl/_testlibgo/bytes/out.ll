; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
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

define void @main.main() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  %2 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).Write"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %3 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"bytes.(*Buffer).WriteString"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"bytes.(*Buffer).Bytes"(ptr %0)
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"bytes.(*Buffer).String"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 })
  %8 = call i1 @bytes.EqualFold(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @bytes.init()

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
