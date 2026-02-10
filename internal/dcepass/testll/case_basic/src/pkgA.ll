; ModuleID = 'github.com/goplus/llgo/_demo/a'
source_filename = "github.com/goplus/llgo/_demo/a"

%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@nameLoad = private unnamed_addr constant [4 x i8] c"Load", align 1
@nameSave = private unnamed_addr constant [4 x i8] c"Save", align 1
@mtyp = global i8 0, align 1
@"*_llgo_github.com/goplus/llgo/_demo/a.A" = weak_odr constant { i8, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { i8 0, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [ %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @nameLoad, i64 4 }, ptr @mtyp, ptr @f_load_ifn, ptr @f_load_tfn }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @nameSave, i64 4 }, ptr @mtyp, ptr @f_save_ifn, ptr @f_save_tfn } ] }, align 8

declare void @f_load_ifn()
declare void @f_load_tfn()
declare void @f_save_ifn()
declare void @f_save_tfn()
