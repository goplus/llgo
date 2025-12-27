; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reader'
source_filename = "github.com/goplus/llgo/cl/_testgo/reader"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/reader.errorString" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/cl/_testgo/reader.stringReader" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/reader.EOF" = global %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite" = global %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1496804321, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 49 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs$imethods", i64 1, i64 1 } }, align 8
@0 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2025713268, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 49 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" }, align 8
@1 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/reader", align 1
@2 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 874216849, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 104 }, ptr @"*_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk$fields", i64 2, i64 2 } }, align 8
@3 = private unnamed_addr constant [104 x i8] c"struct { $f func(github.com/goplus/llgo/cl/_testgo/reader.Writer) (int64, error); $data unsafe.Pointer }", align 1
@"*_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131787701, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 104 }, ptr null }, ptr @"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk" }, align 8
@4 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 306543811, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 68 }, ptr @"*_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$out", i64 2, i64 2 } }, align 8
@5 = private unnamed_addr constant [68 x i8] c"func(github.com/goplus/llgo/cl/_testgo/reader.Writer) (int64, error)", align 1
@"*_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1170995737, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 68 }, ptr null }, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2135553712, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 47 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods", i64 1, i64 1 } }, align 8
@6 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.Writer", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 466144066, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 47 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" }, align 8
@7 = private unnamed_addr constant [5 x i8] c"Write", align 1
@"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -397254206, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 61 }, ptr @"*_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk$fields", i64 2, i64 2 } }, align 8
@8 = private unnamed_addr constant [61 x i8] c"struct { $f func([]byte) (int, error); $data unsafe.Pointer }", align 1
@"*_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 307112797, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 61 }, ptr null }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk" }, align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -58533757, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 }, ptr @"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out", i64 2, i64 2 } }, align 8
@9 = private unnamed_addr constant [25 x i8] c"func([]byte) (int, error)", align 1
@"*_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1244675479, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 25 }, ptr null }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@10 = private unnamed_addr constant [6 x i8] c"[]byte", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr @"*_llgo_uint8" }, align 8
@11 = private unnamed_addr constant [4 x i8] c"byte", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$in" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 }, ptr @"*_llgo_int" }, align 8
@12 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@13 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@14 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1567758122, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 49 }, ptr @"*_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I$fields", i64 2, i64 2 } }, align 8
@15 = private unnamed_addr constant [49 x i8] c"struct { $f func() string; $data unsafe.Pointer }", align 1
@"*_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1096129650, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 49 }, ptr null }, ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@16 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, ptr @"*_llgo_string" }, align 8
@17 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@18 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@19 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I" }], align 8
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$kr1iSWwMezh0B9LdQN0MhEZUNZvBlHPhlst95jAyxE0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk" }], align 8
@"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer"], align 8
@_llgo_int64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 394795202, i8 12, i8 8, i8 8, i8 38, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"*_llgo_int64" }, align 8
@20 = private unnamed_addr constant [5 x i8] c"int64", align 1
@"*_llgo_int64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1901231210, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr null }, ptr @_llgo_int64 }, align 8
@"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk" }], align 8
@"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 999934762, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 85 }, ptr @"*_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs$imethods", i64 1, i64 1 } }, align 8
@21 = private unnamed_addr constant [85 x i8] c"interface { WriteTo(github.com/goplus/llgo/cl/_testgo/reader.Writer) (int64, error) }", align 1
@"*_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1324065545, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 85 }, ptr null }, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2131804033, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 58 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo" }] }, align 8
@22 = private unnamed_addr constant [58 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2074015848, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 58 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo" }] }, align 8
@23 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1325413050, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 48 }, ptr @"*_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0$fields", i64 2, i64 2 } }, align 8
@24 = private unnamed_addr constant [48 x i8] c"struct { $f func() error; $data unsafe.Pointer }", align 1
@"*_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -100012334, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 48 }, ptr null }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0" }, align 8
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1183719404, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 12 }, ptr @"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out", i64 1, i64 1 } }, align 8
@25 = private unnamed_addr constant [12 x i8] c"func() error", align 1
@"*_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1571491799, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 12 }, ptr null }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" }, align 8
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w$out" = weak_odr constant [1 x ptr] [ptr @_llgo_error], align 8
@"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@26 = private unnamed_addr constant [4 x i8] c"Read", align 1
@27 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1318060398, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 47 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods", i64 1, i64 1 } }, align 8
@28 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.Reader", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 688483744, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 47 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" }, align 8
@"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk" }], align 8
@"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 6 }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -330631760, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 54 }, ptr @"*_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84$imethods", i64 2, i64 2 } }, align 8
@29 = private unnamed_addr constant [54 x i8] c"interface { Close() error; Read([]byte) (int, error) }", align 1
@"*_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -322135592, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 54 }, ptr null }, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" }, align 8
@"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1105494488, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read" }] }, align 8
@30 = private unnamed_addr constant [50 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1379326590, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 50 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 5 }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 907110884, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 53 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU$imethods", i64 1, i64 1 } }, align 8
@31 = private unnamed_addr constant [53 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 128707447, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 53 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" }, align 8
@32 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@"_llgo_closure$YmPi-wybieA4Oe5EUOyLhZm9uEUQ1nSoZW6sEwkvFK4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1123233770, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 61 }, ptr @"*_llgo_closure$YmPi-wybieA4Oe5EUOyLhZm9uEUQ1nSoZW6sEwkvFK4" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$YmPi-wybieA4Oe5EUOyLhZm9uEUQ1nSoZW6sEwkvFK4$fields", i64 2, i64 2 } }, align 8
@33 = private unnamed_addr constant [61 x i8] c"struct { $f func(string) (int, error); $data unsafe.Pointer }", align 1
@"*_llgo_closure$YmPi-wybieA4Oe5EUOyLhZm9uEUQ1nSoZW6sEwkvFK4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -209661603, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 61 }, ptr null }, ptr @"_llgo_closure$YmPi-wybieA4Oe5EUOyLhZm9uEUQ1nSoZW6sEwkvFK4" }, align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -183202291, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 25 }, ptr @"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out", i64 2, i64 2 } }, align 8
@34 = private unnamed_addr constant [25 x i8] c"func(string) (int, error)", align 1
@"*_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1229992101, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 25 }, ptr null }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" }, align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$in" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@"_llgo_closure$YmPi-wybieA4Oe5EUOyLhZm9uEUQ1nSoZW6sEwkvFK4$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 11 }, ptr @"_llgo_closure$YmPi-wybieA4Oe5EUOyLhZm9uEUQ1nSoZW6sEwkvFK4" }], align 8
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1973521222, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 46 }, ptr @"*_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU$imethods", i64 1, i64 1 } }, align 8
@35 = private unnamed_addr constant [46 x i8] c"interface { WriteString(string) (int, error) }", align 1
@"*_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1598946471, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 46 }, ptr null }, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" }, align 8
@36 = private unnamed_addr constant [3 x i8] c"EOF", align 1
@37 = private unnamed_addr constant [11 x i8] c"short write", align 1
@38 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [10 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1218063015, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 53 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 10, i16 10, i32 24 }, [10 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr @"_llgo_closure$MQ2ZWlodL7TEMdmgiMKeZQg05eYQM3XSFySxP1VTspk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 6 }, ptr @"_llgo_closure$b3e23I5Oi1_T23Th9-AtFYSFNA7elBno1OxDNdDIVYM", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 8 }, ptr @"_llgo_closure$2AMH4DH8x-KAY8vjo8bHykPZrBAIWS9zFeyQ9C0lezw", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 8 }, ptr @"_llgo_closure$z7_kQzj8KlPPWikNdv5z-wVnSaMRnO1iErygkC5L6E0", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 4 }, ptr @"_llgo_closure$keG4CSsB4QMOiNsGIT17jFvsgalcX_SV0vBVVXrcHHQ", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 4 }, ptr @"_llgo_closure$-chAexK6HnZysIkPe8lgHBQZJvfsSnMfdMq0JVW4AFc", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 10 }, ptr @"_llgo_closure$4K_FAnAKFaUKLsb0_0sXP_DpYP7RzrSYBS0f6xeYpf0", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 7 }, ptr @"_llgo_closure$fzsyWd8-EIUJziwfM01jsQ6m3025_M1NDiv52sVs1uk", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo" }] }, align 8
@39 = private unnamed_addr constant [53 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 -2042302092, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 53 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@40 = private unnamed_addr constant [1 x i8] c"s", align 1
@41 = private unnamed_addr constant [1 x i8] c"i", align 1
@42 = private unnamed_addr constant [8 x i8] c"prevRune", align 1
@"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 1 }, ptr @_llgo_int64, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 8 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@43 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1058413686, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 46 }, ptr @"*_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields", i64 2, i64 2 } }, align 8
@44 = private unnamed_addr constant [46 x i8] c"struct { $f func() int; $data unsafe.Pointer }", align 1
@"*_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1449453798, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 46 }, ptr null }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@45 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@46 = private unnamed_addr constant [6 x i8] c"ReadAt", align 1
@"_llgo_closure$b3e23I5Oi1_T23Th9-AtFYSFNA7elBno1OxDNdDIVYM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1032068774, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 68 }, ptr @"*_llgo_closure$b3e23I5Oi1_T23Th9-AtFYSFNA7elBno1OxDNdDIVYM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$b3e23I5Oi1_T23Th9-AtFYSFNA7elBno1OxDNdDIVYM$fields", i64 2, i64 2 } }, align 8
@47 = private unnamed_addr constant [68 x i8] c"struct { $f func([]byte, int64) (int, error); $data unsafe.Pointer }", align 1
@"*_llgo_closure$b3e23I5Oi1_T23Th9-AtFYSFNA7elBno1OxDNdDIVYM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2019735241, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 68 }, ptr null }, ptr @"_llgo_closure$b3e23I5Oi1_T23Th9-AtFYSFNA7elBno1OxDNdDIVYM" }, align 8
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 475784095, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 32 }, ptr @"*_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$out", i64 2, i64 2 } }, align 8
@48 = private unnamed_addr constant [32 x i8] c"func([]byte, int64) (int, error)", align 1
@"*_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -943934209, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 32 }, ptr null }, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" }, align 8
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$in" = weak_odr constant [2 x ptr] [ptr @"[]_llgo_uint8", ptr @_llgo_int64], align 8
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_error], align 8
@"_llgo_closure$b3e23I5Oi1_T23Th9-AtFYSFNA7elBno1OxDNdDIVYM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@49 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_closure$2AMH4DH8x-KAY8vjo8bHykPZrBAIWS9zFeyQ9C0lezw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1282438793, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 56 }, ptr @"*_llgo_closure$2AMH4DH8x-KAY8vjo8bHykPZrBAIWS9zFeyQ9C0lezw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$2AMH4DH8x-KAY8vjo8bHykPZrBAIWS9zFeyQ9C0lezw$fields", i64 2, i64 2 } }, align 8
@50 = private unnamed_addr constant [56 x i8] c"struct { $f func() (byte, error); $data unsafe.Pointer }", align 1
@"*_llgo_closure$2AMH4DH8x-KAY8vjo8bHykPZrBAIWS9zFeyQ9C0lezw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 891268800, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 56 }, ptr null }, ptr @"_llgo_closure$2AMH4DH8x-KAY8vjo8bHykPZrBAIWS9zFeyQ9C0lezw" }, align 8
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1499372428, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 20 }, ptr @"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out", i64 2, i64 2 } }, align 8
@51 = private unnamed_addr constant [20 x i8] c"func() (byte, error)", align 1
@"*_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1164205677, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 20 }, ptr null }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" }, align 8
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ$out" = weak_odr constant [2 x ptr] [ptr @_llgo_uint8, ptr @_llgo_error], align 8
@"_llgo_closure$2AMH4DH8x-KAY8vjo8bHykPZrBAIWS9zFeyQ9C0lezw$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@52 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@"_llgo_closure$z7_kQzj8KlPPWikNdv5z-wVnSaMRnO1iErygkC5L6E0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -546997648, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 61 }, ptr @"*_llgo_closure$z7_kQzj8KlPPWikNdv5z-wVnSaMRnO1iErygkC5L6E0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$z7_kQzj8KlPPWikNdv5z-wVnSaMRnO1iErygkC5L6E0$fields", i64 2, i64 2 } }, align 8
@53 = private unnamed_addr constant [61 x i8] c"struct { $f func() (rune, int, error); $data unsafe.Pointer }", align 1
@"*_llgo_closure$z7_kQzj8KlPPWikNdv5z-wVnSaMRnO1iErygkC5L6E0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 778048496, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 61 }, ptr null }, ptr @"_llgo_closure$z7_kQzj8KlPPWikNdv5z-wVnSaMRnO1iErygkC5L6E0" }, align 8
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 828863408, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 25 }, ptr @"*_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU$out", i64 3, i64 3 } }, align 8
@54 = private unnamed_addr constant [25 x i8] c"func() (rune, int, error)", align 1
@"*_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2033532803, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 25 }, ptr null }, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" }, align 8
@_llgo_rune = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1641231293, i8 12, i8 4, i8 4, i8 37, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr @"*_llgo_rune" }, align 8
@55 = private unnamed_addr constant [4 x i8] c"rune", align 1
@"*_llgo_rune" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1105732486, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 4 }, ptr null }, ptr @_llgo_rune }, align 8
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU$out" = weak_odr constant [3 x ptr] [ptr @_llgo_rune, ptr @_llgo_int, ptr @_llgo_error], align 8
@"_llgo_closure$z7_kQzj8KlPPWikNdv5z-wVnSaMRnO1iErygkC5L6E0$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@56 = private unnamed_addr constant [4 x i8] c"Seek", align 1
@"_llgo_closure$keG4CSsB4QMOiNsGIT17jFvsgalcX_SV0vBVVXrcHHQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -793175660, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 67 }, ptr @"*_llgo_closure$keG4CSsB4QMOiNsGIT17jFvsgalcX_SV0vBVVXrcHHQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$keG4CSsB4QMOiNsGIT17jFvsgalcX_SV0vBVVXrcHHQ$fields", i64 2, i64 2 } }, align 8
@57 = private unnamed_addr constant [67 x i8] c"struct { $f func(int64, int) (int64, error); $data unsafe.Pointer }", align 1
@"*_llgo_closure$keG4CSsB4QMOiNsGIT17jFvsgalcX_SV0vBVVXrcHHQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1974881180, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 67 }, ptr null }, ptr @"_llgo_closure$keG4CSsB4QMOiNsGIT17jFvsgalcX_SV0vBVVXrcHHQ" }, align 8
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367037366, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 31 }, ptr @"*_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$out", i64 2, i64 2 } }, align 8
@58 = private unnamed_addr constant [31 x i8] c"func(int64, int) (int64, error)", align 1
@"*_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1356075299, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 31 }, ptr null }, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" }, align 8
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$in" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_int], align 8
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms$out" = weak_odr constant [2 x ptr] [ptr @_llgo_int64, ptr @_llgo_error], align 8
@"_llgo_closure$keG4CSsB4QMOiNsGIT17jFvsgalcX_SV0vBVVXrcHHQ$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@59 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_closure$-chAexK6HnZysIkPe8lgHBQZJvfsSnMfdMq0JVW4AFc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 680182705, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 48 }, ptr @"*_llgo_closure$-chAexK6HnZysIkPe8lgHBQZJvfsSnMfdMq0JVW4AFc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$-chAexK6HnZysIkPe8lgHBQZJvfsSnMfdMq0JVW4AFc$fields", i64 2, i64 2 } }, align 8
@60 = private unnamed_addr constant [48 x i8] c"struct { $f func() int64; $data unsafe.Pointer }", align 1
@"*_llgo_closure$-chAexK6HnZysIkPe8lgHBQZJvfsSnMfdMq0JVW4AFc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1007375094, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 48 }, ptr null }, ptr @"_llgo_closure$-chAexK6HnZysIkPe8lgHBQZJvfsSnMfdMq0JVW4AFc" }, align 8
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1236366245, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 12 }, ptr @"*_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug$out", i64 1, i64 1 } }, align 8
@61 = private unnamed_addr constant [12 x i8] c"func() int64", align 1
@"*_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 137110153, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 12 }, ptr null }, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" }, align 8
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int64], align 8
@"_llgo_closure$-chAexK6HnZysIkPe8lgHBQZJvfsSnMfdMq0JVW4AFc$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@62 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@63 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2028598289, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 39 }, ptr @"*_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw$imethods", i64 1, i64 1 } }, align 8
@64 = private unnamed_addr constant [39 x i8] c"interface { Read([]byte) (int, error) }", align 1
@"*_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1109399972, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 39 }, ptr null }, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 881334858, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 52 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"_llgo_closure$vK4RtX_aj54SK2qRpmq5G1J_JK9BvV_9Ps38HU_Uq6I", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error" }] }, align 8
@65 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/cl/_testgo/reader.errorString", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 -690024693, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 52 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1583200459, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 28 }, ptr @"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@66 = private unnamed_addr constant [28 x i8] c"interface { Error() string }", align 1
@"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 722800013, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 28 }, ptr null }, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, align 8
@67 = private unnamed_addr constant [122 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/reader.Reader -> github.com/goplus/llgo/cl/_testgo/reader.WriterTo failed", align 1
@68 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@69 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@70 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@71 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@72 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@73 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@74 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.NopCloser"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", ptr %1)
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %3, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %4, align 8
  %5 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %3, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %5, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo")
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %6, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9

_llgo_2:                                          ; preds = %_llgo_5
  %10 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %10, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %10, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %12, ptr %13, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser")
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %13, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16

_llgo_3:                                          ; preds = %_llgo_0
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", ptr %1)
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %17, 1
  %21 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, 0
  %22 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %21, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %23 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %22, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %24 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %23, 0
  %25 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %23, 1
  br i1 %25, label %_llgo_1, label %_llgo_2
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 512)
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 512, i64 0, i64 0, i64 512)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_6, %_llgo_3, %_llgo_0
  %3 = phi %"github.com/goplus/llgo/runtime/internal/runtime.Slice" [ %2, %_llgo_0 ], [ %24, %_llgo_3 ], [ %61, %_llgo_6 ]
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 2
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 2
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %7, i64 1, i64 %6, i64 %4, i64 %5, i64 %6)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16(ptr %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  %18 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 0
  %19 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 1
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %21 = add i64 %20, %18
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 2
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %23, i64 1, i64 %22, i64 0, i64 %21, i64 %22)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %19)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %26, 1
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr null, 1
  %32 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  %33 = xor i1 %32, true
  br i1 %33, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %19)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %35, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %36, 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %34)
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %39, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr %40, 1
  %43 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42)
  br i1 %43, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 1
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 2
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %_llgo_6, label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  %47 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %19, %_llgo_2 ], [ zeroinitializer, %_llgo_4 ]
  %48 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 0
  %49 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49

_llgo_6:                                          ; preds = %_llgo_3
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 1)
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  store i8 0, ptr %51, align 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 1, 1
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 1, 2
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, ptr %55, i64 %56, i64 1)
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 1
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, 2
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, 0
  %61 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %60, i64 1, i64 %59, i64 0, i64 %58, i64 %59)
  br label %_llgo_1
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %3 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", ptr %2)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %38)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %13 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 0
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 1
  %15 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %13, 0
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16

_llgo_2:                                          ; preds = %_llgo_5
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %20 = getelementptr ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = insertvalue { ptr, ptr } undef, ptr %21, 0
  %23 = insertvalue { ptr, ptr } %22, ptr %18, 1
  %24 = extractvalue { ptr, ptr } %23, 1
  %25 = extractvalue { ptr, ptr } %23, 0
  %26 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %25(ptr %24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17)
  %27 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26, 0
  %28 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26, 1
  %29 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %27, 0
  %30 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %29, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %30

_llgo_3:                                          ; preds = %_llgo_0
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", ptr %2)
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %31, 1
  %35 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, 0
  %36 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %35, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %37 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %36, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %38 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %37, 0
  %39 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %37, 1
  br i1 %39, label %_llgo_1, label %_llgo_2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  call void @"unicode/utf8.init"()
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 11 })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 11 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
  %7 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 1
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %13 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 0
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 1
  %15 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %13, 0
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", ptr %5)
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", ptr %5)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %7, 1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %10)
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, 0
  %13 = getelementptr ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = insertvalue { ptr, ptr } undef, ptr %14, 0
  %16 = insertvalue { ptr, ptr } %15, ptr %11, 1
  %17 = extractvalue { ptr, ptr } %16, 1
  %18 = extractvalue { ptr, ptr } %16, 0
  %19 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %18(ptr %17, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %20 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19, 0
  %21 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19, 1
  %22 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %20, 0
  %23 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %22, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %23

_llgo_2:                                          ; preds = %_llgo_0
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 122 }, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %24, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  unreachable
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %13 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 0
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 1
  %15 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %13, 0
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %0, align 8
  %3 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %2, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %4 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 0
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 1
  %6 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %4, 0
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %6, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, 1
  %6 = icmp sge i64 %2, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 0

_llgo_2:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = sub i64 %9, %11
  ret i64 %12
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, 1
  %7 = icmp sge i64 %3, %6
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %12, 1
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %12, i64 %14, i64 %15)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 0
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 1
  %19 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %17, i64 %18, i64 1)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = add i64 %21, %19
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %22, ptr %23, align 4
  %24 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %19, 0
  %25 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %25
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, i64 %2) {
_llgo_0:
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 37 })
  %5 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, 1
  %9 = icmp sge i64 %2, %8
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %11 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11

_llgo_4:                                          ; preds = %_llgo_2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 1
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13, i64 %2, i64 %14)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, 0
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, 1
  %18 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %16, i64 %17, i64 1)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %22 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ zeroinitializer, %_llgo_4 ], [ %21, %_llgo_5 ]
  %23 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %18, 0
  %24 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %23, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24
}

define { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, 1
  %7 = icmp sge i64 %3, %6
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %9 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i8 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 0
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 1
  %16 = icmp slt i64 %11, 0
  %17 = icmp sge i64 %11, %15
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i8, ptr %14, i64 %11
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = add i64 %22, 1
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %23, ptr %24, align 4
  %25 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %20, 0
  %26 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %25, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26
}

define { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, 1
  %6 = icmp sge i64 %2, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %9 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i32 0, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 %11, ptr %12, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 0
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 1
  %19 = icmp slt i64 %14, 0
  %20 = icmp sge i64 %14, %18
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21)
  %22 = getelementptr inbounds i8, ptr %17, i64 %14
  %23 = load i8, ptr %22, align 1
  %24 = icmp ult i8 %23, -128
  br i1 %24, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %27, ptr %28, align 4
  %29 = zext i8 %23 to i32
  %30 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %29, 0
  %31 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %30, i64 1, 1
  %32 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %32

_llgo_4:                                          ; preds = %_llgo_2
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %33, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %34, 1
  %38 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %34, i64 %36, i64 %37)
  %39 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %38)
  %40 = extractvalue { i32, i64 } %39, 0
  %41 = extractvalue { i32, i64 } %39, 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = add i64 %43, %41
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %44, ptr %45, align 4
  %46 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %40, 0
  %47 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, i64 %41, 1
  %48 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %3, align 4
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %_llgo_2, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  %5 = phi i64 [ %1, %_llgo_2 ], [ %9, %_llgo_3 ], [ %14, %_llgo_5 ]
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = add i64 %8, %1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %10 = icmp eq i64 %2, 1
  br i1 %10, label %_llgo_3, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_6
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %12, 1
  %14 = add i64 %13, %1
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_4
  %15 = icmp eq i64 %2, 2
  br i1 %15, label %_llgo_5, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 34 })
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17

_llgo_8:                                          ; preds = %_llgo_1
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 37 })
  %19 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19

_llgo_9:                                          ; preds = %_llgo_1
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %5, ptr %20, align 4
  %21 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %22 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %21, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %22
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, 1
  ret i64 %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 48 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = sub i64 %7, 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %8, ptr %9, align 4
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 49 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 4
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 62 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8

_llgo_4:                                          ; preds = %_llgo_2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %10, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %12, align 4
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, 1
  %8 = icmp sge i64 %4, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %10, 1
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %10, i64 %12, i64 %13)
  %15 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" %14)
  %16 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, 0
  %17 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, 1
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, 1
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 48 }, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = add i64 %23, %16
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %24, ptr %25, align 4
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, 1
  %27 = icmp ne i64 %16, %26
  br i1 %27, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_7
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7, %_llgo_4
  %29 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %17, %_llgo_4 ], [ %17, %_llgo_7 ], [ %28, %_llgo_5 ]
  %30 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %16, 0
  %31 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %30, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31

_llgo_7:                                          ; preds = %_llgo_4
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %17)
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %32, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr %33, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr null, 1
  %39 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  br i1 %39, label %_llgo_5, label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"unicode/utf8.init"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  ret i1 %3
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
