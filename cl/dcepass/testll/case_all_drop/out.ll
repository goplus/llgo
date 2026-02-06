source_filename = "dcepass.test"
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
@"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = constant { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr @mtyp, ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr @mtyp, ptr null, ptr null }] }, align 8
@0 = private constant [1 x i8] c"M", align 1
@mtyp = external global i8
@1 = private constant [1 x i8] c"N", align 1
@"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = constant { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr @mtyp, ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr @mtyp, ptr null, ptr null }] }, align 8
