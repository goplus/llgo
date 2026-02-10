; ModuleID = 'skip.zero.methods'
source_filename = "skip.zero.methods"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@name = private unnamed_addr constant [12 x i8] c"demo.Struct\00", align 1
@pkg = private unnamed_addr constant [4 x i8] c"demo", align 1

@_llgo_demo.SkipZeroMethods = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } {
  %"github.com/goplus/llgo/runtime/abi.StructType" {
    %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1, i8 0, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @name, i64 11 }, ptr null },
    %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @pkg, i64 4 },
    %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer
  },
  %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @pkg, i64 4 }, i16 0, i16 0, i32 24 },
  [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer
}, align 8
