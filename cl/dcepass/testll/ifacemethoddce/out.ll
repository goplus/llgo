; ModuleID = 'github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod'
source_filename = "github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod"

%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@nameM = private unnamed_addr constant [1 x i8] c"M", align 1
@nameN = private unnamed_addr constant [1 x i8] c"N", align 1
@mtyp = global i8 0, align 1
@"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = global { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @nameM, i64 1 }, ptr @mtyp, ptr @t_ifn_m, ptr @t_tfn_m }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @nameN, i64 1 }, ptr @mtyp, ptr null, ptr null }] }, align 8
@"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = global { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @nameM, i64 1 }, ptr @mtyp, ptr @pt_ifn_m, ptr @pt_tfn_m }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @nameN, i64 1 }, ptr @mtyp, ptr null, ptr null }] }, align 8

declare void @t_ifn_m()

declare void @t_tfn_m()

declare void @t_ifn_n()

declare void @t_tfn_n()

declare void @pt_ifn_m()

declare void @pt_tfn_m()

declare void @pt_ifn_n()

declare void @pt_tfn_n()
