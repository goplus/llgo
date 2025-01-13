; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testlibgo/nettextproto'
source_filename = "github.com/goplus/llgo/compiler/cl/_testlibgo/nettextproto"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/compiler/cl/_testlibgo/nettextproto.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"host", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testlibgo/nettextproto.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testlibgo/nettextproto.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testlibgo/nettextproto.init$guard", align 1
  call void @"net/textproto.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testlibgo/nettextproto.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"net/textproto.CanonicalMIMEHeaderKey"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"net/textproto.init"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"net/textproto.CanonicalMIMEHeaderKey"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
