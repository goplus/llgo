; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/errors'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/errors"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testlibgo/errors.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/errors.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/errors.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/errors.init$guard", align 1
  call void @errors.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/errors.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %1, align 8
  call void @errors.New(ptr %0, ptr %1)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %8, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %8)
  unreachable
}

declare void @errors.init()

declare void @errors.New(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)
