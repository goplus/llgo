; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/errors'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/errors"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testlibgo/errors.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testlibgo/errors.init"() #0 {
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

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testlibgo/errors.main"() #0 {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @errors.New(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %2, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare void @errors.init() #0

; Function Attrs: null_pointer_is_valid
declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @errors.New(%"github.com/goplus/llgo/runtime/internal/runtime.String") #0

; Function Attrs: null_pointer_is_valid
declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface") #0

; Function Attrs: null_pointer_is_valid
declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface") #0

attributes #0 = { null_pointer_is_valid }
