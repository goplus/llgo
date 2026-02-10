source_filename = "dcepass.test"
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.Method.0" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String.1", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String.1" = type { ptr, i64 }
@"*_llgo_github.com/goplus/llgo/_demo/a.A" = constant { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, ptr @mtyp, ptr @f_load_ifn, ptr @f_load_tfn }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr @mtyp, ptr null, ptr null }] }, align 8
@0 = private constant [4 x i8] c"Load", align 1
@mtyp = external global i8
@1 = private constant [4 x i8] c"Save", align 1
@"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = constant { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method.0"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method.0"] [%"github.com/goplus/llgo/runtime/abi.Method.0" { %"github.com/goplus/llgo/runtime/internal/runtime.String.1" { ptr @2, i64 1 }, ptr @mtyp, ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method.0" { %"github.com/goplus/llgo/runtime/internal/runtime.String.1" { ptr @3, i64 1 }, ptr @mtyp, ptr @t_ifn_n, ptr @t_tfn_n }] }, align 8
@2 = private constant [1 x i8] c"M", align 1
@3 = private constant [1 x i8] c"N", align 1
@"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = constant { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method.0"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method.0"] [%"github.com/goplus/llgo/runtime/abi.Method.0" { %"github.com/goplus/llgo/runtime/internal/runtime.String.1" { ptr @2, i64 1 }, ptr @mtyp, ptr null, ptr null }, %"github.com/goplus/llgo/runtime/abi.Method.0" { %"github.com/goplus/llgo/runtime/internal/runtime.String.1" { ptr @3, i64 1 }, ptr @mtyp, ptr null, ptr null }] }, align 8
declare void @f_load_ifn()
declare void @f_load_tfn()
declare void @t_ifn_n()
declare void @t_tfn_n()
