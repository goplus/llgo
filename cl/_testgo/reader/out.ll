; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reader'
source_filename = "github.com/goplus/llgo/cl/_testgo/reader"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/reader.errorString" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/cl/_testgo/reader.stringReader" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/reader.EOF" = global %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite" = global %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1496804321, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs$imethods", i64 1, i64 1 } }, align 8
@0 = private unnamed_addr constant [13 x i8] c"main.WriterTo", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2025713268, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" }, align 8
@1 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/reader", align 1
@2 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 306543811, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 32 }, ptr @"*_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$out", i64 2, i64 2 } }, align 8
@3 = private unnamed_addr constant [32 x i8] c"func(main.Writer) (int64, error)", align 1
@"*_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1170995737, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 32 }, ptr null }, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2135553712, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [11 x i8] c"main.Writer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 466144066, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" }, align 8
@5 = private unnamed_addr constant [5 x i8] c"Write", align 1
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -58533757, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 26 }, ptr @"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out", i64 2, i64 2 } }, align 8
@6 = private unnamed_addr constant [26 x i8] c"func([]uint8) (int, error)", align 1
@"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1244675479, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 26 }, ptr null }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@7 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@8 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 3 }, ptr @"*_llgo_int" }, align 8
@9 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@11 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@12 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @"*_llgo_string" }, align 8
@13 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }], align 8
@"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer"], align 8
@_llgo_int64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 394795202, i8 12, i8 8, i8 8, i8 6, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"*_llgo_int64" }, align 8
@14 = private unnamed_addr constant [5 x i8] c"int64", align 1
@"*_llgo_int64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1901231210, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr null }, ptr @_llgo_int64 }, align 8
@"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" }], align 8
@"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 999934762, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 49 }, ptr @"*_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [49 x i8] c"interface { WriteTo(main.Writer) (int64, error) }", align 1
@"*_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1324065545, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 49 }, ptr null }, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2131804033, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo" }] }, align 8
@16 = private unnamed_addr constant [22 x i8] c"main.nopCloserWriterTo", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2074015848, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo" }] }, align 8
@17 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1183719404, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 12 }, ptr @"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [12 x i8] c"func() error", align 1
@"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1571491799, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 12 }, ptr null }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, align 8
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@19 = private unnamed_addr constant [4 x i8] c"Read", align 1
@20 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1318060398, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods", i64 1, i64 1 } }, align 8
@21 = private unnamed_addr constant [11 x i8] c"main.Reader", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 688483744, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" }, align 8
@"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }], align 8
@"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 6 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -330631760, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 55 }, ptr @"*_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84$imethods", i64 2, i64 2 } }, align 8
@22 = private unnamed_addr constant [55 x i8] c"interface { Close() error; Read([]uint8) (int, error) }", align 1
@"*_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -322135592, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 55 }, ptr null }, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" }, align 8
@"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1105494488, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 14 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read" }] }, align 8
@23 = private unnamed_addr constant [14 x i8] c"main.nopCloser", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1379326590, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 14 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 907110884, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU$imethods", i64 1, i64 1 } }, align 8
@24 = private unnamed_addr constant [17 x i8] c"main.StringWriter", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 128707447, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" }, align 8
@25 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -183202291, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 25 }, ptr @"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out", i64 2, i64 2 } }, align 8
@26 = private unnamed_addr constant [25 x i8] c"func(string) (int, error)", align 1
@"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1229992101, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 25 }, ptr null }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 11 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }], align 8
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1973521222, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 46 }, ptr @"*_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU$imethods", i64 1, i64 1 } }, align 8
@27 = private unnamed_addr constant [46 x i8] c"interface { WriteString(string) (int, error) }", align 1
@"*_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1598946471, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 46 }, ptr null }, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" }, align 8
@28 = private unnamed_addr constant [3 x i8] c"EOF", align 1
@29 = private unnamed_addr constant [11 x i8] c"short write", align 1
@30 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [10 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1218063015, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 10, i16 10, i32 24 }, [10 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 6 }, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 8 }, ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 4 }, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 10 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo" }] }, align 8
@31 = private unnamed_addr constant [17 x i8] c"main.stringReader", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 -2042302092, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@32 = private unnamed_addr constant [1 x i8] c"s", align 1
@33 = private unnamed_addr constant [1 x i8] c"i", align 1
@34 = private unnamed_addr constant [8 x i8] c"prevRune", align 1
@"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 1 }, ptr @_llgo_int64, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 8 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@35 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@36 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@37 = private unnamed_addr constant [6 x i8] c"ReadAt", align 1
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 475784095, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 33 }, ptr @"*_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$out", i64 2, i64 2 } }, align 8
@38 = private unnamed_addr constant [33 x i8] c"func([]uint8, int64) (int, error)", align 1
@"*_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -943934209, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 33 }, ptr null }, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" }, align 8
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$in" = weak_odr constant [2 x ptr] [ptr @"[]_llgo_uint8", ptr @_llgo_int64], align 8
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@39 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1499372428, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 21 }, ptr @"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out", i64 2, i64 2 } }, align 8
@40 = private unnamed_addr constant [21 x i8] c"func() (uint8, error)", align 1
@"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1164205677, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 21 }, ptr null }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, align 8
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out" = weak_odr constant [2 x ptr] [ptr @_llgo_uint8, ptr @_llgo_error], align 8
@41 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1043083527, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 26 }, ptr @"*_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y$out", i64 3, i64 3 } }, align 8
@42 = private unnamed_addr constant [26 x i8] c"func() (int32, int, error)", align 1
@"*_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 746645372, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 26 }, ptr null }, ptr @"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y" }, align 8
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 5, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr @"*_llgo_int32" }, align 8
@43 = private unnamed_addr constant [5 x i8] c"int32", align 1
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@"_llgo_func$q-bw-_pPYBCXnr1TXIF8sOD4fVVzzIlpHqD-A13AB4Y$out" = weak_odr constant [3 x ptr] [ptr @_llgo_int32, ptr @_llgo_int, ptr @_llgo_error], align 8
@44 = private unnamed_addr constant [4 x i8] c"Seek", align 1
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367037366, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 31 }, ptr @"*_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$out", i64 2, i64 2 } }, align 8
@45 = private unnamed_addr constant [31 x i8] c"func(int64, int) (int64, error)", align 1
@"*_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1356075299, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 31 }, ptr null }, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" }, align 8
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$in" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_int], align 8
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@46 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1236366245, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 12 }, ptr @"*_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug$out", i64 1, i64 1 } }, align 8
@47 = private unnamed_addr constant [12 x i8] c"func() int64", align 1
@"*_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 137110153, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 12 }, ptr null }, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" }, align 8
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int64], align 8
@48 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@49 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2028598289, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 40 }, ptr @"*_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods", i64 1, i64 1 } }, align 8
@50 = private unnamed_addr constant [40 x i8] c"interface { Read([]uint8) (int, error) }", align 1
@"*_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1109399972, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 40 }, ptr null }, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 881334858, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error" }] }, align 8
@51 = private unnamed_addr constant [16 x i8] c"main.errorString", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 -690024693, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1583200459, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 28 }, ptr @"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@52 = private unnamed_addr constant [28 x i8] c"interface { Error() string }", align 1
@"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 722800013, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 28 }, ptr null }, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, align 8
@53 = private unnamed_addr constant [50 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 1
@54 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.Reader", align 1
@55 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 1
@56 = private unnamed_addr constant [58 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 1
@57 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@58 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@59 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@60 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@61 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@62 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@63 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.NopCloser"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %9 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", ptr %8)
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %10 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 16, i1 false)
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %10, i32 0, i32 0
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %25, align 8
  call void @runtime.StoreHiddenPointee(i64 %24, ptr %25, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %10, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %27, ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %29, ptr %10)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo")
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %29, 1
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32

_llgo_2:                                          ; preds = %_llgo_5
  %33 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %33, i8 0, i64 16, i1 false)
  %34 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %33, i32 0, i32 0
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = shl i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = lshr i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = or i64 %44, -6557241057451442176
  store i64 %45, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %45)
  call void @runtime.ClobberPointerRegs()
  %46 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %5, align 4
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %48, align 8
  call void @runtime.StoreHiddenPointee(i64 %47, ptr %48, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %48, align 8
  call void @runtime.TouchConservativeSlot(ptr %48, i64 16)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %49 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %33, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %50, ptr %7, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" zeroinitializer, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 16)
  call void @runtime.ClobberPointerRegs()
  %51 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %52, ptr %33)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser")
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %53, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, ptr %52, 1
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %55

_llgo_3:                                          ; preds = %_llgo_0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", ptr %8)
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %56, 1
  %60 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, 0
  %61 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %60, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %62 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %61, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %62, ptr %1, align 8
  %63 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %1, align 8
  %65 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %64, 0
  %66 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %1, align 8
  %68 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %67, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  call void @runtime.ClobberPointerRegs()
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  call void @runtime.ClobberPointerRegs()
  br i1 %68, label %_llgo_1, label %_llgo_2
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %4, align 8
  %5 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 0, i64 512, i64 1)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_6, %_llgo_3, %_llgo_0
  %15 = phi %"github.com/goplus/llgo/runtime/internal/runtime.Slice" [ %14, %_llgo_0 ], [ %67, %_llgo_3 ], [ %155, %_llgo_6 ]
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %16)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 2
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 1
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 0
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr %22, i64 1, i64 %20, i64 %17, i64 %19)
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %24, align 8
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %24, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, ptr %4, align 8
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 0
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = shl i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = lshr i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = or i64 %36, -6557241057451442176
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 1
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 2
  %40 = insertvalue { i64, i64, i64 } undef, i64 %37, 0
  %41 = insertvalue { i64, i64, i64 } %40, i64 %38, 1
  %42 = insertvalue { i64, i64, i64 } %41, i64 %39, 2
  store { i64, i64, i64 } %42, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  call void @runtime.ClobberPointerRegs()
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %45 = getelementptr ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  %47 = insertvalue { ptr, ptr } undef, ptr %46, 0
  %48 = insertvalue { ptr, ptr } %47, ptr %43, 1
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %50 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %4, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  call void @runtime.ClobberPointerRegs()
  %52 = extractvalue { ptr, ptr } %48, 1
  %53 = extractvalue { ptr, ptr } %48, 0
  %54 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %53(ptr %52, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %49)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %54, ptr %5, align 8
  %55 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %57 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %56, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %57, ptr %6, align 8
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %58)
  %60 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %62 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %61, 0
  %63 = add i64 %59, %62
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 2
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 1
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 0
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr %66, i64 1, i64 %64, i64 0, i64 %63)
  %68 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %69)
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %69, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %70, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr %71, 1
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %74, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr null, 1
  %77 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76)
  %78 = xor i1 %77, true
  br i1 %78, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, ptr %7, align 8
  %80 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %82 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %81)
  %85 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %81, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %84, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %86, ptr %85, 1
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %83)
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %88, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %89, 1
  %92 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %87, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %91)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %93 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  br i1 %92, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %95)
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %97)
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %_llgo_6, label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  %100 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %94, %_llgo_2 ], [ zeroinitializer, %_llgo_4 ]
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %101 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 0
  %102 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %101, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %100, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %102

_llgo_6:                                          ; preds = %_llgo_3
  %103 = call i64 @runtime.AllocZHidden(i64 1)
  store i64 %103, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %103)
  %104 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load i64, ptr %8, align 4
  %106 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %107 = call i64 @runtime.AdvanceHiddenPointer(i64 %105, i64 %106)
  store i64 %107, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %107)
  %108 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load i64, ptr %10, align 4
  %110 = alloca i8, align 1
  store i8 0, ptr %110, align 1
  call void @runtime.StoreHiddenPointee(i64 %109, ptr %110, i64 1)
  store i8 0, ptr %110, align 1
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %111 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load i64, ptr %8, align 4
  %113 = and i64 %112, 72057594037927935
  %114 = lshr i64 %113, 17
  %115 = select i1 false, i64 0, i64 %114
  %116 = shl i64 %113, 39
  %117 = select i1 false, i64 0, i64 %116
  %118 = or i64 %115, %117
  %119 = and i64 %118, 72057594037927935
  %120 = xor i64 %119, 25399393228665167
  %121 = inttoptr i64 %120 to ptr
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %121, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 1
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i64 1, 2
  %125 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, ptr %125, align 8
  %126 = icmp eq ptr %125, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %126)
  %127 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %125, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, ptr %13, align 8
  %128 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, 0
  %129 = ptrtoint ptr %128 to i64
  %130 = and i64 %129, 72057594037927935
  %131 = xor i64 %130, 25399393228665167
  %132 = shl i64 %131, 17
  %133 = select i1 false, i64 0, i64 %132
  %134 = lshr i64 %131, 39
  %135 = select i1 false, i64 0, i64 %134
  %136 = or i64 %133, %135
  %137 = and i64 %136, 72057594037927935
  %138 = or i64 %137, -6557241057451442176
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, 1
  %140 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, 2
  %141 = insertvalue { i64, i64, i64 } undef, i64 %138, 0
  %142 = insertvalue { i64, i64, i64 } %141, i64 %139, 1
  %143 = insertvalue { i64, i64, i64 } %142, i64 %140, 2
  store { i64, i64, i64 } %143, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %125, align 8
  call void @runtime.TouchConservativeSlot(ptr %125, i64 24)
  call void @runtime.ClobberPointerRegs()
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %145 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %145)
  %146 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  %147 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %146, 0
  %148 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %146, 1
  %149 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, ptr %147, i64 %148, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %144)
  %150 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %151 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %150)
  %152 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, 2
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, 1
  %154 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, 0
  %155 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr %154, i64 1, i64 %152, i64 0, i64 %151)
  br label %_llgo_1
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca { i64, i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  %8 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %11 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", ptr %10)
  br i1 %11, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %12 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %2, align 8
  %14 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %13, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, ptr %3, align 8
  %15 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, 0
  %19 = getelementptr ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr } %21, ptr %17, 1
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %24 = extractvalue { ptr, ptr } %22, 1
  %25 = extractvalue { ptr, ptr } %22, 0
  %26 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %25(ptr %24, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26, ptr %4, align 8
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %4, align 8
  %29 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %28, 0
  %30 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %4, align 8
  %32 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %5, align 8
  %33 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  %35 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %29, 0
  %36 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %35, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %36

_llgo_2:                                          ; preds = %_llgo_5
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, ptr %38, align 8
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %38, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, ptr %7, align 8
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = shl i64 %44, 17
  %46 = select i1 false, i64 0, i64 %45
  %47 = lshr i64 %44, 39
  %48 = select i1 false, i64 0, i64 %47
  %49 = or i64 %46, %48
  %50 = and i64 %49, 72057594037927935
  %51 = or i64 %50, -6557241057451442176
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 2
  %54 = insertvalue { i64, i64, i64 } undef, i64 %51, 0
  %55 = insertvalue { i64, i64, i64 } %54, i64 %52, 1
  %56 = insertvalue { i64, i64, i64 } %55, i64 %53, 2
  store { i64, i64, i64 } %56, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 24)
  call void @runtime.ClobberPointerRegs()
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %59 = getelementptr ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  %61 = insertvalue { ptr, ptr } undef, ptr %60, 0
  %62 = insertvalue { ptr, ptr } %61, ptr %57, 1
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %64 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  %66 = extractvalue { ptr, ptr } %62, 1
  %67 = extractvalue { ptr, ptr } %62, 0
  %68 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %67(ptr %66, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %63)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %68, ptr %8, align 8
  %69 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %8, align 8
  %71 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %70, 0
  %72 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %8, align 8
  %74 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %73, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %74, ptr %9, align 8
  %75 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %77 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %71, 0
  %78 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %77, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %78

_llgo_3:                                          ; preds = %_llgo_0
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", ptr %10)
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %80, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %81, ptr %79, 1
  %83 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %82, 0
  %84 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %83, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %85 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %84, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  store { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %85, ptr %2, align 8
  %86 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 }, ptr %2, align 8
  %88 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %87, 1
  br i1 %88, label %_llgo_1, label %_llgo_2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %7, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %22, i64 %21, i64 16)
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, ptr %25, align 8
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, ptr %4, align 8
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, 0
  %29 = ptrtoint ptr %28 to i64
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = shl i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = lshr i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = or i64 %37, -6557241057451442176
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, 1
  %40 = insertvalue { i64, i64 } undef, i64 %38, 0
  %41 = insertvalue { i64, i64 } %40, i64 %39, 1
  store { i64, i64 } %41, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %43
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.init"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %2 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  br i1 %2, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  call void @"unicode/utf8.init"()
  %3 = and i64 ptrtoint (ptr @28 to i64), 72057594037927935
  %4 = xor i64 %3, 25399393228665167
  %5 = shl i64 %4, 17
  %6 = select i1 false, i64 0, i64 %5
  %7 = lshr i64 %4, 39
  %8 = select i1 false, i64 0, i64 %7
  %9 = or i64 %6, %8
  %10 = and i64 %9, 72057594037927935
  %11 = or i64 %10, -6557241057451442176
  %12 = insertvalue { i64, i64 } undef, i64 %11, 0
  %13 = insertvalue { i64, i64 } %12, i64 3, 1
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %13)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, ptr %0, align 8
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  %17 = and i64 ptrtoint (ptr @29 to i64), 72057594037927935
  %18 = xor i64 %17, 25399393228665167
  %19 = shl i64 %18, 17
  %20 = select i1 false, i64 0, i64 %19
  %21 = lshr i64 %18, 39
  %22 = select i1 false, i64 0, i64 %21
  %23 = or i64 %20, %22
  %24 = and i64 %23, 72057594037927935
  %25 = or i64 %24, -6557241057451442176
  %26 = insertvalue { i64, i64 } undef, i64 %25, 0
  %27 = insertvalue { i64, i64 } %26, i64 11, 1
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %27)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %1, align 8
  %29 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %5 = alloca { i64, i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  %10 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %10, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %10)
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load i64, ptr %0, align 4
  %13 = and i64 %12, 72057594037927935
  %14 = lshr i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = shl i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %21, i32 0, i32 0
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %2, align 4
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 11 }, ptr %36, align 8
  call void @runtime.StoreHiddenPointee(i64 %35, ptr %36, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 16)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = and i64 %38, 72057594037927935
  %40 = lshr i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = shl i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = inttoptr i64 %46 to ptr
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader")
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, ptr %47, 1
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %51)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %52, ptr %4, align 8
  %53 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %4, align 8
  %55 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %54, 0
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, ptr %56, align 8
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %56, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, ptr %6, align 8
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 0
  %60 = ptrtoint ptr %59 to i64
  %61 = and i64 %60, 72057594037927935
  %62 = xor i64 %61, 25399393228665167
  %63 = shl i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = lshr i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = or i64 %68, -6557241057451442176
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 1
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 2
  %72 = insertvalue { i64, i64, i64 } undef, i64 %69, 0
  %73 = insertvalue { i64, i64, i64 } %72, i64 %70, 1
  %74 = insertvalue { i64, i64, i64 } %73, i64 %71, 2
  store { i64, i64, i64 } %74, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %56, align 8
  call void @runtime.TouchConservativeSlot(ptr %56, i64 24)
  call void @runtime.ClobberPointerRegs()
  %75 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %6, align 8
  %77 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76)
  %78 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %77, ptr %78, align 8
  %79 = icmp eq ptr %78, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %78, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %80, ptr %9, align 8
  %81 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %80, 0
  %82 = ptrtoint ptr %81 to i64
  %83 = and i64 %82, 72057594037927935
  %84 = xor i64 %83, 25399393228665167
  %85 = shl i64 %84, 17
  %86 = select i1 false, i64 0, i64 %85
  %87 = lshr i64 %84, 39
  %88 = select i1 false, i64 0, i64 %87
  %89 = or i64 %86, %88
  %90 = and i64 %89, 72057594037927935
  %91 = or i64 %90, -6557241057451442176
  %92 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %80, 1
  %93 = insertvalue { i64, i64 } undef, i64 %91, 0
  %94 = insertvalue { i64, i64 } %93, i64 %92, 1
  store { i64, i64 } %94, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %78, align 8
  call void @runtime.TouchConservativeSlot(ptr %78, i64 16)
  call void @runtime.ClobberPointerRegs()
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %96 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %98 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %4, align 8
  %100 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %99, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %100, ptr %7, align 8
  %101 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 40)
  store { i64, i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %97)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %95)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, 0
  %2 = ptrtoint ptr %1 to i64
  %3 = and i64 %2, 72057594037927935
  %4 = xor i64 %3, 25399393228665167
  %5 = shl i64 %4, 17
  %6 = select i1 false, i64 0, i64 %5
  %7 = lshr i64 %4, 39
  %8 = select i1 false, i64 0, i64 %7
  %9 = or i64 %6, %8
  %10 = and i64 %9, 72057594037927935
  %11 = or i64 %10, -6557241057451442176
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, 1
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %14)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15
}

; Function Attrs: noinline
define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %0) #0 {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %5, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %5)
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load i64, ptr %1, align 4
  %8 = and i64 %7, 72057594037927935
  %9 = lshr i64 %8, 17
  %10 = select i1 false, i64 0, i64 %9
  %11 = shl i64 %8, 39
  %12 = select i1 false, i64 0, i64 %11
  %13 = or i64 %10, %12
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %16, i32 0, i32 0
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = shl i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = lshr i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = or i64 %27, -6557241057451442176
  store i64 %28, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %28)
  call void @runtime.ClobberPointerRegs()
  %29 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %3, align 4
  %31 = extractvalue { i64, i64 } %0, 0
  %32 = and i64 %31, 72057594037927935
  %33 = lshr i64 %32, 17
  %34 = select i1 false, i64 0, i64 %33
  %35 = shl i64 %32, 39
  %36 = select i1 false, i64 0, i64 %35
  %37 = or i64 %34, %36
  %38 = and i64 %37, 72057594037927935
  %39 = xor i64 %38, 25399393228665167
  %40 = inttoptr i64 %39 to ptr
  %41 = extractvalue { i64, i64 } %0, 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %42, i64 %41, 1
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %43, ptr %44, align 8
  call void @runtime.StoreHiddenPointee(i64 %30, ptr %44, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 16)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %1, align 4
  %47 = and i64 %46, 72057594037927935
  %48 = lshr i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = shl i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = xor i64 %53, 25399393228665167
  %55 = inttoptr i64 %54 to ptr
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString")
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %56, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %57, ptr %55, 1
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %8, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0, ptr %8, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %8, i32 0, i32 0
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %23, i64 %22, i64 16)
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %27)
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, 0
  %30 = getelementptr ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = insertvalue { ptr, ptr } undef, ptr %31, 0
  %33 = insertvalue { ptr, ptr } %32, ptr %28, 1
  %34 = extractvalue { ptr, ptr } %33, 0
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %34)
  %36 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %38 = extractvalue { ptr, ptr } %33, 1
  %39 = extractvalue { ptr, ptr } %33, 0
  %40 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  %41 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %43 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, 0
  %44 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %46 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %45, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %6, align 8
  %47 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %49 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %43, 0
  %50 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %48, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 50 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %10 = ptrtoint ptr %7 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @runtime.LoadHiddenPointee(ptr %22, i64 %21, i64 16)
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %22, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" zeroinitializer, ptr %22, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %24, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %4, align 8
  %29 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30

_llgo_3:                                          ; No predecessors!
  unreachable
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %10, i32 0, i32 0
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %25, i64 %24, i64 16)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, ptr %4, align 8
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %29)
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 0
  %32 = getelementptr ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = insertvalue { ptr, ptr } undef, ptr %33, 0
  %35 = insertvalue { ptr, ptr } %34, ptr %30, 1
  %36 = extractvalue { ptr, ptr } %35, 0
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %36)
  %38 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %40 = extractvalue { ptr, ptr } %35, 1
  %41 = extractvalue { ptr, ptr } %35, 0
  %42 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41(ptr %40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %37)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %45 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, 0
  %46 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %48 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %48, ptr %6, align 8
  %49 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %51 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %45, 0
  %52 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %52
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %8, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, ptr %8, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %8, i32 0, i32 0
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %23, i64 %22, i64 16)
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %27)
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, 0
  %30 = getelementptr ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = insertvalue { ptr, ptr } undef, ptr %31, 0
  %33 = insertvalue { ptr, ptr } %32, ptr %28, 1
  %34 = extractvalue { ptr, ptr } %33, 0
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %34)
  %36 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %38 = extractvalue { ptr, ptr } %33, 1
  %39 = extractvalue { ptr, ptr } %33, 0
  %40 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %39(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  call void @runtime.ClobberPointerRegs()
  %41 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %43 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, 0
  %44 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %46 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %45, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %6, align 8
  %47 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %49 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %43, 0
  %50 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %48, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %9, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, ptr %9, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %9, i32 0, i32 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %24, i64 %23, i64 16)
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %24, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %24, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %28)
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", ptr %29)
  br i1 %30, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, 1
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", ptr %29)
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %31, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr %5, align 8
  %35 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %36)
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, 0
  %39 = getelementptr ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = insertvalue { ptr, ptr } undef, ptr %40, 0
  %42 = insertvalue { ptr, ptr } %41, ptr %37, 1
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %44 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  %46 = extractvalue { ptr, ptr } %42, 1
  %47 = extractvalue { ptr, ptr } %42, 0
  %48 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47(ptr %46, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %43)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %49 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %51 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %50, 0
  %52 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %6, align 8
  %54 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %53, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, ptr %7, align 8
  %55 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %57 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %51, 0
  %58 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %57, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %56, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %58

_llgo_2:                                          ; preds = %_llgo_0
  %59 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 47 }, ptr %29, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  unreachable

_llgo_3:                                          ; No predecessors!
  unreachable
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 58 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %10 = ptrtoint ptr %7 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @runtime.LoadHiddenPointee(ptr %22, i64 %21, i64 16)
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %22, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %22, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %24, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %4, align 8
  %29 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30

_llgo_3:                                          ; No predecessors!
  unreachable
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %10, i32 0, i32 0
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %25, i64 %24, i64 16)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, ptr %4, align 8
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %29)
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 0
  %32 = getelementptr ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = insertvalue { ptr, ptr } undef, ptr %33, 0
  %35 = insertvalue { ptr, ptr } %34, ptr %30, 1
  %36 = extractvalue { ptr, ptr } %35, 0
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %36)
  %38 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %40 = extractvalue { ptr, ptr } %35, 1
  %41 = extractvalue { ptr, ptr } %35, 0
  %42 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41(ptr %40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %37)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %45 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, 0
  %46 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %48 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %48, ptr %6, align 8
  %49 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %51 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %45, 0
  %52 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %52
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %5 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  %9 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load ptr, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %12 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 58 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %13 = ptrtoint ptr %10 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %22)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %2, align 4
  %25 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @runtime.LoadHiddenPointee(ptr %25, i64 %24, i64 16)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %25, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %25, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %27, ptr %4, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo")
  %29 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %4, align 8
  %31 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %33 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %30, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %33, ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %34 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %36 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %35, 0
  %37 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %39 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %38, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %6, align 8
  %40 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %42 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %36, 0
  %43 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %42, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %43

_llgo_3:                                          ; No predecessors!
  unreachable
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca { i64, i64 }, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = shl i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = lshr i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = or i64 %23, -6557241057451442176
  store i64 %24, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %1, align 4
  %27 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %27, i64 %26, i64 8)
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %27, align 4
  store i64 0, ptr %27, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %30 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = shl i64 %34, 17
  %36 = select i1 false, i64 0, i64 %35
  %37 = lshr i64 %34, 39
  %38 = select i1 false, i64 0, i64 %37
  %39 = or i64 %36, %38
  %40 = and i64 %39, 72057594037927935
  %41 = or i64 %40, -6557241057451442176
  store i64 %41, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %41)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load i64, ptr %3, align 4
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %44, i64 %43, i64 16)
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %44, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %44, align 8
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %46, ptr %47, align 8
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %47, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, ptr %6, align 8
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, 0
  %51 = ptrtoint ptr %50 to i64
  %52 = and i64 %51, 72057594037927935
  %53 = xor i64 %52, 25399393228665167
  %54 = shl i64 %53, 17
  %55 = select i1 false, i64 0, i64 %54
  %56 = lshr i64 %53, 39
  %57 = select i1 false, i64 0, i64 %56
  %58 = or i64 %55, %57
  %59 = and i64 %58, 72057594037927935
  %60 = or i64 %59, -6557241057451442176
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %49, 1
  %62 = insertvalue { i64, i64 } undef, i64 %60, 0
  %63 = insertvalue { i64, i64 } %62, i64 %61, 1
  store { i64, i64 } %63, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %47, align 8
  call void @runtime.TouchConservativeSlot(ptr %47, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %65 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %67 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %66, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %64)
  %68 = icmp sge i64 %29, %67
  br i1 %68, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 0

_llgo_2:                                          ; preds = %_llgo_0
  %69 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %71 = ptrtoint ptr %70 to i64
  %72 = and i64 %71, 72057594037927935
  %73 = xor i64 %72, 25399393228665167
  %74 = shl i64 %73, 17
  %75 = select i1 false, i64 0, i64 %74
  %76 = lshr i64 %73, 39
  %77 = select i1 false, i64 0, i64 %76
  %78 = or i64 %75, %77
  %79 = and i64 %78, 72057594037927935
  %80 = or i64 %79, -6557241057451442176
  store i64 %80, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %80)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %7, align 4
  %83 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %83, i64 %82, i64 16)
  %84 = icmp eq ptr %83, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %83, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %83, align 8
  %86 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %85, ptr %86, align 8
  %87 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %86, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %88, ptr %10, align 8
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %88, 0
  %90 = ptrtoint ptr %89 to i64
  %91 = and i64 %90, 72057594037927935
  %92 = xor i64 %91, 25399393228665167
  %93 = shl i64 %92, 17
  %94 = select i1 false, i64 0, i64 %93
  %95 = lshr i64 %92, 39
  %96 = select i1 false, i64 0, i64 %95
  %97 = or i64 %94, %96
  %98 = and i64 %97, 72057594037927935
  %99 = or i64 %98, -6557241057451442176
  %100 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %88, 1
  %101 = insertvalue { i64, i64 } undef, i64 %99, 0
  %102 = insertvalue { i64, i64 } %101, i64 %100, 1
  store { i64, i64 } %102, ptr %9, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %86, align 8
  call void @runtime.TouchConservativeSlot(ptr %86, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %104 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %10, align 8
  store { i64, i64 } zeroinitializer, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  %106 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %105, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %103)
  %107 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i64
  %110 = and i64 %109, 72057594037927935
  %111 = xor i64 %110, 25399393228665167
  %112 = shl i64 %111, 17
  %113 = select i1 false, i64 0, i64 %112
  %114 = lshr i64 %111, 39
  %115 = select i1 false, i64 0, i64 %114
  %116 = or i64 %113, %115
  %117 = and i64 %116, 72057594037927935
  %118 = or i64 %117, -6557241057451442176
  store i64 %118, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %118)
  call void @runtime.ClobberPointerRegs()
  %119 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load i64, ptr %11, align 4
  %121 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %121, i64 %120, i64 8)
  %122 = icmp eq ptr %121, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %122)
  %123 = load i64, ptr %121, align 4
  store i64 0, ptr %121, align 4
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  %124 = sub i64 %106, %123
  ret i64 %124
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca { i64, i64 }, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %14, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr null, ptr %16, align 8
  %17 = alloca { i64, i64 }, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %23, align 8
  call void @runtime.ClobberPointerRegs()
  %24 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %2, align 4
  %38 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %38, i64 %37, i64 8)
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load i64, ptr %38, align 4
  store i64 0, ptr %38, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %41 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = shl i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = lshr i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = or i64 %51, -6557241057451442176
  store i64 %52, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %52)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %4, align 4
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %55, i64 %54, i64 16)
  %56 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %55, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %55, align 8
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %57, ptr %58, align 8
  %59 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %58, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %60, ptr %7, align 8
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %60, 0
  %62 = ptrtoint ptr %61 to i64
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = shl i64 %64, 17
  %66 = select i1 false, i64 0, i64 %65
  %67 = lshr i64 %64, 39
  %68 = select i1 false, i64 0, i64 %67
  %69 = or i64 %66, %68
  %70 = and i64 %69, 72057594037927935
  %71 = or i64 %70, -6557241057451442176
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %60, 1
  %73 = insertvalue { i64, i64 } undef, i64 %71, 0
  %74 = insertvalue { i64, i64 } %73, i64 %72, 1
  store { i64, i64 } %74, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %76 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  store { i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %77, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %75)
  %79 = icmp sge i64 %40, %78
  br i1 %79, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %80 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %80, ptr %8, align 8
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %83 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %82, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %83

_llgo_2:                                          ; preds = %_llgo_0
  %84 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %86 = ptrtoint ptr %85 to i64
  %87 = and i64 %86, 72057594037927935
  %88 = xor i64 %87, 25399393228665167
  %89 = shl i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = lshr i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = or i64 %94, -6557241057451442176
  store i64 %95, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %95)
  call void @runtime.ClobberPointerRegs()
  %96 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load i64, ptr %9, align 4
  %98 = alloca i64, align 8
  store i64 -1, ptr %98, align 4
  call void @runtime.StoreHiddenPointee(i64 %97, ptr %98, i64 8)
  store i64 0, ptr %98, align 4
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %99 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %101 = ptrtoint ptr %100 to i64
  %102 = and i64 %101, 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = shl i64 %103, 17
  %105 = select i1 false, i64 0, i64 %104
  %106 = lshr i64 %103, 39
  %107 = select i1 false, i64 0, i64 %106
  %108 = or i64 %105, %107
  %109 = and i64 %108, 72057594037927935
  %110 = or i64 %109, -6557241057451442176
  store i64 %110, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %110)
  call void @runtime.ClobberPointerRegs()
  %111 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load i64, ptr %11, align 4
  %113 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %113, i64 %112, i64 16)
  %114 = icmp eq ptr %113, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %113, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %113, align 8
  %116 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %115, ptr %116, align 8
  %117 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %117)
  %118 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %116, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %118, ptr %14, align 8
  %119 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %118, 0
  %120 = ptrtoint ptr %119 to i64
  %121 = and i64 %120, 72057594037927935
  %122 = xor i64 %121, 25399393228665167
  %123 = shl i64 %122, 17
  %124 = select i1 false, i64 0, i64 %123
  %125 = lshr i64 %122, 39
  %126 = select i1 false, i64 0, i64 %125
  %127 = or i64 %124, %126
  %128 = and i64 %127, 72057594037927935
  %129 = or i64 %128, -6557241057451442176
  %130 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %118, 1
  %131 = insertvalue { i64, i64 } undef, i64 %129, 0
  %132 = insertvalue { i64, i64 } %131, i64 %130, 1
  store { i64, i64 } %132, ptr %13, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %116, align 8
  call void @runtime.TouchConservativeSlot(ptr %116, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  %133 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %133)
  %134 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i64
  %136 = and i64 %135, 72057594037927935
  %137 = xor i64 %136, 25399393228665167
  %138 = shl i64 %137, 17
  %139 = select i1 false, i64 0, i64 %138
  %140 = lshr i64 %137, 39
  %141 = select i1 false, i64 0, i64 %140
  %142 = or i64 %139, %141
  %143 = and i64 %142, 72057594037927935
  %144 = or i64 %143, -6557241057451442176
  store i64 %144, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %144)
  call void @runtime.ClobberPointerRegs()
  %145 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %145)
  %146 = load i64, ptr %15, align 4
  %147 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %147, i64 %146, i64 8)
  %148 = icmp eq ptr %147, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = load i64, ptr %147, align 4
  store i64 0, ptr %147, align 4
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  %150 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %14, align 8
  %152 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %151, 1
  %153 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %151, i64 %149, i64 %152)
  %154 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %153, ptr %154, align 8
  %155 = icmp eq ptr %154, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %154, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %156, ptr %18, align 8
  %157 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %156, 0
  %158 = ptrtoint ptr %157 to i64
  %159 = and i64 %158, 72057594037927935
  %160 = xor i64 %159, 25399393228665167
  %161 = shl i64 %160, 17
  %162 = select i1 false, i64 0, i64 %161
  %163 = lshr i64 %160, 39
  %164 = select i1 false, i64 0, i64 %163
  %165 = or i64 %162, %164
  %166 = and i64 %165, 72057594037927935
  %167 = or i64 %166, -6557241057451442176
  %168 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %156, 1
  %169 = insertvalue { i64, i64 } undef, i64 %167, 0
  %170 = insertvalue { i64, i64 } %169, i64 %168, 1
  store { i64, i64 } %170, ptr %17, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %154, align 8
  call void @runtime.TouchConservativeSlot(ptr %154, i64 16)
  call void @runtime.ClobberPointerRegs()
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %172 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %23, align 8
  %174 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %174)
  %175 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  store { i64, i64 } zeroinitializer, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 16)
  store { i64, i64 } zeroinitializer, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  %176 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %175, 0
  %177 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %175, 1
  %178 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173, ptr %176, i64 %177, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %171)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 24)
  call void @runtime.ClobberPointerRegs()
  %179 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %179)
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %181 = ptrtoint ptr %180 to i64
  %182 = and i64 %181, 72057594037927935
  %183 = xor i64 %182, 25399393228665167
  %184 = shl i64 %183, 17
  %185 = select i1 false, i64 0, i64 %184
  %186 = lshr i64 %183, 39
  %187 = select i1 false, i64 0, i64 %186
  %188 = or i64 %185, %187
  %189 = and i64 %188, 72057594037927935
  %190 = or i64 %189, -6557241057451442176
  store i64 %190, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %190)
  call void @runtime.ClobberPointerRegs()
  %191 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %191)
  %192 = load i64, ptr %19, align 4
  %193 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %193, i64 %192, i64 8)
  %194 = icmp eq ptr %193, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = load i64, ptr %193, align 4
  store i64 0, ptr %193, align 4
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  call void @runtime.ClobberPointerRegs()
  %196 = add i64 %195, %178
  %197 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %197)
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %199 = ptrtoint ptr %198 to i64
  %200 = and i64 %199, 72057594037927935
  %201 = xor i64 %200, 25399393228665167
  %202 = shl i64 %201, 17
  %203 = select i1 false, i64 0, i64 %202
  %204 = lshr i64 %201, 39
  %205 = select i1 false, i64 0, i64 %204
  %206 = or i64 %203, %205
  %207 = and i64 %206, 72057594037927935
  %208 = or i64 %207, -6557241057451442176
  store i64 %208, ptr %21, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %22, i64 %208)
  call void @runtime.ClobberPointerRegs()
  %209 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = load i64, ptr %21, align 4
  %211 = alloca i64, align 8
  store i64 %196, ptr %211, align 4
  call void @runtime.StoreHiddenPointee(i64 %210, ptr %211, i64 8)
  store i64 0, ptr %211, align 4
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  call void @runtime.ClobberPointerRegs()
  %212 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %178, 0
  %213 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %212, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %213
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, i64 %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca { i64, i64 }, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  %13 = alloca { i64, i64 }, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %16, align 8
  call void @runtime.ClobberPointerRegs()
  %17 = icmp slt i64 %2, 0
  br i1 %17, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %19 = and i64 ptrtoint (ptr @57 to i64), 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = shl i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = lshr i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = or i64 %26, -6557241057451442176
  %28 = insertvalue { i64, i64 } undef, i64 %27, 0
  %29 = insertvalue { i64, i64 } %28, i64 37, 1
  %30 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %3, align 8
  %31 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %33 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %33

_llgo_2:                                          ; preds = %_llgo_0
  %34 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = shl i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = lshr i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = or i64 %44, -6557241057451442176
  store i64 %45, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %45)
  call void @runtime.ClobberPointerRegs()
  %46 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %4, align 4
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %48, i64 %47, i64 16)
  %49 = icmp eq ptr %48, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %48, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %48, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %50, ptr %51, align 8
  %52 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %51, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %53, ptr %7, align 8
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %53, 0
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 72057594037927935
  %57 = xor i64 %56, 25399393228665167
  %58 = shl i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = lshr i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = or i64 %63, -6557241057451442176
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %53, 1
  %66 = insertvalue { i64, i64 } undef, i64 %64, 0
  %67 = insertvalue { i64, i64 } %66, i64 %65, 1
  store { i64, i64 } %67, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %51, align 8
  call void @runtime.TouchConservativeSlot(ptr %51, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %69 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  store { i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %70, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %68)
  %72 = icmp sge i64 %2, %71
  br i1 %72, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %73 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %8, align 8
  %74 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %8, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %76 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %75, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %76

_llgo_4:                                          ; preds = %_llgo_2
  %77 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %79 = ptrtoint ptr %78 to i64
  %80 = and i64 %79, 72057594037927935
  %81 = xor i64 %80, 25399393228665167
  %82 = shl i64 %81, 17
  %83 = select i1 false, i64 0, i64 %82
  %84 = lshr i64 %81, 39
  %85 = select i1 false, i64 0, i64 %84
  %86 = or i64 %83, %85
  %87 = and i64 %86, 72057594037927935
  %88 = or i64 %87, -6557241057451442176
  store i64 %88, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %88)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %9, align 4
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %91, i64 %90, i64 16)
  %92 = icmp eq ptr %91, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %91, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %91, align 8
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %93, ptr %94, align 8
  %95 = icmp eq ptr %94, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %94, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %96, ptr %12, align 8
  %97 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %96, 0
  %98 = ptrtoint ptr %97 to i64
  %99 = and i64 %98, 72057594037927935
  %100 = xor i64 %99, 25399393228665167
  %101 = shl i64 %100, 17
  %102 = select i1 false, i64 0, i64 %101
  %103 = lshr i64 %100, 39
  %104 = select i1 false, i64 0, i64 %103
  %105 = or i64 %102, %104
  %106 = and i64 %105, 72057594037927935
  %107 = or i64 %106, -6557241057451442176
  %108 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %96, 1
  %109 = insertvalue { i64, i64 } undef, i64 %107, 0
  %110 = insertvalue { i64, i64 } %109, i64 %108, 1
  store { i64, i64 } %110, ptr %11, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %94, align 8
  call void @runtime.TouchConservativeSlot(ptr %94, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %111 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %113 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %112, 1
  %114 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %112, i64 %2, i64 %113)
  %115 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, ptr %115, align 8
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %115, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %117, ptr %14, align 8
  %118 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %117, 0
  %119 = ptrtoint ptr %118 to i64
  %120 = and i64 %119, 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = shl i64 %121, 17
  %123 = select i1 false, i64 0, i64 %122
  %124 = lshr i64 %121, 39
  %125 = select i1 false, i64 0, i64 %124
  %126 = or i64 %123, %125
  %127 = and i64 %126, 72057594037927935
  %128 = or i64 %127, -6557241057451442176
  %129 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %117, 1
  %130 = insertvalue { i64, i64 } undef, i64 %128, 0
  %131 = insertvalue { i64, i64 } %130, i64 %129, 1
  store { i64, i64 } %131, ptr %13, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %115, align 8
  call void @runtime.TouchConservativeSlot(ptr %115, i64 16)
  call void @runtime.ClobberPointerRegs()
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %133 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %133)
  %134 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  %135 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %14, align 8
  store { i64, i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  store { i64, i64 } zeroinitializer, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 16)
  call void @runtime.ClobberPointerRegs()
  %137 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %136, 0
  %138 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %136, 1
  %139 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, ptr %137, i64 %138, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %132)
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %141 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  %143 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %140)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  call void @runtime.ClobberPointerRegs()
  %144 = icmp slt i64 %139, %143
  br i1 %144, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %145 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %145, ptr %15, align 8
  %146 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %15, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %148 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ zeroinitializer, %_llgo_4 ], [ %147, %_llgo_5 ]
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 16)
  call void @runtime.ClobberPointerRegs()
  %149 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %139, 0
  %150 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %149, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %148, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %150
}

define { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca { i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 72057594037927935
  %24 = xor i64 %23, 25399393228665167
  %25 = shl i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = lshr i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = or i64 %30, -6557241057451442176
  store i64 %31, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %31)
  call void @runtime.ClobberPointerRegs()
  %32 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load i64, ptr %1, align 4
  %34 = alloca i64, align 8
  store i64 -1, ptr %34, align 4
  call void @runtime.StoreHiddenPointee(i64 %33, ptr %34, i64 8)
  store i64 0, ptr %34, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i64
  %38 = and i64 %37, 72057594037927935
  %39 = xor i64 %38, 25399393228665167
  %40 = shl i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = lshr i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = or i64 %45, -6557241057451442176
  store i64 %46, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %46)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %3, align 4
  %49 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %49, i64 %48, i64 8)
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %49, align 4
  store i64 0, ptr %49, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %54, 72057594037927935
  %56 = xor i64 %55, 25399393228665167
  %57 = shl i64 %56, 17
  %58 = select i1 false, i64 0, i64 %57
  %59 = lshr i64 %56, 39
  %60 = select i1 false, i64 0, i64 %59
  %61 = or i64 %58, %60
  %62 = and i64 %61, 72057594037927935
  %63 = or i64 %62, -6557241057451442176
  store i64 %63, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %63)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %5, align 4
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %66, i64 %65, i64 16)
  %67 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %66, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %66, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, ptr %69, align 8
  %70 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %69, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, ptr %8, align 8
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, 0
  %73 = ptrtoint ptr %72 to i64
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = shl i64 %75, 17
  %77 = select i1 false, i64 0, i64 %76
  %78 = lshr i64 %75, 39
  %79 = select i1 false, i64 0, i64 %78
  %80 = or i64 %77, %79
  %81 = and i64 %80, 72057594037927935
  %82 = or i64 %81, -6557241057451442176
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, 1
  %84 = insertvalue { i64, i64 } undef, i64 %82, 0
  %85 = insertvalue { i64, i64 } %84, i64 %83, 1
  store { i64, i64 } %85, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %69, align 8
  call void @runtime.TouchConservativeSlot(ptr %69, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %87 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  store { i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %88, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %86)
  %90 = icmp sge i64 %51, %89
  br i1 %90, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %91 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %91, ptr %9, align 8
  %92 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %94 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i8 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %93, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %94

_llgo_2:                                          ; preds = %_llgo_0
  %95 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i64
  %98 = and i64 %97, 72057594037927935
  %99 = xor i64 %98, 25399393228665167
  %100 = shl i64 %99, 17
  %101 = select i1 false, i64 0, i64 %100
  %102 = lshr i64 %99, 39
  %103 = select i1 false, i64 0, i64 %102
  %104 = or i64 %101, %103
  %105 = and i64 %104, 72057594037927935
  %106 = or i64 %105, -6557241057451442176
  store i64 %106, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %106)
  call void @runtime.ClobberPointerRegs()
  %107 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load i64, ptr %10, align 4
  %109 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %109, i64 %108, i64 8)
  %110 = icmp eq ptr %109, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %109, align 4
  store i64 0, ptr %109, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %112 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %114 = ptrtoint ptr %113 to i64
  %115 = and i64 %114, 72057594037927935
  %116 = xor i64 %115, 25399393228665167
  %117 = shl i64 %116, 17
  %118 = select i1 false, i64 0, i64 %117
  %119 = lshr i64 %116, 39
  %120 = select i1 false, i64 0, i64 %119
  %121 = or i64 %118, %120
  %122 = and i64 %121, 72057594037927935
  %123 = or i64 %122, -6557241057451442176
  store i64 %123, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %123)
  call void @runtime.ClobberPointerRegs()
  %124 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load i64, ptr %12, align 4
  %126 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %126, i64 %125, i64 16)
  %127 = icmp eq ptr %126, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %127)
  %128 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %126, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %126, align 8
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %128, ptr %129, align 8
  %130 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %129, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %131, ptr %15, align 8
  %132 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %131, 0
  %133 = ptrtoint ptr %132 to i64
  %134 = and i64 %133, 72057594037927935
  %135 = xor i64 %134, 25399393228665167
  %136 = shl i64 %135, 17
  %137 = select i1 false, i64 0, i64 %136
  %138 = lshr i64 %135, 39
  %139 = select i1 false, i64 0, i64 %138
  %140 = or i64 %137, %139
  %141 = and i64 %140, 72057594037927935
  %142 = or i64 %141, -6557241057451442176
  %143 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %131, 1
  %144 = insertvalue { i64, i64 } undef, i64 %142, 0
  %145 = insertvalue { i64, i64 } %144, i64 %143, 1
  store { i64, i64 } %145, ptr %14, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %129, align 8
  call void @runtime.TouchConservativeSlot(ptr %129, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %146 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %148 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %147, 0
  %149 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %147, 1
  %150 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %111, i64 %149)
  %151 = getelementptr inbounds i8, ptr %148, i64 %150
  %152 = icmp eq ptr %151, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %152)
  %153 = load i8, ptr %151, align 1
  %154 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %154)
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %156 = ptrtoint ptr %155 to i64
  %157 = and i64 %156, 72057594037927935
  %158 = xor i64 %157, 25399393228665167
  %159 = shl i64 %158, 17
  %160 = select i1 false, i64 0, i64 %159
  %161 = lshr i64 %158, 39
  %162 = select i1 false, i64 0, i64 %161
  %163 = or i64 %160, %162
  %164 = and i64 %163, 72057594037927935
  %165 = or i64 %164, -6557241057451442176
  store i64 %165, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %165)
  call void @runtime.ClobberPointerRegs()
  %166 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %166)
  %167 = load i64, ptr %16, align 4
  %168 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %168, i64 %167, i64 8)
  %169 = icmp eq ptr %168, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = load i64, ptr %168, align 4
  store i64 0, ptr %168, align 4
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %171 = add i64 %170, 1
  %172 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %174 = ptrtoint ptr %173 to i64
  %175 = and i64 %174, 72057594037927935
  %176 = xor i64 %175, 25399393228665167
  %177 = shl i64 %176, 17
  %178 = select i1 false, i64 0, i64 %177
  %179 = lshr i64 %176, 39
  %180 = select i1 false, i64 0, i64 %179
  %181 = or i64 %178, %180
  %182 = and i64 %181, 72057594037927935
  %183 = or i64 %182, -6557241057451442176
  store i64 %183, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %183)
  call void @runtime.ClobberPointerRegs()
  %184 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %184)
  %185 = load i64, ptr %18, align 4
  %186 = alloca i64, align 8
  store i64 %171, ptr %186, align 4
  call void @runtime.StoreHiddenPointee(i64 %185, ptr %186, i64 8)
  store i64 0, ptr %186, align 4
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  store { i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 16)
  call void @runtime.ClobberPointerRegs()
  %187 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %153, 0
  %188 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %187, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %188
}

define { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca { i64, i64 }, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  store ptr null, ptr %25, align 8
  %26 = alloca { i64, i64 }, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca { i64, i64 }, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i64
  %39 = and i64 %38, 72057594037927935
  %40 = xor i64 %39, 25399393228665167
  %41 = shl i64 %40, 17
  %42 = select i1 false, i64 0, i64 %41
  %43 = lshr i64 %40, 39
  %44 = select i1 false, i64 0, i64 %43
  %45 = or i64 %42, %44
  %46 = and i64 %45, 72057594037927935
  %47 = or i64 %46, -6557241057451442176
  store i64 %47, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %47)
  call void @runtime.ClobberPointerRegs()
  %48 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load i64, ptr %1, align 4
  %50 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %50, i64 %49, i64 8)
  %51 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load i64, ptr %50, align 4
  store i64 0, ptr %50, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 72057594037927935
  %57 = xor i64 %56, 25399393228665167
  %58 = shl i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = lshr i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = or i64 %63, -6557241057451442176
  store i64 %64, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %64)
  call void @runtime.ClobberPointerRegs()
  %65 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %3, align 4
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %67, i64 %66, i64 16)
  %68 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %67, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %67, align 8
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %69, ptr %70, align 8
  %71 = icmp eq ptr %70, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %70, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %72, ptr %6, align 8
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %72, 0
  %74 = ptrtoint ptr %73 to i64
  %75 = and i64 %74, 72057594037927935
  %76 = xor i64 %75, 25399393228665167
  %77 = shl i64 %76, 17
  %78 = select i1 false, i64 0, i64 %77
  %79 = lshr i64 %76, 39
  %80 = select i1 false, i64 0, i64 %79
  %81 = or i64 %78, %80
  %82 = and i64 %81, 72057594037927935
  %83 = or i64 %82, -6557241057451442176
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %72, 1
  %85 = insertvalue { i64, i64 } undef, i64 %83, 0
  %86 = insertvalue { i64, i64 } %85, i64 %84, 1
  store { i64, i64 } %86, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %70, align 8
  call void @runtime.TouchConservativeSlot(ptr %70, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %88 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %87)
  %91 = icmp sge i64 %52, %90
  br i1 %91, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %92 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %94 = ptrtoint ptr %93 to i64
  %95 = and i64 %94, 72057594037927935
  %96 = xor i64 %95, 25399393228665167
  %97 = shl i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = lshr i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = or i64 %102, -6557241057451442176
  store i64 %103, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %103)
  call void @runtime.ClobberPointerRegs()
  %104 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load i64, ptr %7, align 4
  %106 = alloca i64, align 8
  store i64 -1, ptr %106, align 4
  call void @runtime.StoreHiddenPointee(i64 %105, ptr %106, i64 8)
  store i64 0, ptr %106, align 4
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %107 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %107, ptr %9, align 8
  %108 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %110 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i32 0, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %109, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %110

_llgo_2:                                          ; preds = %_llgo_0
  %111 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i64
  %114 = and i64 %113, 72057594037927935
  %115 = xor i64 %114, 25399393228665167
  %116 = shl i64 %115, 17
  %117 = select i1 false, i64 0, i64 %116
  %118 = lshr i64 %115, 39
  %119 = select i1 false, i64 0, i64 %118
  %120 = or i64 %117, %119
  %121 = and i64 %120, 72057594037927935
  %122 = or i64 %121, -6557241057451442176
  store i64 %122, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %122)
  call void @runtime.ClobberPointerRegs()
  %123 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = load i64, ptr %10, align 4
  %125 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %125, i64 %124, i64 8)
  %126 = icmp eq ptr %125, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %126)
  %127 = load i64, ptr %125, align 4
  store i64 0, ptr %125, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %128 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %128)
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %130 = ptrtoint ptr %129 to i64
  %131 = and i64 %130, 72057594037927935
  %132 = xor i64 %131, 25399393228665167
  %133 = shl i64 %132, 17
  %134 = select i1 false, i64 0, i64 %133
  %135 = lshr i64 %132, 39
  %136 = select i1 false, i64 0, i64 %135
  %137 = or i64 %134, %136
  %138 = and i64 %137, 72057594037927935
  %139 = or i64 %138, -6557241057451442176
  store i64 %139, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %139)
  call void @runtime.ClobberPointerRegs()
  %140 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load i64, ptr %12, align 4
  %142 = alloca i64, align 8
  store i64 %127, ptr %142, align 4
  call void @runtime.StoreHiddenPointee(i64 %141, ptr %142, i64 8)
  store i64 0, ptr %142, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %143 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %145 = ptrtoint ptr %144 to i64
  %146 = and i64 %145, 72057594037927935
  %147 = xor i64 %146, 25399393228665167
  %148 = shl i64 %147, 17
  %149 = select i1 false, i64 0, i64 %148
  %150 = lshr i64 %147, 39
  %151 = select i1 false, i64 0, i64 %150
  %152 = or i64 %149, %151
  %153 = and i64 %152, 72057594037927935
  %154 = or i64 %153, -6557241057451442176
  store i64 %154, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %154)
  call void @runtime.ClobberPointerRegs()
  %155 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load i64, ptr %14, align 4
  %157 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %157, i64 %156, i64 8)
  %158 = icmp eq ptr %157, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %158)
  %159 = load i64, ptr %157, align 4
  store i64 0, ptr %157, align 4
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %160 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %160)
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %162 = ptrtoint ptr %161 to i64
  %163 = and i64 %162, 72057594037927935
  %164 = xor i64 %163, 25399393228665167
  %165 = shl i64 %164, 17
  %166 = select i1 false, i64 0, i64 %165
  %167 = lshr i64 %164, 39
  %168 = select i1 false, i64 0, i64 %167
  %169 = or i64 %166, %168
  %170 = and i64 %169, 72057594037927935
  %171 = or i64 %170, -6557241057451442176
  store i64 %171, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %171)
  call void @runtime.ClobberPointerRegs()
  %172 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load i64, ptr %16, align 4
  %174 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %174, i64 %173, i64 16)
  %175 = icmp eq ptr %174, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %175)
  %176 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %174, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %174, align 8
  %177 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %176, ptr %177, align 8
  %178 = icmp eq ptr %177, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %177, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %179, ptr %19, align 8
  %180 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %179, 0
  %181 = ptrtoint ptr %180 to i64
  %182 = and i64 %181, 72057594037927935
  %183 = xor i64 %182, 25399393228665167
  %184 = shl i64 %183, 17
  %185 = select i1 false, i64 0, i64 %184
  %186 = lshr i64 %183, 39
  %187 = select i1 false, i64 0, i64 %186
  %188 = or i64 %185, %187
  %189 = and i64 %188, 72057594037927935
  %190 = or i64 %189, -6557241057451442176
  %191 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %179, 1
  %192 = insertvalue { i64, i64 } undef, i64 %190, 0
  %193 = insertvalue { i64, i64 } %192, i64 %191, 1
  store { i64, i64 } %193, ptr %18, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %177, align 8
  call void @runtime.TouchConservativeSlot(ptr %177, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %194 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, align 8
  %196 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %195, 0
  %197 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %195, 1
  %198 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %159, i64 %197)
  %199 = getelementptr inbounds i8, ptr %196, i64 %198
  %200 = icmp eq ptr %199, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %200)
  %201 = load i8, ptr %199, align 1
  %202 = icmp ult i8 %201, -128
  br i1 %202, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %203 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %203)
  %204 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %205 = ptrtoint ptr %204 to i64
  %206 = and i64 %205, 72057594037927935
  %207 = xor i64 %206, 25399393228665167
  %208 = shl i64 %207, 17
  %209 = select i1 false, i64 0, i64 %208
  %210 = lshr i64 %207, 39
  %211 = select i1 false, i64 0, i64 %210
  %212 = or i64 %209, %211
  %213 = and i64 %212, 72057594037927935
  %214 = or i64 %213, -6557241057451442176
  store i64 %214, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %214)
  call void @runtime.ClobberPointerRegs()
  %215 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %215)
  %216 = load i64, ptr %20, align 4
  %217 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %217, i64 %216, i64 8)
  %218 = icmp eq ptr %217, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %218)
  %219 = load i64, ptr %217, align 4
  store i64 0, ptr %217, align 4
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %220 = add i64 %219, 1
  %221 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %221)
  %222 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %223 = ptrtoint ptr %222 to i64
  %224 = and i64 %223, 72057594037927935
  %225 = xor i64 %224, 25399393228665167
  %226 = shl i64 %225, 17
  %227 = select i1 false, i64 0, i64 %226
  %228 = lshr i64 %225, 39
  %229 = select i1 false, i64 0, i64 %228
  %230 = or i64 %227, %229
  %231 = and i64 %230, 72057594037927935
  %232 = or i64 %231, -6557241057451442176
  store i64 %232, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %232)
  call void @runtime.ClobberPointerRegs()
  %233 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %233)
  %234 = load i64, ptr %22, align 4
  %235 = alloca i64, align 8
  store i64 %220, ptr %235, align 4
  call void @runtime.StoreHiddenPointee(i64 %234, ptr %235, i64 8)
  store i64 0, ptr %235, align 4
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  %236 = zext i8 %201 to i32
  store { i64, i64 } zeroinitializer, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  call void @runtime.ClobberPointerRegs()
  %237 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %236, 0
  %238 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %237, i64 1, 1
  %239 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %238, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %239

_llgo_4:                                          ; preds = %_llgo_2
  %240 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %240)
  %241 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %242 = ptrtoint ptr %241 to i64
  %243 = and i64 %242, 72057594037927935
  %244 = xor i64 %243, 25399393228665167
  %245 = shl i64 %244, 17
  %246 = select i1 false, i64 0, i64 %245
  %247 = lshr i64 %244, 39
  %248 = select i1 false, i64 0, i64 %247
  %249 = or i64 %246, %248
  %250 = and i64 %249, 72057594037927935
  %251 = or i64 %250, -6557241057451442176
  store i64 %251, ptr %24, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %25, i64 %251)
  call void @runtime.ClobberPointerRegs()
  %252 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %252)
  %253 = load i64, ptr %24, align 4
  %254 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %254, i64 %253, i64 16)
  %255 = icmp eq ptr %254, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %255)
  %256 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %254, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %254, align 8
  %257 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %256, ptr %257, align 8
  %258 = icmp eq ptr %257, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %258)
  %259 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %257, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %259, ptr %27, align 8
  %260 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %259, 0
  %261 = ptrtoint ptr %260 to i64
  %262 = and i64 %261, 72057594037927935
  %263 = xor i64 %262, 25399393228665167
  %264 = shl i64 %263, 17
  %265 = select i1 false, i64 0, i64 %264
  %266 = lshr i64 %263, 39
  %267 = select i1 false, i64 0, i64 %266
  %268 = or i64 %265, %267
  %269 = and i64 %268, 72057594037927935
  %270 = or i64 %269, -6557241057451442176
  %271 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %259, 1
  %272 = insertvalue { i64, i64 } undef, i64 %270, 0
  %273 = insertvalue { i64, i64 } %272, i64 %271, 1
  store { i64, i64 } %273, ptr %26, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %257, align 8
  call void @runtime.TouchConservativeSlot(ptr %257, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  call void @runtime.ClobberPointerRegs()
  %274 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %274)
  %275 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %276 = ptrtoint ptr %275 to i64
  %277 = and i64 %276, 72057594037927935
  %278 = xor i64 %277, 25399393228665167
  %279 = shl i64 %278, 17
  %280 = select i1 false, i64 0, i64 %279
  %281 = lshr i64 %278, 39
  %282 = select i1 false, i64 0, i64 %281
  %283 = or i64 %280, %282
  %284 = and i64 %283, 72057594037927935
  %285 = or i64 %284, -6557241057451442176
  store i64 %285, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %285)
  call void @runtime.ClobberPointerRegs()
  %286 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %286)
  %287 = load i64, ptr %28, align 4
  %288 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %288, i64 %287, i64 8)
  %289 = icmp eq ptr %288, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %289)
  %290 = load i64, ptr %288, align 4
  store i64 0, ptr %288, align 4
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  call void @runtime.ClobberPointerRegs()
  %291 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %291)
  %292 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %27, align 8
  %293 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %292, 1
  %294 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %292, i64 %290, i64 %293)
  %295 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %294, ptr %295, align 8
  %296 = icmp eq ptr %295, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %296)
  %297 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %295, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %297, ptr %31, align 8
  %298 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %297, 0
  %299 = ptrtoint ptr %298 to i64
  %300 = and i64 %299, 72057594037927935
  %301 = xor i64 %300, 25399393228665167
  %302 = shl i64 %301, 17
  %303 = select i1 false, i64 0, i64 %302
  %304 = lshr i64 %301, 39
  %305 = select i1 false, i64 0, i64 %304
  %306 = or i64 %303, %305
  %307 = and i64 %306, 72057594037927935
  %308 = or i64 %307, -6557241057451442176
  %309 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %297, 1
  %310 = insertvalue { i64, i64 } undef, i64 %308, 0
  %311 = insertvalue { i64, i64 } %310, i64 %309, 1
  store { i64, i64 } %311, ptr %30, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %295, align 8
  call void @runtime.TouchConservativeSlot(ptr %295, i64 16)
  call void @runtime.ClobberPointerRegs()
  %312 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %313 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %313)
  %314 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %31, align 8
  store { i64, i64 } zeroinitializer, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 16)
  store { i64, i64 } zeroinitializer, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 16)
  call void @runtime.ClobberPointerRegs()
  %315 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %314)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %312)
  %316 = extractvalue { i32, i64 } %315, 1
  %317 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %317)
  %318 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %319 = ptrtoint ptr %318 to i64
  %320 = and i64 %319, 72057594037927935
  %321 = xor i64 %320, 25399393228665167
  %322 = shl i64 %321, 17
  %323 = select i1 false, i64 0, i64 %322
  %324 = lshr i64 %321, 39
  %325 = select i1 false, i64 0, i64 %324
  %326 = or i64 %323, %325
  %327 = and i64 %326, 72057594037927935
  %328 = or i64 %327, -6557241057451442176
  store i64 %328, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %328)
  call void @runtime.ClobberPointerRegs()
  %329 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %329)
  %330 = load i64, ptr %32, align 4
  %331 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %331, i64 %330, i64 8)
  %332 = icmp eq ptr %331, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %332)
  %333 = load i64, ptr %331, align 4
  store i64 0, ptr %331, align 4
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  call void @runtime.ClobberPointerRegs()
  %334 = add i64 %333, %316
  %335 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %335)
  %336 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %337 = ptrtoint ptr %336 to i64
  %338 = and i64 %337, 72057594037927935
  %339 = xor i64 %338, 25399393228665167
  %340 = shl i64 %339, 17
  %341 = select i1 false, i64 0, i64 %340
  %342 = lshr i64 %339, 39
  %343 = select i1 false, i64 0, i64 %342
  %344 = or i64 %341, %343
  %345 = and i64 %344, 72057594037927935
  %346 = or i64 %345, -6557241057451442176
  store i64 %346, ptr %34, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %35, i64 %346)
  call void @runtime.ClobberPointerRegs()
  %347 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %347)
  %348 = load i64, ptr %34, align 4
  %349 = alloca i64, align 8
  store i64 %334, ptr %349, align 4
  call void @runtime.StoreHiddenPointee(i64 %348, ptr %349, i64 8)
  store i64 0, ptr %349, align 4
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  %350 = extractvalue { i32, i64 } %315, 0
  %351 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %350, 0
  %352 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %351, i64 %316, 1
  %353 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %352, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %353
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca { i64, i64 }, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 72057594037927935
  %19 = xor i64 %18, 25399393228665167
  %20 = shl i64 %19, 17
  %21 = select i1 false, i64 0, i64 %20
  %22 = lshr i64 %19, 39
  %23 = select i1 false, i64 0, i64 %22
  %24 = or i64 %21, %23
  %25 = and i64 %24, 72057594037927935
  %26 = or i64 %25, -6557241057451442176
  store i64 %26, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %26)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %3, align 4
  %29 = alloca i64, align 8
  store i64 -1, ptr %29, align 4
  call void @runtime.StoreHiddenPointee(i64 %28, ptr %29, i64 8)
  store i64 0, ptr %29, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %30 = icmp eq i64 %2, 0
  br i1 %30, label %_llgo_2, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  %31 = phi i64 [ %1, %_llgo_2 ], [ %50, %_llgo_3 ], [ %90, %_llgo_5 ]
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_4
  %33 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i64
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = shl i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = lshr i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = or i64 %43, -6557241057451442176
  store i64 %44, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %44)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %5, align 4
  %47 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %47, i64 %46, i64 8)
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load i64, ptr %47, align 4
  store i64 0, ptr %47, align 4
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %50 = add i64 %49, %1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %51 = icmp eq i64 %2, 1
  br i1 %51, label %_llgo_3, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_6
  %52 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %54, 72057594037927935
  %56 = xor i64 %55, 25399393228665167
  %57 = shl i64 %56, 17
  %58 = select i1 false, i64 0, i64 %57
  %59 = lshr i64 %56, 39
  %60 = select i1 false, i64 0, i64 %59
  %61 = or i64 %58, %60
  %62 = and i64 %61, 72057594037927935
  %63 = or i64 %62, -6557241057451442176
  store i64 %63, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %63)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %7, align 4
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %66, i64 %65, i64 16)
  %67 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %66, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %66, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, ptr %69, align 8
  %70 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %69, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, ptr %10, align 8
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, 0
  %73 = ptrtoint ptr %72 to i64
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = shl i64 %75, 17
  %77 = select i1 false, i64 0, i64 %76
  %78 = lshr i64 %75, 39
  %79 = select i1 false, i64 0, i64 %78
  %80 = or i64 %77, %79
  %81 = and i64 %80, 72057594037927935
  %82 = or i64 %81, -6557241057451442176
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %71, 1
  %84 = insertvalue { i64, i64 } undef, i64 %82, 0
  %85 = insertvalue { i64, i64 } %84, i64 %83, 1
  store { i64, i64 } %85, ptr %9, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %69, align 8
  call void @runtime.TouchConservativeSlot(ptr %69, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %87 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %10, align 8
  store { i64, i64 } zeroinitializer, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %88, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %86)
  %90 = add i64 %89, %1
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_4
  %91 = icmp eq i64 %2, 2
  br i1 %91, label %_llgo_5, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %93 = and i64 ptrtoint (ptr @58 to i64), 72057594037927935
  %94 = xor i64 %93, 25399393228665167
  %95 = shl i64 %94, 17
  %96 = select i1 false, i64 0, i64 %95
  %97 = lshr i64 %94, 39
  %98 = select i1 false, i64 0, i64 %97
  %99 = or i64 %96, %98
  %100 = and i64 %99, 72057594037927935
  %101 = or i64 %100, -6557241057451442176
  %102 = insertvalue { i64, i64 } undef, i64 %101, 0
  %103 = insertvalue { i64, i64 } %102, i64 34, 1
  %104 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %103)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %92)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %104, ptr %11, align 8
  %105 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %11, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  %107 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %106, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %107

_llgo_8:                                          ; preds = %_llgo_1
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %109 = and i64 ptrtoint (ptr @59 to i64), 72057594037927935
  %110 = xor i64 %109, 25399393228665167
  %111 = shl i64 %110, 17
  %112 = select i1 false, i64 0, i64 %111
  %113 = lshr i64 %110, 39
  %114 = select i1 false, i64 0, i64 %113
  %115 = or i64 %112, %114
  %116 = and i64 %115, 72057594037927935
  %117 = or i64 %116, -6557241057451442176
  %118 = insertvalue { i64, i64 } undef, i64 %117, 0
  %119 = insertvalue { i64, i64 } %118, i64 37, 1
  %120 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %119)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %120, ptr %12, align 8
  %121 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %12, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  call void @runtime.ClobberPointerRegs()
  %123 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %122, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %123

_llgo_9:                                          ; preds = %_llgo_1
  %124 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %126 = ptrtoint ptr %125 to i64
  %127 = and i64 %126, 72057594037927935
  %128 = xor i64 %127, 25399393228665167
  %129 = shl i64 %128, 17
  %130 = select i1 false, i64 0, i64 %129
  %131 = lshr i64 %128, 39
  %132 = select i1 false, i64 0, i64 %131
  %133 = or i64 %130, %132
  %134 = and i64 %133, 72057594037927935
  %135 = or i64 %134, -6557241057451442176
  store i64 %135, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %135)
  call void @runtime.ClobberPointerRegs()
  %136 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = load i64, ptr %13, align 4
  %138 = alloca i64, align 8
  store i64 %31, ptr %138, align 4
  call void @runtime.StoreHiddenPointee(i64 %137, ptr %138, i64 8)
  store i64 0, ptr %138, align 4
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  %139 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %31, 0
  %140 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %139, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %140
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %7, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %22, i64 %21, i64 16)
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, ptr %25, align 8
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, ptr %4, align 8
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, 0
  %29 = ptrtoint ptr %28 to i64
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = shl i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = lshr i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = or i64 %37, -6557241057451442176
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, 1
  %40 = insertvalue { i64, i64 } undef, i64 %38, 0
  %41 = insertvalue { i64, i64 } %40, i64 %39, 1
  store { i64, i64 } %41, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %43 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %42)
  ret i64 %45
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %24, i64 %23, i64 8)
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %24, align 4
  store i64 0, ptr %24, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %29 = and i64 ptrtoint (ptr @60 to i64), 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = shl i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = lshr i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = or i64 %36, -6557241057451442176
  %38 = insertvalue { i64, i64 } undef, i64 %37, 0
  %39 = insertvalue { i64, i64 } %38, i64 48, 1
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %3, align 8
  %41 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42

_llgo_2:                                          ; preds = %_llgo_0
  %43 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 72057594037927935
  %47 = xor i64 %46, 25399393228665167
  %48 = shl i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = lshr i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = or i64 %53, -6557241057451442176
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %4, align 4
  %57 = alloca i64, align 8
  store i64 -1, ptr %57, align 4
  call void @runtime.StoreHiddenPointee(i64 %56, ptr %57, i64 8)
  store i64 0, ptr %57, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i64
  %61 = and i64 %60, 72057594037927935
  %62 = xor i64 %61, 25399393228665167
  %63 = shl i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = lshr i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = or i64 %68, -6557241057451442176
  store i64 %69, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %69)
  call void @runtime.ClobberPointerRegs()
  %70 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load i64, ptr %6, align 4
  %72 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %72, i64 %71, i64 8)
  %73 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load i64, ptr %72, align 4
  store i64 0, ptr %72, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %75 = sub i64 %74, 1
  %76 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i64
  %79 = and i64 %78, 72057594037927935
  %80 = xor i64 %79, 25399393228665167
  %81 = shl i64 %80, 17
  %82 = select i1 false, i64 0, i64 %81
  %83 = lshr i64 %80, 39
  %84 = select i1 false, i64 0, i64 %83
  %85 = or i64 %82, %84
  %86 = and i64 %85, 72057594037927935
  %87 = or i64 %86, -6557241057451442176
  store i64 %87, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %87)
  call void @runtime.ClobberPointerRegs()
  %88 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load i64, ptr %8, align 4
  %90 = alloca i64, align 8
  store i64 %75, ptr %90, align 4
  call void @runtime.StoreHiddenPointee(i64 %89, ptr %90, i64 8)
  store i64 0, ptr %90, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = shl i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = lshr i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = or i64 %23, -6557241057451442176
  store i64 %24, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %1, align 4
  %27 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %27, i64 %26, i64 8)
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %27, align 4
  store i64 0, ptr %27, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %32 = and i64 ptrtoint (ptr @61 to i64), 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = shl i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = lshr i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = or i64 %39, -6557241057451442176
  %41 = insertvalue { i64, i64 } undef, i64 %40, 0
  %42 = insertvalue { i64, i64 } %41, i64 49, 1
  %43 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %31)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %3, align 8
  %44 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45

_llgo_2:                                          ; preds = %_llgo_0
  %46 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 72057594037927935
  %50 = xor i64 %49, 25399393228665167
  %51 = shl i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = lshr i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = or i64 %56, -6557241057451442176
  store i64 %57, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %57)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %4, align 4
  %60 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %60, i64 %59, i64 8)
  %61 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %60, align 4
  store i64 0, ptr %60, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %65 = and i64 ptrtoint (ptr @62 to i64), 72057594037927935
  %66 = xor i64 %65, 25399393228665167
  %67 = shl i64 %66, 17
  %68 = select i1 false, i64 0, i64 %67
  %69 = lshr i64 %66, 39
  %70 = select i1 false, i64 0, i64 %69
  %71 = or i64 %68, %70
  %72 = and i64 %71, 72057594037927935
  %73 = or i64 %72, -6557241057451442176
  %74 = insertvalue { i64, i64 } undef, i64 %73, 0
  %75 = insertvalue { i64, i64 } %74, i64 62, 1
  %76 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError$hiddenparam"({ i64, i64 } %75)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %64)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, ptr %6, align 8
  %77 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78

_llgo_4:                                          ; preds = %_llgo_2
  %79 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i64
  %82 = and i64 %81, 72057594037927935
  %83 = xor i64 %82, 25399393228665167
  %84 = shl i64 %83, 17
  %85 = select i1 false, i64 0, i64 %84
  %86 = lshr i64 %83, 39
  %87 = select i1 false, i64 0, i64 %86
  %88 = or i64 %85, %87
  %89 = and i64 %88, 72057594037927935
  %90 = or i64 %89, -6557241057451442176
  store i64 %90, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %90)
  call void @runtime.ClobberPointerRegs()
  %91 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load i64, ptr %7, align 4
  %93 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %93, i64 %92, i64 8)
  %94 = icmp eq ptr %93, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %93, align 4
  store i64 0, ptr %93, align 4
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %96 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i64
  %99 = and i64 %98, 72057594037927935
  %100 = xor i64 %99, 25399393228665167
  %101 = shl i64 %100, 17
  %102 = select i1 false, i64 0, i64 %101
  %103 = lshr i64 %100, 39
  %104 = select i1 false, i64 0, i64 %103
  %105 = or i64 %102, %104
  %106 = and i64 %105, 72057594037927935
  %107 = or i64 %106, -6557241057451442176
  store i64 %107, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %107)
  call void @runtime.ClobberPointerRegs()
  %108 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load i64, ptr %9, align 4
  %110 = alloca i64, align 8
  store i64 %95, ptr %110, align 4
  call void @runtime.StoreHiddenPointee(i64 %109, ptr %110, i64 8)
  store i64 0, ptr %110, align 4
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %111 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %113 = ptrtoint ptr %112 to i64
  %114 = and i64 %113, 72057594037927935
  %115 = xor i64 %114, 25399393228665167
  %116 = shl i64 %115, 17
  %117 = select i1 false, i64 0, i64 %116
  %118 = lshr i64 %115, 39
  %119 = select i1 false, i64 0, i64 %118
  %120 = or i64 %117, %119
  %121 = and i64 %120, 72057594037927935
  %122 = or i64 %121, -6557241057451442176
  store i64 %122, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %122)
  call void @runtime.ClobberPointerRegs()
  %123 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = load i64, ptr %11, align 4
  %125 = alloca i64, align 8
  store i64 -1, ptr %125, align 4
  call void @runtime.StoreHiddenPointee(i64 %124, ptr %125, i64 8)
  store i64 0, ptr %125, align 4
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca { i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr %23, align 8
  call void @runtime.ClobberPointerRegs()
  %24 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %2, align 4
  %38 = alloca i64, align 8
  store i64 -1, ptr %38, align 4
  call void @runtime.StoreHiddenPointee(i64 %37, ptr %38, i64 8)
  store i64 0, ptr %38, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = shl i64 %43, 17
  %45 = select i1 false, i64 0, i64 %44
  %46 = lshr i64 %43, 39
  %47 = select i1 false, i64 0, i64 %46
  %48 = or i64 %45, %47
  %49 = and i64 %48, 72057594037927935
  %50 = or i64 %49, -6557241057451442176
  store i64 %50, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %50)
  call void @runtime.ClobberPointerRegs()
  %51 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load i64, ptr %4, align 4
  %53 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %53, i64 %52, i64 8)
  %54 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %53, align 4
  store i64 0, ptr %53, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %56 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %58 = ptrtoint ptr %57 to i64
  %59 = and i64 %58, 72057594037927935
  %60 = xor i64 %59, 25399393228665167
  %61 = shl i64 %60, 17
  %62 = select i1 false, i64 0, i64 %61
  %63 = lshr i64 %60, 39
  %64 = select i1 false, i64 0, i64 %63
  %65 = or i64 %62, %64
  %66 = and i64 %65, 72057594037927935
  %67 = or i64 %66, -6557241057451442176
  store i64 %67, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %67)
  call void @runtime.ClobberPointerRegs()
  %68 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load i64, ptr %6, align 4
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %70, i64 %69, i64 16)
  %71 = icmp eq ptr %70, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %70, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %70, align 8
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %72, ptr %73, align 8
  %74 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %73, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %75, ptr %9, align 8
  %76 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %75, 0
  %77 = ptrtoint ptr %76 to i64
  %78 = and i64 %77, 72057594037927935
  %79 = xor i64 %78, 25399393228665167
  %80 = shl i64 %79, 17
  %81 = select i1 false, i64 0, i64 %80
  %82 = lshr i64 %79, 39
  %83 = select i1 false, i64 0, i64 %82
  %84 = or i64 %81, %83
  %85 = and i64 %84, 72057594037927935
  %86 = or i64 %85, -6557241057451442176
  %87 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %75, 1
  %88 = insertvalue { i64, i64 } undef, i64 %86, 0
  %89 = insertvalue { i64, i64 } %88, i64 %87, 1
  store { i64, i64 } %89, ptr %8, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %73, align 8
  call void @runtime.TouchConservativeSlot(ptr %73, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %91 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  store { i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %92, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %90)
  %94 = icmp sge i64 %55, %93
  br i1 %94, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  %95 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %97 = ptrtoint ptr %96 to i64
  %98 = and i64 %97, 72057594037927935
  %99 = xor i64 %98, 25399393228665167
  %100 = shl i64 %99, 17
  %101 = select i1 false, i64 0, i64 %100
  %102 = lshr i64 %99, 39
  %103 = select i1 false, i64 0, i64 %102
  %104 = or i64 %101, %103
  %105 = and i64 %104, 72057594037927935
  %106 = or i64 %105, -6557241057451442176
  store i64 %106, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %106)
  call void @runtime.ClobberPointerRegs()
  %107 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load i64, ptr %10, align 4
  %109 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @runtime.LoadHiddenPointee(ptr %109, i64 %108, i64 16)
  %110 = icmp eq ptr %109, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %109, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %109, align 8
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %111, ptr %112, align 8
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %112, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, ptr %13, align 8
  %115 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, 0
  %116 = ptrtoint ptr %115 to i64
  %117 = and i64 %116, 72057594037927935
  %118 = xor i64 %117, 25399393228665167
  %119 = shl i64 %118, 17
  %120 = select i1 false, i64 0, i64 %119
  %121 = lshr i64 %118, 39
  %122 = select i1 false, i64 0, i64 %121
  %123 = or i64 %120, %122
  %124 = and i64 %123, 72057594037927935
  %125 = or i64 %124, -6557241057451442176
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %114, 1
  %127 = insertvalue { i64, i64 } undef, i64 %125, 0
  %128 = insertvalue { i64, i64 } %127, i64 %126, 1
  store { i64, i64 } %128, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %112, align 8
  call void @runtime.TouchConservativeSlot(ptr %112, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %129 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i64
  %132 = and i64 %131, 72057594037927935
  %133 = xor i64 %132, 25399393228665167
  %134 = shl i64 %133, 17
  %135 = select i1 false, i64 0, i64 %134
  %136 = lshr i64 %133, 39
  %137 = select i1 false, i64 0, i64 %136
  %138 = or i64 %135, %137
  %139 = and i64 %138, 72057594037927935
  %140 = or i64 %139, -6557241057451442176
  store i64 %140, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %140)
  call void @runtime.ClobberPointerRegs()
  %141 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = load i64, ptr %14, align 4
  %143 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %143, i64 %142, i64 8)
  %144 = icmp eq ptr %143, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load i64, ptr %143, align 4
  store i64 0, ptr %143, align 4
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %146 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  %148 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %147, 1
  %149 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %147, i64 %145, i64 %148)
  %150 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %149, ptr %150, align 8
  %151 = icmp eq ptr %150, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %151)
  %152 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %150, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %152, ptr %17, align 8
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %152, 0
  %154 = ptrtoint ptr %153 to i64
  %155 = and i64 %154, 72057594037927935
  %156 = xor i64 %155, 25399393228665167
  %157 = shl i64 %156, 17
  %158 = select i1 false, i64 0, i64 %157
  %159 = lshr i64 %156, 39
  %160 = select i1 false, i64 0, i64 %159
  %161 = or i64 %158, %160
  %162 = and i64 %161, 72057594037927935
  %163 = or i64 %162, -6557241057451442176
  %164 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %152, 1
  %165 = insertvalue { i64, i64 } undef, i64 %163, 0
  %166 = insertvalue { i64, i64 } %165, i64 %164, 1
  store { i64, i64 } %166, ptr %16, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %150, align 8
  call void @runtime.TouchConservativeSlot(ptr %150, i64 16)
  call void @runtime.ClobberPointerRegs()
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %168 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %168)
  %169 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %23, align 8
  %170 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  %172 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %169, %"github.com/goplus/llgo/runtime/internal/runtime.String" %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %167)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 16)
  call void @runtime.ClobberPointerRegs()
  %173 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %172, 0
  %174 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %172, 1
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %176 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %176)
  %177 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  %178 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %177, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %175)
  %179 = icmp sgt i64 %173, %178
  br i1 %179, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 48 }, ptr %180, align 8
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %180, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %181)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %182 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %182)
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %184 = ptrtoint ptr %183 to i64
  %185 = and i64 %184, 72057594037927935
  %186 = xor i64 %185, 25399393228665167
  %187 = shl i64 %186, 17
  %188 = select i1 false, i64 0, i64 %187
  %189 = lshr i64 %186, 39
  %190 = select i1 false, i64 0, i64 %189
  %191 = or i64 %188, %190
  %192 = and i64 %191, 72057594037927935
  %193 = or i64 %192, -6557241057451442176
  store i64 %193, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %193)
  call void @runtime.ClobberPointerRegs()
  %194 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = load i64, ptr %18, align 4
  %196 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %196, i64 %195, i64 8)
  %197 = icmp eq ptr %196, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %197)
  %198 = load i64, ptr %196, align 4
  store i64 0, ptr %196, align 4
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  %199 = add i64 %198, %173
  %200 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %200)
  %201 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %202 = ptrtoint ptr %201 to i64
  %203 = and i64 %202, 72057594037927935
  %204 = xor i64 %203, 25399393228665167
  %205 = shl i64 %204, 17
  %206 = select i1 false, i64 0, i64 %205
  %207 = lshr i64 %204, 39
  %208 = select i1 false, i64 0, i64 %207
  %209 = or i64 %206, %208
  %210 = and i64 %209, 72057594037927935
  %211 = or i64 %210, -6557241057451442176
  store i64 %211, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %211)
  call void @runtime.ClobberPointerRegs()
  %212 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %212)
  %213 = load i64, ptr %20, align 4
  %214 = alloca i64, align 8
  store i64 %199, ptr %214, align 4
  call void @runtime.StoreHiddenPointee(i64 %213, ptr %214, i64 8)
  store i64 0, ptr %214, align 4
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %215 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %216 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %216)
  %217 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  store { i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  store { i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  call void @runtime.ClobberPointerRegs()
  %218 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %217, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %215)
  %219 = icmp ne i64 %173, %218
  br i1 %219, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %220 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %220, ptr %22, align 8
  %221 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %221)
  %222 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %22, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7, %_llgo_4
  %223 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %174, %_llgo_4 ], [ %174, %_llgo_7 ], [ %222, %_llgo_5 ]
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  call void @runtime.ClobberPointerRegs()
  %224 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %173, 0
  %225 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %224, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %223, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %225

_llgo_7:                                          ; preds = %_llgo_4
  %226 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %174)
  %227 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %174, 1
  %228 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %226, 0
  %229 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %228, ptr %227, 1
  %230 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %230, 0
  %232 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %231, ptr null, 1
  %233 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %229, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %232)
  br i1 %233, label %_llgo_5, label %_llgo_6

_llgo_8:                                          ; No predecessors!
  unreachable
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice2Cap"(ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i64 @runtime.AllocZHidden(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"unicode/utf8.init"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

attributes #0 = { noinline }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
