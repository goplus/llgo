; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testlibgo/strings'
source_filename = "github.com/goplus/llgo/compiler/cl/_testlibgo/strings"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/compiler/cl/_testlibgo/strings.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"Hello ", align 1
@1 = private unnamed_addr constant [5 x i8] c"World", align 1
@2 = private unnamed_addr constant [4 x i8] c"len:", align 1
@3 = private unnamed_addr constant [4 x i8] c"cap:", align 1
@4 = private unnamed_addr constant [7 x i8] c"string:", align 1
@5 = private unnamed_addr constant [13 x i8] c"Hello, \E4\B8\96\E7\95\8C", align 1
@6 = private unnamed_addr constant [12 x i8] c"Hello, world", align 1
@unicode.Han = external global ptr, align 8

define void @"github.com/goplus/llgo/compiler/cl/_testlibgo/strings.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testlibgo/strings.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testlibgo/strings.init$guard", align 1
  call void @strings.init()
  call void @unicode.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibgo/strings.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  %2 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).Write"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %3 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).WriteString"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 })
  %4 = call i64 @"strings.(*Builder).Len"(ptr %0)
  %5 = call i64 @"strings.(*Builder).Cap"(ptr %0)
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"strings.(*Builder).String"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i64 @strings.IndexFunc(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testlibgo/strings.main$1", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call i64 @strings.IndexFunc(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 12 }, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testlibgo/strings.main$1", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i1 @"github.com/goplus/llgo/compiler/cl/_testlibgo/strings.main$1"(i32 %0) {
_llgo_0:
  %1 = load ptr, ptr @unicode.Han, align 8
  %2 = call i1 @unicode.Is(ptr %1, i32 %0)
  ret i1 %2
}

declare void @strings.init()

declare void @unicode.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).Write"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"strings.(*Builder).WriteString"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @"strings.(*Builder).Len"(ptr)

declare i64 @"strings.(*Builder).Cap"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"strings.(*Builder).String"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare i64 @strings.IndexFunc(%"github.com/goplus/llgo/runtime/internal/runtime.String", { ptr, ptr })

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testlibgo/strings.main$1"(ptr %0, i32 %1) {
_llgo_0:
  %2 = tail call i1 @"github.com/goplus/llgo/compiler/cl/_testlibgo/strings.main$1"(i32 %1)
  ret i1 %2
}

declare i1 @unicode.Is(ptr, i32)
