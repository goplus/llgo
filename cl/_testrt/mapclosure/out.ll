; ModuleID = 'github.com/goplus/llgo/cl/_testrt/mapclosure'
source_filename = "github.com/goplus/llgo/cl/_testrt/mapclosure"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, ptr, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/mapclosure.list" = global %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/mapclosure.op" = global ptr null, align 8
@"map[_llgo_string]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.MapType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1968119091, i8 0, i8 8, i8 8, i8 53, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 59 }, ptr @"*map[_llgo_string]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, ptr @_llgo_string, ptr @"_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$DlV7vauDz15-_0VPFx6xv14dEngugP2uE7mkid6QuT0", ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.typehashFromCtx.1", i8 16, i8 16, i16 272, i32 12 }, align 8
@0 = private unnamed_addr constant [59 x i8] c"map[string]struct { $f func(main.Type) string; $h uintptr }", align 1
@"*map[_llgo_string]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1480732871, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 59 }, ptr null }, ptr @"map[_llgo_string]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", i64 0 }
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.typehashFromCtx.1" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.typehashFromCtx", i64 1, ptr @_llgo_string }
@"_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 303694817, i8 32, i8 8, i8 8, i8 57, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, ptr @"*_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8$fields", i64 2, i64 2 } }, align 8
@2 = private unnamed_addr constant [48 x i8] c"struct { $f func(main.Type) string; $h uintptr }", align 1
@"*_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 78643086, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, ptr null }, ptr @"_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, align 8
@3 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2072312180, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 22 }, ptr @"*_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$out", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [22 x i8] c"func(main.Type) string", align 1
@"*_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 940230776, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 22 }, ptr null }, ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 672393077, i8 4, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods", i64 1, i64 1 } }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", i64 0 }
@5 = private unnamed_addr constant [9 x i8] c"main.Type", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 212697707, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type" }, align 8
@6 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testrt/mapclosure", align 1
@7 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.Type"], align 8
@"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@9 = private unnamed_addr constant [2 x i8] c"$h", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 44, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", i64 0 }
@10 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr @"_llgo_func$oTN0_tD2r5hsXqJ0NlAC-r_kC84XGVs1ZfJ7QThXncE", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr @_llgo_uintptr, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$DlV7vauDz15-_0VPFx6xv14dEngugP2uE7mkid6QuT0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 272, i64 272, i32 -405010943, i8 0, i8 8, i8 8, i8 25, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 127 }, ptr @"*github.com/goplus/llgo/cl/_testrt/mapclosure.struct$DlV7vauDz15-_0VPFx6xv14dEngugP2uE7mkid6QuT0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$DlV7vauDz15-_0VPFx6xv14dEngugP2uE7mkid6QuT0$fields", i64 4, i64 4 } }, align 8
@11 = private unnamed_addr constant [127 x i8] c"struct { topbits [8]uint8; keys [8]string; elems [8]struct { $f func(main.Type) string; $h uintptr }; overflow unsafe.Pointer }", align 1
@"*github.com/goplus/llgo/cl/_testrt/mapclosure.struct$DlV7vauDz15-_0VPFx6xv14dEngugP2uE7mkid6QuT0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1562267004, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 127 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$DlV7vauDz15-_0VPFx6xv14dEngugP2uE7mkid6QuT0" }, align 8
@12 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@"[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 307038632, i8 8, i8 1, i8 1, i8 17, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.arrayequal.2", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr @"*[8]_llgo_uint8" }, ptr @_llgo_uint8, ptr @"[]_llgo_uint8", i64 8 }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.arrayequal.2" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", i64 1, ptr @"[8]_llgo_uint8" }
@13 = private unnamed_addr constant [8 x i8] c"[8]uint8", align 1
@"*[8]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -566230779, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr null }, ptr @"[8]_llgo_uint8" }, align 8
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal8" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8", i64 0 }
@14 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@15 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@16 = private unnamed_addr constant [4 x i8] c"keys", align 1
@"[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 120, i32 460245566, i8 0, i8 8, i8 8, i8 17, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.arrayequal.3", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 9 }, ptr @"*[8]_llgo_string" }, ptr @_llgo_string, ptr @"[]_llgo_string", i64 8 }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.arrayequal.3" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal", i64 1, ptr @"[8]_llgo_string" }
@17 = private unnamed_addr constant [9 x i8] c"[8]string", align 1
@"*[8]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 368026044, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 9 }, ptr null }, ptr @"[8]_llgo_string" }, align 8
@"[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 608974920, i8 0, i8 8, i8 8, i8 23, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr @"*[]_llgo_string" }, ptr @_llgo_string }, align 8
@18 = private unnamed_addr constant [8 x i8] c"[]string", align 1
@"*[]_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -157880218, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 8 }, ptr null }, ptr @"[]_llgo_string" }, align 8
@19 = private unnamed_addr constant [5 x i8] c"elems", align 1
@"[8]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.ArrayType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 128, i64 0, i32 2013725040, i8 0, i8 8, i8 8, i8 17, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 51 }, ptr @"*[8]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, ptr @"_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8", ptr @"[]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8", i64 8 }, align 8
@20 = private unnamed_addr constant [51 x i8] c"[8]struct { $f func(main.Type) string; $h uintptr }", align 1
@"*[8]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -652887321, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 51 }, ptr null }, ptr @"[8]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, align 8
@"[]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -233715851, i8 0, i8 8, i8 8, i8 23, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 50 }, ptr @"*[]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, ptr @"_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, align 8
@21 = private unnamed_addr constant [50 x i8] c"[]struct { $f func(main.Type) string; $h uintptr }", align 1
@"*[]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1541216672, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 50 }, ptr null }, ptr @"[]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8" }, align 8
@22 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@23 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$DlV7vauDz15-_0VPFx6xv14dEngugP2uE7mkid6QuT0$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr @"[8]_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"[8]_llgo_string", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @"[8]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8", i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 8 }, ptr @_llgo_Pointer, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@24 = private unnamed_addr constant [4 x i8] c"demo", align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/mapclosure.demo" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.demo", i64 0 }
@25 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684926232, i8 11, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String" }] }, align 8
@26 = private unnamed_addr constant [8 x i8] c"main.typ", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1915618481, i8 5, i8 8, i8 8, i8 25, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.4", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.4" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", i64 1, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ" }
@27 = private unnamed_addr constant [1 x i8] c"s", align 1
@"github.com/goplus/llgo/cl/_testrt/mapclosure.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 1 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -195205541, i8 0, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 29 }, ptr @"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods", i64 1, i64 1 } }, align 8
@28 = private unnamed_addr constant [29 x i8] c"interface { String() string }", align 1
@"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 876051709, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 29 }, ptr null }, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, align 8
@29 = private unnamed_addr constant [5 x i8] c"error", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.demo"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %6 = getelementptr inbounds { ptr, i64, ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64, ptr }, ptr %5, i32 0, i32 1
  store i64 1, ptr %7, align 4
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %5, i32 0, i32 2
  store ptr %1, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr i8, ptr %5, i64 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %5, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %12)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %9(ptr %11)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %13
}

define void @"github.com/goplus/llgo/cl/_testrt/mapclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.init$guard", align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_string]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8", i64 1)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 4 }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_string]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8", ptr %1, ptr %2)
  store ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/mapclosure.demo", ptr %3, align 8
  store ptr %1, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.op", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %5 = getelementptr inbounds ptr, ptr %4, i64 0
  store ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/mapclosure.demo", ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.list", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/mapclosure.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 5 }, ptr %1, align 8
  %2 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.op", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 4 }, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr @"map[_llgo_string]_llgo_closure$_ZYarGkrAQaKyU-efw2QZeERZhLc5VOKf8g_JimOGO8", ptr %2, ptr %3)
  %5 = load ptr, ptr %4, align 8
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr @"github.com/goplus/llgo/cl/_testrt/mapclosure.list", align 8
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %9 = icmp sge i64 0, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds ptr, ptr %7, i64 0
  %11 = load ptr, ptr %10, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ")
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, ptr %0, 1
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr i8, ptr %5, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %16)
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %15(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %14)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/mapclosure.typ")
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %0, 1
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr i8, ptr %11, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %22)
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %21(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %20)
  %24 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %17, %"github.com/goplus/llgo/runtime/internal/runtime.String" %23)
  %25 = xor i1 %24, true
  br i1 %25, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 5 }, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %26, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/mapclosure.(*typ).String"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/mapclosure.typ", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehashFromCtx"(ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
