; ModuleID = 'main'
source_filename = "main"

%main.T = type { ptr, ptr, i64, %"github.com/goplus/llgo/internal/runtime.Slice" }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.eface = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.StructType" = type { %"github.com/goplus/llgo/internal/abi.Type", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice" }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.T = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_main.T" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Type", align 1
@_llgo_uintptr = linkonce global ptr null, align 8
@_llgo_uint32 = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.TFlag" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/internal/abi.TFlag", align 1
@_llgo_uint8 = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [35 x i8] c"github.com/goplus/llgo/internal/abi", align 1
@4 = private unnamed_addr constant [5 x i8] c"TFlag", align 1
@"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@"main.struct$p9hq6rduefaRA0UGJ6DazYUtteEOtDFu7UHk5jhDUV4" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"f", align 1
@6 = private unnamed_addr constant [4 x i8] c"data", align 1
@7 = private unnamed_addr constant [4 x i8] c"main", align 1
@_llgo_byte = linkonce global ptr null, align 8
@"*_llgo_byte" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [5 x i8] c"Size_", align 1
@9 = private unnamed_addr constant [8 x i8] c"PtrBytes", align 1
@10 = private unnamed_addr constant [4 x i8] c"Hash", align 1
@11 = private unnamed_addr constant [6 x i8] c"Align_", align 1
@12 = private unnamed_addr constant [11 x i8] c"FieldAlign_", align 1
@13 = private unnamed_addr constant [5 x i8] c"Kind_", align 1
@14 = private unnamed_addr constant [5 x i8] c"Equal", align 1
@15 = private unnamed_addr constant [6 x i8] c"GCData", align 1
@16 = private unnamed_addr constant [4 x i8] c"Str_", align 1
@17 = private unnamed_addr constant [10 x i8] c"PtrToThis_", align 1
@18 = private unnamed_addr constant [5 x i8] c"Align", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [9 x i8] c"ArrayType", align 1
@"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/internal/abi.ArrayType", align 1
@"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY" = linkonce global ptr null, align 8
<<<<<<< HEAD
<<<<<<< HEAD
@25 = private unnamed_addr constant [4 x i8] c"Type", align 1
@26 = private unnamed_addr constant [4 x i8] c"Elem", align 1
@27 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@28 = private unnamed_addr constant [3 x i8] c"Len", align 1
@29 = private unnamed_addr constant [7 x i8] c"ChanDir", align 1
@"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.ChanDir" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.ChanDir", align 1
@31 = private unnamed_addr constant [35 x i8] c"github.com/goplus/llgo/internal/abi", align 1
@32 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
<<<<<<< HEAD
@33 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
=======
@33 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@34 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@35 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/internal/abi.FuncType", align 1
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@36 = private unnamed_addr constant [2 x i8] c"In", align 1
@37 = private unnamed_addr constant [3 x i8] c"Out", align 1
@38 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@39 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@40 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@41 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/internal/abi.InterfaceType", align 1
@"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4" = linkonce global ptr null, align 8
@42 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.Imethod", align 1
@43 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@44 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@45 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@46 = private unnamed_addr constant [3 x i8] c"Key", align 1
@47 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@48 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Kind", align 1
@_llgo_uint = linkonce global ptr null, align 8
@49 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@50 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@51 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.MapType", align 1
@"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM" = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@52 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@53 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@54 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@55 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@56 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@57 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@58 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@59 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@60 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@61 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@62 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@63 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@64 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@65 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@66 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/internal/abi.StructType", align 1
@"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0" = linkonce global ptr null, align 8
@67 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/internal/abi.StructField", align 1
@68 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@69 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@70 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/internal/abi.UncommonType", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
@71 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@72 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@73 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@74 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
=======
=======
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
@21 = private unnamed_addr constant [4 x i8] c"Type", align 1
@22 = private unnamed_addr constant [4 x i8] c"Elem", align 1
@23 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@24 = private unnamed_addr constant [3 x i8] c"Len", align 1
@25 = private unnamed_addr constant [7 x i8] c"ChanDir", align 1
@"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.ChanDir" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.ChanDir", align 1
@27 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo" = linkonce global ptr null, align 8
@28 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@29 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/internal/abi.FuncType", align 1
@"[]*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [2 x i8] c"In", align 1
@32 = private unnamed_addr constant [3 x i8] c"Out", align 1
@33 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@34 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@35 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@36 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/internal/abi.InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Imethod" = linkonce global ptr null, align 8
@37 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.Imethod", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw" = linkonce global ptr null, align 8
@38 = private unnamed_addr constant [5 x i8] c"Name_", align 1
@39 = private unnamed_addr constant [4 x i8] c"Typ_", align 1
@40 = private unnamed_addr constant [8 x i8] c"Exported", align 1
@41 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@42 = private unnamed_addr constant [7 x i8] c"PkgPath", align 1
@43 = private unnamed_addr constant [7 x i8] c"Imethod", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod" = linkonce global ptr null, align 8
@"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4" = linkonce global ptr null, align 8
@44 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@45 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@46 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@47 = private unnamed_addr constant [3 x i8] c"Key", align 1
@48 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@49 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Kind", align 1
@_llgo_uint = linkonce global ptr null, align 8
@50 = private unnamed_addr constant [6 x i8] c"String", align 1
@51 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@52 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.MapType", align 1
@"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY" = linkonce global ptr null, align 8
@"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg" = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM" = linkonce global ptr null, align 8
@53 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@54 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@55 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@56 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@57 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@58 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@59 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@60 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@61 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@62 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@63 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@64 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@65 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@66 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@67 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/internal/abi.StructType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@68 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/internal/abi.StructField", align 1
@"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig" = linkonce global ptr null, align 8
@69 = private unnamed_addr constant [3 x i8] c"Typ", align 1
@70 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@71 = private unnamed_addr constant [4 x i8] c"Tag_", align 1
@72 = private unnamed_addr constant [9 x i8] c"Embedded_", align 1
@73 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@74 = private unnamed_addr constant [11 x i8] c"StructField", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0" = linkonce global ptr null, align 8
@75 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@76 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@77 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/internal/abi.UncommonType", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
<<<<<<< HEAD
@76 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@77 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@78 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@79 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
>>>>>>> a502fe11 (ssa: fix map key has typeargs)
>>>>>>> 3be2e102 (ssa: fix map key has typeargs)
=======
@78 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@79 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@80 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@81 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@82 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/internal/abi.Method", align 1
@"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0" = linkonce global ptr null, align 8
@83 = private unnamed_addr constant [5 x i8] c"Mtyp_", align 1
@84 = private unnamed_addr constant [4 x i8] c"Ifn_", align 1
@85 = private unnamed_addr constant [4 x i8] c"Tfn_", align 1
@86 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
<<<<<<< HEAD
<<<<<<< HEAD
@34 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/internal/abi.Method", align 1
@35 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@36 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@37 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/internal/abi.FuncType", align 1
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@38 = private unnamed_addr constant [2 x i8] c"In", align 1
@39 = private unnamed_addr constant [3 x i8] c"Out", align 1
@40 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@41 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@42 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@43 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/internal/abi.InterfaceType", align 1
@"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4" = linkonce global ptr null, align 8
@44 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.Imethod", align 1
@45 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@46 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@47 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@48 = private unnamed_addr constant [3 x i8] c"Key", align 1
@49 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@50 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Kind", align 1
@_llgo_uint = linkonce global ptr null, align 8
@51 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@52 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@53 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.MapType", align 1
@"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM" = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@54 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@55 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@56 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@57 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@58 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@59 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@60 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@61 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@62 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@63 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@64 = private unnamed_addr constant [9 x i8] c"NumMethod", align 1
@65 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@66 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@67 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@68 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@69 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/internal/abi.StructType", align 1
@"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0" = linkonce global ptr null, align 8
@70 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/internal/abi.StructField", align 1
@71 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@72 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@73 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/internal/abi.UncommonType", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
@74 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@75 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@76 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@77 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
=======
<<<<<<< HEAD
@75 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/internal/abi.Method", align 1
@76 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
=======
@85 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
>>>>>>> a502fe11 (ssa: fix map key has typeargs)
>>>>>>> 3be2e102 (ssa: fix map key has typeargs)
=======
@87 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
@"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
<<<<<<< HEAD
<<<<<<< HEAD
@78 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@79 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@80 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@81 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@82 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@83 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@84 = private unnamed_addr constant [13 x i8] c"error field 3", align 1
=======
<<<<<<< HEAD
@77 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@78 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@79 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@80 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@81 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@82 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@83 = private unnamed_addr constant [13 x i8] c"error field 3", align 1
=======
@86 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@"[]_llgo_main.T" = linkonce global ptr null, align 8
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = linkonce global ptr null, align 8
@87 = private unnamed_addr constant [1 x i8] c"p", align 1
@88 = private unnamed_addr constant [1 x i8] c"t", align 1
@89 = private unnamed_addr constant [1 x i8] c"n", align 1
@90 = private unnamed_addr constant [1 x i8] c"a", align 1
@91 = private unnamed_addr constant [1 x i8] c"T", align 1
@92 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@93 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@94 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@95 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@96 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@97 = private unnamed_addr constant [13 x i8] c"error field 3", align 1
>>>>>>> a502fe11 (ssa: fix map key has typeargs)
>>>>>>> 3be2e102 (ssa: fix map key has typeargs)
=======
@88 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@"[]_llgo_main.T" = linkonce global ptr null, align 8
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = linkonce global ptr null, align 8
@89 = private unnamed_addr constant [1 x i8] c"p", align 1
@90 = private unnamed_addr constant [1 x i8] c"t", align 1
@91 = private unnamed_addr constant [1 x i8] c"n", align 1
@92 = private unnamed_addr constant [1 x i8] c"a", align 1
@93 = private unnamed_addr constant [1 x i8] c"T", align 1
@94 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@95 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@96 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@97 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@98 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@99 = private unnamed_addr constant [13 x i8] c"error field 3", align 1
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/internal/abi.init"()
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = load ptr, ptr @_llgo_main.T, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.T zeroinitializer, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 1
  store ptr %3, ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, align 8
  %8 = call ptr @main.toEface(%"github.com/goplus/llgo/internal/runtime.eface" %7)
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 72)
  store %"github.com/goplus/llgo/internal/abi.Type" zeroinitializer, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, i32 0, i32 0
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, i32 0, i32 1
  store ptr %10, ptr %13, align 8
  %14 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %11, align 8
  %15 = call ptr @main.toEface(%"github.com/goplus/llgo/internal/runtime.eface" %14)
  %16 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %18 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %22 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %24 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %25, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %28 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %28, i8 0, i64 56, i1 false)
  %29 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %30)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %31, i32 0, i32 2
  %33 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, align 8
  %34 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %33, 0
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %33, 1
  %36 = icmp sge i64 0, %35
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %36)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %34, i64 0
  %38 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %37, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %38, ptr %28, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %28, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %42, i32 0, i32 10
  %44 = load ptr, ptr %43, align 8
  %45 = icmp ne ptr %40, %44
  br i1 %45, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 0
<<<<<<< HEAD
  store ptr @79, ptr %47, align 8
=======
  store ptr @94, ptr %47, align 8
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 1
  store i64 13, ptr %48, align 4
  %49 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %46, align 8
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %49, ptr %51, align 8
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 0
  store ptr %50, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 1
  store ptr %51, ptr %54, align 8
  %55 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %55)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %28, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %57)
  %59 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8
  %61 = icmp ne ptr %58, %60
  br i1 %61, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
<<<<<<< HEAD
  store ptr @80, ptr %63, align 8
=======
  store ptr @95, ptr %63, align 8
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 18, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = load ptr, ptr @_llgo_string, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %65, ptr %67, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 0
  store ptr %66, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 1
  store ptr %67, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %71)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %72 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %72, i8 0, i64 56, i1 false)
  %73 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %74 = load ptr, ptr %73, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %74)
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %75, i32 0, i32 2
  %77 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, align 8
  %78 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %77, 0
  %79 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %77, 1
  %80 = icmp sge i64 1, %79
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %80)
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %78, i64 1
  %82 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %81, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %82, ptr %72, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %72, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %86, i32 0, i32 10
  %88 = load ptr, ptr %87, align 8
  %89 = icmp ne ptr %84, %88
  br i1 %89, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
<<<<<<< HEAD
  store ptr @81, ptr %91, align 8
=======
  store ptr @96, ptr %91, align 8
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 13, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = load ptr, ptr @_llgo_string, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %93, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 1
  store ptr %95, ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %99)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %72, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %101)
  %103 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %104 = load ptr, ptr %103, align 8
  %105 = icmp ne ptr %102, %104
  br i1 %105, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
<<<<<<< HEAD
  store ptr @82, ptr %107, align 8
=======
  store ptr @97, ptr %107, align 8
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 18, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = load ptr, ptr @_llgo_string, align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %109, ptr %111, align 8
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 0
  store ptr %110, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 1
  store ptr %111, ptr %114, align 8
  %115 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %115)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %116 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %116, i8 0, i64 56, i1 false)
  %117 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %118 = load ptr, ptr %117, align 8
  %119 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %118)
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %119, i32 0, i32 2
  %121 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, align 8
  %122 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %121, 0
  %123 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %121, 1
  %124 = icmp sge i64 2, %123
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %124)
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %122, i64 2
  %126 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %125, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %126, ptr %116, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %116, i32 0, i32 1
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %130 = load ptr, ptr %129, align 8
  %131 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %130)
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %131, i32 0, i32 2
  %133 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, align 8
  %134 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %133, 0
  %135 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %133, 1
  %136 = icmp sge i64 0, %135
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %136)
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %134, i64 0
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 8
  %140 = icmp ne ptr %128, %139
  br i1 %140, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
<<<<<<< HEAD
  store ptr @83, ptr %142, align 8
=======
  store ptr @98, ptr %142, align 8
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 13, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = load ptr, ptr @_llgo_string, align 8
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %144, ptr %146, align 8
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %147, i32 0, i32 0
  store ptr %145, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %147, i32 0, i32 1
  store ptr %146, ptr %149, align 8
  %150 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %147, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %150)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %151 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %151, i8 0, i64 56, i1 false)
  %152 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %153 = load ptr, ptr %152, align 8
  %154 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %153)
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %154, i32 0, i32 2
  %156 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %155, align 8
  %157 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %156, 0
  %158 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %156, 1
  %159 = icmp sge i64 3, %158
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %159)
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %157, i64 3
  %161 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %160, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %161, ptr %151, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %151, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8
  %164 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %163)
  %165 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %166 = load ptr, ptr %165, align 8
  %167 = icmp ne ptr %164, %166
  br i1 %167, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
<<<<<<< HEAD
  store ptr @84, ptr %169, align 8
=======
  store ptr @99, ptr %169, align 8
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 13, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = load ptr, ptr @_llgo_string, align 8
  %173 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %171, ptr %173, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %174, i32 0, i32 0
  store ptr %172, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %174, i32 0, i32 1
  store ptr %173, ptr %176, align 8
  %177 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %174, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %177)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  ret i32 0
}

define ptr @main.toEface(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %1, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/internal/abi.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 6, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 48, i64 0, i64 0)
  %5 = load ptr, ptr @_llgo_main.T, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %4, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @0, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 6, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %10, i64 25, i64 48, i64 0, i64 0)
<<<<<<< HEAD
<<<<<<< HEAD
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @1, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 40, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %15, i64 25, i64 80, i64 0, i64 22)
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @0, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 6, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %20, i64 25, i64 48, i64 0, i64 0)
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr @2, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 1, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr null, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 0, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %11)
  %31 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %25, ptr %30, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %29, i1 false)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @3, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 1, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 0, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %16)
  %41 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %35, ptr %40, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %39, i1 false)
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 0
  store ptr @4, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 1
  store i64 1, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %42, align 8
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 0
  store ptr null, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 1
  store i64 0, ptr %48, align 4
  %49 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %46, align 8
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %51 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %45, ptr %50, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %49, i1 false)
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @5, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 1, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr null, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 0, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %21)
  %61 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %55, ptr %60, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %59, i1 false)
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @6, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 4, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %67 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %66, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %31, ptr %67, align 8
  %68 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %66, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %41, ptr %68, align 8
  %69 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %66, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %51, ptr %69, align 8
  %70 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %66, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %61, ptr %70, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 0
  store ptr %66, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 1
  store i64 4, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 2
  store i64 4, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %65, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %75)
  store ptr %76, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  %77 = load ptr, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  br i1 %6, label %_llgo_3, label %_llgo_4
=======
=======
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %12 = load ptr, ptr @"*_llgo_main.T", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %11)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %14)
  store ptr %14, ptr @"*_llgo_main.T", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
<<<<<<< HEAD
<<<<<<< HEAD
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 0
  store ptr @1, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 1
  store i64 40, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %86, align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %89, i64 25, i64 80, i64 0, i64 22)
  %91 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %_llgo_5, label %_llgo_6
=======
=======
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %15 = load ptr, ptr @"*_llgo_main.T", align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @1, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 40, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %19, i64 25, i64 80, i64 0, i64 20)
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %20, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %23 = load ptr, ptr @_llgo_uintptr, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %25, ptr @_llgo_uintptr, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %26 = load ptr, ptr @_llgo_uintptr, align 8
  %27 = load ptr, ptr @_llgo_uintptr, align 8
  %28 = load ptr, ptr @_llgo_uint32, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  store ptr %30, ptr @_llgo_uint32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
<<<<<<< HEAD
<<<<<<< HEAD
  %107 = load ptr, ptr @_llgo_bool, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 0
  store ptr @1, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 1
  store i64 40, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %108, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %111, i64 25, i64 72, i64 0, i64 22)
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 0
  store ptr @9, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 1
  store i64 5, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %113, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 0
  store ptr null, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 1
  store i64 0, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %117, align 8
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %122 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %116, ptr %121, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %120, i1 false)
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 0
  store ptr @10, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 1
  store i64 8, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %123, align 8
  %127 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %127, i32 0, i32 0
  store ptr null, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %127, i32 0, i32 1
  store i64 0, ptr %129, align 4
  %130 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %127, align 8
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %132 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %126, ptr %131, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %130, i1 false)
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %133, i32 0, i32 0
  store ptr @11, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %133, i32 0, i32 1
  store i64 4, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %133, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr null, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 0, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %142 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %136, ptr %141, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %140, i1 false)
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %143, i32 0, i32 0
  store ptr @12, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %143, i32 0, i32 1
  store i64 5, ptr %145, align 4
  %146 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %143, align 8
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 0
  store ptr null, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 1
  store i64 0, ptr %149, align 4
  %150 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %147, align 8
  %151 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %146, ptr %97, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %150, i1 false)
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @13, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 6, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr null, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 0, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %161 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %155, ptr %160, i64 21, %"github.com/goplus/llgo/internal/runtime.String" %159, i1 false)
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 0
  store ptr @14, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 1
  store i64 11, ptr %164, align 4
  %165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %162, align 8
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 0
  store ptr null, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 1
  store i64 0, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %166, align 8
  %170 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %171 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %165, ptr %170, i64 22, %"github.com/goplus/llgo/internal/runtime.String" %169, i1 false)
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @15, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 5, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr null, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 0, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %181 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %175, ptr %180, i64 23, %"github.com/goplus/llgo/internal/runtime.String" %179, i1 false)
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 0
  store ptr @16, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 1
  store i64 5, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %182, align 8
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr null, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 0, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @17, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 1, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr null, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 0, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %199 = getelementptr ptr, ptr %198, i64 0
  store ptr %101, ptr %199, align 8
  %200 = getelementptr ptr, ptr %198, i64 1
  store ptr %102, ptr %200, align 8
  %201 = getelementptr ptr, ptr %198, i64 2
  store ptr %103, ptr %201, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 0
  store ptr %198, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 1
  store i64 3, ptr %204, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 2
  store i64 3, ptr %205, align 4
  %206 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, align 8
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %208 = getelementptr ptr, ptr %207, i64 0
  store ptr %107, ptr %208, align 8
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, i32 0, i32 0
  store ptr %207, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, i32 0, i32 1
  store i64 1, ptr %211, align 4
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, i32 0, i32 2
  store i64 1, ptr %212, align 4
  %213 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, align 8
  %214 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %206, %"github.com/goplus/llgo/internal/runtime.Slice" %213, i1 false)
  %215 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %193, ptr %214, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %197, i1 false)
  %216 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 0
  store ptr @18, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 1
  store i64 4, ptr %218, align 4
  %219 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %216, align 8
  %220 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 0
  store ptr null, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 1
  store i64 0, ptr %222, align 4
  %223 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %220, align 8
  %224 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %225 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %219, ptr %224, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %223, i1 false)
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 0
  store ptr @6, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 1
  store i64 4, ptr %228, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %226, align 8
  %230 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %231 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %230, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %215, ptr %231, align 8
  %232 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %230, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %225, ptr %232, align 8
  %233 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 0
  store ptr %230, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 1
  store i64 2, ptr %235, align 4
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 2
  store i64 2, ptr %236, align 4
  %237 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, align 8
  %238 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %229, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %237)
  %239 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %185, ptr %238, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %189, i1 false)
  %240 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 0
  store ptr @19, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 1
  store i64 6, ptr %242, align 4
  %243 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %240, align 8
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 0
  store ptr null, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 1
  store i64 0, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %244, align 8
  %248 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %249 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %248)
  %250 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %243, ptr %249, i64 40, %"github.com/goplus/llgo/internal/runtime.String" %247, i1 false)
  %251 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %251, i32 0, i32 0
  store ptr @20, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %251, i32 0, i32 1
  store i64 4, ptr %253, align 4
  %254 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %251, align 8
  %255 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %255, i32 0, i32 0
  store ptr null, ptr %256, align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %255, i32 0, i32 1
  store i64 0, ptr %257, align 4
  %258 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %255, align 8
  %259 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %260 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %254, ptr %259, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %258, i1 false)
  %261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 0
  store ptr @21, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 1
  store i64 10, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %261, align 8
  %265 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 0
  store ptr null, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 1
  store i64 0, ptr %267, align 4
  %268 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %265, align 8
  %269 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %112)
  %270 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %264, ptr %269, i64 64, %"github.com/goplus/llgo/internal/runtime.String" %268, i1 false)
  %271 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 0
  store ptr @6, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 1
  store i64 4, ptr %273, align 4
  %274 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %271, align 8
  %275 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 616)
  %276 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %122, ptr %276, align 8
  %277 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %132, ptr %277, align 8
  %278 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %142, ptr %278, align 8
  %279 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %151, ptr %279, align 8
  %280 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %161, ptr %280, align 8
  %281 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %171, ptr %281, align 8
  %282 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %181, ptr %282, align 8
  %283 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %239, ptr %283, align 8
  %284 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %250, ptr %284, align 8
  %285 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 9
  store %"github.com/goplus/llgo/internal/abi.StructField" %260, ptr %285, align 8
  %286 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %275, i64 10
  store %"github.com/goplus/llgo/internal/abi.StructField" %270, ptr %286, align 8
  %287 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, i32 0, i32 0
  store ptr %275, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, i32 0, i32 1
  store i64 11, ptr %289, align 4
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, i32 0, i32 2
  store i64 11, ptr %290, align 4
  %291 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %287, align 8
  %292 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %274, i64 72, %"github.com/goplus/llgo/internal/runtime.Slice" %291)
  store ptr %292, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  %293 = load ptr, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br i1 %92, label %_llgo_11, label %_llgo_12
=======
=======
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %31 = load ptr, ptr @_llgo_uint32, align 8
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @2, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 41, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %35, i64 8, i64 1, i64 0, i64 0)
  %37 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.TFlag", align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %36, ptr @"_llgo_github.com/goplus/llgo/internal/abi.TFlag", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %39 = load ptr, ptr @_llgo_uint8, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %41, ptr @_llgo_uint8, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %42 = load ptr, ptr @_llgo_uint8, align 8
  br i1 %38, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 0
  store ptr @3, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 1
  store i64 35, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %43, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @4, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 5, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %36, %"github.com/goplus/llgo/internal/runtime.String" %46, %"github.com/goplus/llgo/internal/runtime.String" %50, ptr %42, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
<<<<<<< HEAD
<<<<<<< HEAD
  %318 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %319 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %319, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %297, ptr %320, align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %319, i32 0, i32 1
  store ptr %318, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %319, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %322, align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %319, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %323, align 8
  %324 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %319, align 8
  %325 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %325, i32 0, i32 0
  store ptr @23, ptr %326, align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %325, i32 0, i32 1
  store i64 9, ptr %327, align 4
  %328 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %325, align 8
  %329 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 0
  store ptr @24, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 1
  store i64 45, ptr %331, align 4
  %332 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %329, align 8
  %333 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %332, i64 25, i64 104, i64 0, i64 20)
  %334 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %335 = icmp eq ptr %334, null
  br i1 %335, label %_llgo_17, label %_llgo_18
=======
=======
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %51 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.TFlag", align 8
  %52 = load ptr, ptr @_llgo_uint8, align 8
  %53 = load ptr, ptr @_llgo_uint8, align 8
  %54 = load ptr, ptr @_llgo_uint8, align 8
  %55 = load ptr, ptr @_llgo_Pointer, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %57)
  store ptr %57, ptr @_llgo_Pointer, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
<<<<<<< HEAD
<<<<<<< HEAD
  %336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 0
  store ptr @1, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 1
  store i64 40, ptr %338, align 4
  %339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %336, align 8
  %340 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %339, i64 25, i64 80, i64 0, i64 22)
  %341 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 0
  store ptr @1, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 1
  store i64 40, ptr %343, align 4
  %344 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %341, align 8
  %345 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %344, i64 25, i64 80, i64 0, i64 22)
  %346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 0
  store ptr @1, ptr %347, align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 1
  store i64 40, ptr %348, align 4
  %349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %346, align 8
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %349, i64 25, i64 80, i64 0, i64 22)
  %351 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %_llgo_19, label %_llgo_20
=======
=======
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %58 = load ptr, ptr @_llgo_Pointer, align 8
  %59 = load ptr, ptr @_llgo_Pointer, align 8
  %60 = load ptr, ptr @_llgo_Pointer, align 8
  %61 = load ptr, ptr @_llgo_bool, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  store ptr %63, ptr @_llgo_bool, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %64 = load ptr, ptr @_llgo_bool, align 8
  %65 = load ptr, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
<<<<<<< HEAD
<<<<<<< HEAD
  %408 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %408, i32 0, i32 0
  store ptr @22, ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %408, i32 0, i32 1
  store i64 5, ptr %410, align 4
  %411 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %408, align 8
  %412 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %413 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %413, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %411, ptr %414, align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %413, i32 0, i32 1
  store ptr %412, ptr %415, align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %413, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %413, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %417, align 8
  %418 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %413, align 8
  %419 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %419, i32 0, i32 0
  store ptr @23, ptr %420, align 8
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %419, i32 0, i32 1
  store i64 9, ptr %421, align 4
  %422 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %419, align 8
  %423 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %424 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %424, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %422, ptr %425, align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %424, i32 0, i32 1
  store ptr %423, ptr %426, align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %424, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %427, align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %424, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %428, align 8
  %429 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %424, align 8
  %430 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %430, i32 0, i32 0
  store ptr @29, ptr %431, align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %430, i32 0, i32 1
  store i64 7, ptr %432, align 4
  %433 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %430, align 8
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 0
  store ptr @30, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 1
  store i64 43, ptr %436, align 4
  %437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %434, align 8
  %438 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %437, i64 2, i64 8, i64 0, i64 0)
  %439 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %440 = icmp eq ptr %439, null
  br i1 %440, label %_llgo_23, label %_llgo_24

_llgo_22:                                         ; preds = %_llgo_102, %_llgo_20
  %441 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %441, i32 0, i32 0
  store ptr @24, ptr %442, align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %441, i32 0, i32 1
  store i64 45, ptr %443, align 4
  %444 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %441, align 8
  %445 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %444, i64 25, i64 104, i64 0, i64 20)
  %446 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %447 = icmp eq ptr %446, null
  br i1 %447, label %_llgo_103, label %_llgo_104

_llgo_23:                                         ; preds = %_llgo_21
  store ptr %438, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_21
  %448 = load ptr, ptr @_llgo_int, align 8
  br i1 %440, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %449 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 0
  store ptr @31, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 1
  store i64 35, ptr %451, align 4
  %452 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %449, align 8
  %453 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 0
  store ptr @29, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 1
  store i64 7, ptr %455, align 4
  %456 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %453, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %438, %"github.com/goplus/llgo/internal/runtime.String" %452, %"github.com/goplus/llgo/internal/runtime.String" %456, ptr %448, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %457 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %458 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %460 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %461 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, i32 0, i32 0
  store ptr %460, ptr %462, align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, i32 0, i32 1
  store i64 0, ptr %463, align 4
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, i32 0, i32 2
  store i64 0, ptr %464, align 4
  %465 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, align 8
  %466 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %467 = getelementptr ptr, ptr %466, i64 0
  store ptr %457, ptr %467, align 8
  %468 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 0
  store ptr %466, ptr %469, align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 1
  store i64 1, ptr %470, align 4
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 2
  store i64 1, ptr %471, align 4
  %472 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, align 8
  %473 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %465, %"github.com/goplus/llgo/internal/runtime.Slice" %472, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %473)
  store ptr %473, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %474 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %475 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %475, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %433, ptr %476, align 8
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %475, i32 0, i32 1
  store ptr %474, ptr %477, align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %475, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", ptr %478, align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %475, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", ptr %479, align 8
  %480 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %475, align 8
  %481 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %481, i32 0, i32 0
  store ptr @32, ptr %482, align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %481, i32 0, i32 1
  store i64 6, ptr %483, align 4
  %484 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %481, align 8
  %485 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %485, i32 0, i32 0
  store ptr @1, ptr %486, align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %485, i32 0, i32 1
  store i64 40, ptr %487, align 4
  %488 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %485, align 8
  %489 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %488, i64 25, i64 80, i64 0, i64 22)
  %490 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %491 = icmp eq ptr %490, null
  br i1 %491, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %492 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %489)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %492)
  store ptr %492, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %493 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %494 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %495 = icmp eq ptr %494, null
  br i1 %495, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %496 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, i32 0, i32 0
  store ptr %496, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, i32 0, i32 1
  store i64 0, ptr %499, align 4
  %500 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, i32 0, i32 2
  store i64 0, ptr %500, align 4
  %501 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, align 8
  %502 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %503 = getelementptr ptr, ptr %502, i64 0
  store ptr %493, ptr %503, align 8
  %504 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %504, i32 0, i32 0
  store ptr %502, ptr %505, align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %504, i32 0, i32 1
  store i64 1, ptr %506, align 4
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %504, i32 0, i32 2
  store i64 1, ptr %507, align 4
  %508 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %504, align 8
  %509 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %501, %"github.com/goplus/llgo/internal/runtime.Slice" %508, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %509)
  store ptr %509, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %510 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %511 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %484, ptr %512, align 8
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 1
  store ptr %510, ptr %513, align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %511, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %515, align 8
  %516 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %511, align 8
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr @33, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 15, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %521, i32 0, i32 0
  store ptr @34, ptr %522, align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %521, i32 0, i32 1
  store i64 42, ptr %523, align 4
  %524 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %521, align 8
  %525 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %524, i64 25, i64 40, i64 0, i64 3)
  %526 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %527 = icmp eq ptr %526, null
  br i1 %527, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %528 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %525)
  store ptr %528, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %529 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %530 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %531 = icmp eq ptr %530, null
  br i1 %531, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %532 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %533 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, i32 0, i32 0
  store ptr %532, ptr %534, align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, i32 0, i32 1
  store i64 0, ptr %535, align 4
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, i32 0, i32 2
  store i64 0, ptr %536, align 4
  %537 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, align 8
  %538 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %539 = getelementptr ptr, ptr %538, i64 0
  store ptr %529, ptr %539, align 8
  %540 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, i32 0, i32 0
  store ptr %538, ptr %541, align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, i32 0, i32 1
  store i64 1, ptr %542, align 4
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, i32 0, i32 2
  store i64 1, ptr %543, align 4
  %544 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %540, align 8
  %545 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %537, %"github.com/goplus/llgo/internal/runtime.Slice" %544, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %545)
  store ptr %545, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %546 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %547 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %548 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %520, ptr %548, align 8
  %549 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 1
  store ptr %546, ptr %549, align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", ptr %550, align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %547, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", ptr %551, align 8
  %552 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %547, align 8
  %553 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %553, i32 0, i32 0
  store ptr @35, ptr %554, align 8
  %555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %553, i32 0, i32 1
  store i64 10, ptr %555, align 4
  %556 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %553, align 8
  %557 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %558 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %558, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %556, ptr %559, align 8
  %560 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %558, i32 0, i32 1
  store ptr %557, ptr %560, align 8
  %561 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %558, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %561, align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %558, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %562, align 8
  %563 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %558, align 8
  %564 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %564, i32 0, i32 0
  store ptr @36, ptr %565, align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %564, i32 0, i32 1
  store i64 8, ptr %566, align 4
  %567 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %564, align 8
  %568 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %568, i32 0, i32 0
  store ptr @37, ptr %569, align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %568, i32 0, i32 1
  store i64 44, ptr %570, align 4
  %571 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %568, align 8
  %572 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %571, i64 25, i64 128, i64 0, i64 23)
  %573 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %574 = icmp eq ptr %573, null
  br i1 %574, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %572, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %575 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %576 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %575, i32 0, i32 0
  store ptr @1, ptr %576, align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %575, i32 0, i32 1
  store i64 40, ptr %577, align 4
  %578 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %575, align 8
  %579 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %578, i64 25, i64 80, i64 0, i64 22)
  %580 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 0
  store ptr @1, ptr %581, align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 1
  store i64 40, ptr %582, align 4
  %583 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %580, align 8
  %584 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %583, i64 25, i64 80, i64 0, i64 22)
  %585 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 0
  store ptr @1, ptr %586, align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 1
  store i64 40, ptr %587, align 4
  %588 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %585, align 8
  %589 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %588, i64 25, i64 80, i64 0, i64 22)
  %590 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %591 = icmp eq ptr %590, null
  br i1 %591, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %592 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %593 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %592, i32 0, i32 0
  store ptr @25, ptr %593, align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %592, i32 0, i32 1
  store i64 4, ptr %594, align 4
  %595 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %592, align 8
  %596 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %597 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %596, i32 0, i32 0
  store ptr null, ptr %597, align 8
  %598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %596, i32 0, i32 1
  store i64 0, ptr %598, align 4
  %599 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %596, align 8
  %600 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %595, ptr %579, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %599, i1 true)
  %601 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %602 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %601, i32 0, i32 0
  store ptr @38, ptr %602, align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %601, i32 0, i32 1
  store i64 2, ptr %603, align 4
  %604 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %601, align 8
  %605 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %606 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %605, i32 0, i32 0
  store ptr null, ptr %606, align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %605, i32 0, i32 1
  store i64 0, ptr %607, align 4
  %608 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %605, align 8
  %609 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %584)
  %610 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %609)
  %611 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %604, ptr %610, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %608, i1 false)
  %612 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %612, i32 0, i32 0
  store ptr @39, ptr %613, align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %612, i32 0, i32 1
  store i64 3, ptr %614, align 4
  %615 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %612, align 8
  %616 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %616, i32 0, i32 0
  store ptr null, ptr %617, align 8
  %618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %616, i32 0, i32 1
  store i64 0, ptr %618, align 4
  %619 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %616, align 8
  %620 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %589)
  %621 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %620)
  %622 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %615, ptr %621, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %619, i1 false)
  %623 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %623, i32 0, i32 0
  store ptr @6, ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %623, i32 0, i32 1
  store i64 4, ptr %625, align 4
  %626 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %623, align 8
  %627 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %628 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %627, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %600, ptr %628, align 8
  %629 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %627, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %611, ptr %629, align 8
  %630 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %627, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %622, ptr %630, align 8
  %631 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %631, i32 0, i32 0
  store ptr %627, ptr %632, align 8
  %633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %631, i32 0, i32 1
  store i64 3, ptr %633, align 4
  %634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %631, i32 0, i32 2
  store i64 3, ptr %634, align 4
  %635 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %631, align 8
  %636 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %626, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %635)
  store ptr %636, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %637 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %574, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %638 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %638, i32 0, i32 0
  store ptr @22, ptr %639, align 8
  %640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %638, i32 0, i32 1
  store i64 5, ptr %640, align 4
  %641 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %638, align 8
  %642 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %643 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %641, ptr %644, align 8
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 1
  store ptr %642, ptr %645, align 8
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %646, align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %647, align 8
  %648 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %643, align 8
  %649 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %649, i32 0, i32 0
  store ptr @23, ptr %650, align 8
  %651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %649, i32 0, i32 1
  store i64 9, ptr %651, align 4
  %652 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %649, align 8
  %653 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %654 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %652, ptr %655, align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 1
  store ptr %653, ptr %656, align 8
  %657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %657, align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %658, align 8
  %659 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %654, align 8
  %660 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %660, i32 0, i32 0
  store ptr @29, ptr %661, align 8
  %662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %660, i32 0, i32 1
  store i64 7, ptr %662, align 4
  %663 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %660, align 8
  %664 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %665 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %666 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %665, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %663, ptr %666, align 8
  %667 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %665, i32 0, i32 1
  store ptr %664, ptr %667, align 8
  %668 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %665, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %668, align 8
  %669 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %665, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %669, align 8
  %670 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %665, align 8
  %671 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %672 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %671, i32 0, i32 0
  store ptr @32, ptr %672, align 8
  %673 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %671, i32 0, i32 1
  store i64 6, ptr %673, align 4
  %674 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %671, align 8
  %675 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %676 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %677 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %676, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %674, ptr %677, align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %676, i32 0, i32 1
  store ptr %675, ptr %678, align 8
  %679 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %676, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %679, align 8
  %680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %676, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %680, align 8
  %681 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %676, align 8
  %682 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %683 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %682, i32 0, i32 0
  store ptr @26, ptr %683, align 8
  %684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %682, i32 0, i32 1
  store i64 4, ptr %684, align 4
  %685 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %682, align 8
  %686 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %687 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %688 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %687, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %685, ptr %688, align 8
  %689 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %687, i32 0, i32 1
  store ptr %686, ptr %689, align 8
  %690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %687, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %690, align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %687, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %691, align 8
  %692 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %687, align 8
  %693 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %694 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %693, i32 0, i32 0
  store ptr @33, ptr %694, align 8
  %695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %693, i32 0, i32 1
  store i64 15, ptr %695, align 4
  %696 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %693, align 8
  %697 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %698 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %698, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %696, ptr %699, align 8
  %700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %698, i32 0, i32 1
  store ptr %697, ptr %700, align 8
  %701 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %698, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", ptr %701, align 8
  %702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %698, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", ptr %702, align 8
  %703 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %698, align 8
  %704 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %704, i32 0, i32 0
  store ptr @35, ptr %705, align 8
  %706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %704, i32 0, i32 1
  store i64 10, ptr %706, align 4
  %707 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %704, align 8
  %708 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %709 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %709, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %707, ptr %710, align 8
  %711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %709, i32 0, i32 1
  store ptr %708, ptr %711, align 8
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %709, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %712, align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %709, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %713, align 8
  %714 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %709, align 8
  %715 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %715, i32 0, i32 0
  store ptr @36, ptr %716, align 8
  %717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %715, i32 0, i32 1
  store i64 8, ptr %717, align 4
  %718 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %715, align 8
  %719 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %720 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %720, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %718, ptr %721, align 8
  %722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %720, i32 0, i32 1
  store ptr %719, ptr %722, align 8
  %723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %720, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %723, align 8
  %724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %720, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %724, align 8
  %725 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %720, align 8
  %726 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %726, i32 0, i32 0
  store ptr @40, ptr %727, align 8
  %728 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %726, i32 0, i32 1
  store i64 7, ptr %728, align 4
  %729 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %726, align 8
  %730 = load ptr, ptr @_llgo_bool, align 8
  %731 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %732 = icmp eq ptr %731, null
  br i1 %732, label %_llgo_43, label %_llgo_44

_llgo_42:                                         ; preds = %_llgo_98, %_llgo_40
  %733 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %733, i32 0, i32 0
  store ptr @37, ptr %734, align 8
  %735 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %733, i32 0, i32 1
  store i64 44, ptr %735, align 4
  %736 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %733, align 8
  %737 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %736, i64 25, i64 128, i64 0, i64 23)
  %738 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %739 = icmp eq ptr %738, null
  br i1 %739, label %_llgo_99, label %_llgo_100

_llgo_43:                                         ; preds = %_llgo_41
  %740 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %741 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %741, i32 0, i32 0
  store ptr %740, ptr %742, align 8
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %741, i32 0, i32 1
  store i64 0, ptr %743, align 4
  %744 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %741, i32 0, i32 2
  store i64 0, ptr %744, align 4
  %745 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %741, align 8
  %746 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %747 = getelementptr ptr, ptr %746, i64 0
  store ptr %730, ptr %747, align 8
  %748 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %748, i32 0, i32 0
  store ptr %746, ptr %749, align 8
  %750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %748, i32 0, i32 1
  store i64 1, ptr %750, align 4
  %751 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %748, i32 0, i32 2
  store i64 1, ptr %751, align 4
  %752 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %748, align 8
  %753 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %745, %"github.com/goplus/llgo/internal/runtime.Slice" %752, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %753)
  store ptr %753, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_41
  %754 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %755 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %756 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %729, ptr %756, align 8
  %757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 1
  store ptr %754, ptr %757, align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %758, align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %759, align 8
  %760 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %755, align 8
  %761 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %762 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %761, i32 0, i32 0
  store ptr @41, ptr %762, align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %761, i32 0, i32 1
  store i64 10, ptr %763, align 4
  %764 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %761, align 8
  %765 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %766 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %767 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %766, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %764, ptr %767, align 8
  %768 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %766, i32 0, i32 1
  store ptr %765, ptr %768, align 8
  %769 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %766, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %769, align 8
  %770 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %766, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %770, align 8
  %771 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %766, align 8
  %772 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %772, i32 0, i32 0
  store ptr @42, ptr %773, align 8
  %774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %772, i32 0, i32 1
  store i64 13, ptr %774, align 4
  %775 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %772, align 8
  %776 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %776, i32 0, i32 0
  store ptr @43, ptr %777, align 8
  %778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %776, i32 0, i32 1
  store i64 49, ptr %778, align 4
  %779 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %776, align 8
  %780 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %779, i64 25, i64 120, i64 0, i64 22)
  %781 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %782 = icmp eq ptr %781, null
  br i1 %782, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  store ptr %780, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %783 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %784 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %783, i32 0, i32 0
  store ptr @1, ptr %784, align 8
  %785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %783, i32 0, i32 1
  store i64 40, ptr %785, align 4
  %786 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %783, align 8
  %787 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %786, i64 25, i64 80, i64 0, i64 22)
  %788 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %789 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %788, i32 0, i32 0
  store ptr @44, ptr %789, align 8
  %790 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %788, i32 0, i32 1
  store i64 43, ptr %790, align 4
  %791 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %788, align 8
  %792 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %791, i64 25, i64 24, i64 0, i64 3)
  %793 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %794 = icmp eq ptr %793, null
  br i1 %794, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %795 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %796 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %795, i32 0, i32 0
  store ptr @25, ptr %796, align 8
  %797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %795, i32 0, i32 1
  store i64 4, ptr %797, align 4
  %798 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %795, align 8
  %799 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %799, i32 0, i32 0
  store ptr null, ptr %800, align 8
  %801 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %799, i32 0, i32 1
  store i64 0, ptr %801, align 4
  %802 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %799, align 8
  %803 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %798, ptr %787, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %802, i1 true)
  %804 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %804, i32 0, i32 0
  store ptr @45, ptr %805, align 8
  %806 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %804, i32 0, i32 1
  store i64 8, ptr %806, align 4
  %807 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %804, align 8
  %808 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %808, i32 0, i32 0
  store ptr null, ptr %809, align 8
  %810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %808, i32 0, i32 1
  store i64 0, ptr %810, align 4
  %811 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %808, align 8
  %812 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %813 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %807, ptr %812, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %811, i1 false)
  %814 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %814, i32 0, i32 0
  store ptr @46, ptr %815, align 8
  %816 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %814, i32 0, i32 1
  store i64 7, ptr %816, align 4
  %817 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %814, align 8
  %818 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 0
  store ptr null, ptr %819, align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 1
  store i64 0, ptr %820, align 4
  %821 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %818, align 8
  %822 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %792)
  %823 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %817, ptr %822, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %821, i1 false)
  %824 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %825 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %824, i32 0, i32 0
  store ptr @6, ptr %825, align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %824, i32 0, i32 1
  store i64 4, ptr %826, align 4
  %827 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %824, align 8
  %828 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %829 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %828, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %803, ptr %829, align 8
  %830 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %828, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %813, ptr %830, align 8
  %831 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %828, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %823, ptr %831, align 8
  %832 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %833 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, i32 0, i32 0
  store ptr %828, ptr %833, align 8
  %834 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, i32 0, i32 1
  store i64 3, ptr %834, align 4
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, i32 0, i32 2
  store i64 3, ptr %835, align 4
  %836 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, align 8
  %837 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %827, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %836)
  store ptr %837, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %838 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %782, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %839 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %839, i32 0, i32 0
  store ptr @22, ptr %840, align 8
  %841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %839, i32 0, i32 1
  store i64 5, ptr %841, align 4
  %842 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %839, align 8
  %843 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %844 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %844, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %842, ptr %845, align 8
  %846 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %844, i32 0, i32 1
  store ptr %843, ptr %846, align 8
  %847 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %844, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %847, align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %844, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %848, align 8
  %849 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %844, align 8
  %850 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %850, i32 0, i32 0
  store ptr @23, ptr %851, align 8
  %852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %850, i32 0, i32 1
  store i64 9, ptr %852, align 4
  %853 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %850, align 8
  %854 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %855 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %855, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %853, ptr %856, align 8
  %857 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %855, i32 0, i32 1
  store ptr %854, ptr %857, align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %855, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %858, align 8
  %859 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %855, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %859, align 8
  %860 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %855, align 8
  %861 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %861, i32 0, i32 0
  store ptr @29, ptr %862, align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %861, i32 0, i32 1
  store i64 7, ptr %863, align 4
  %864 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %861, align 8
  %865 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %866 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %866, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %864, ptr %867, align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %866, i32 0, i32 1
  store ptr %865, ptr %868, align 8
  %869 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %866, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %869, align 8
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %866, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %870, align 8
  %871 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %866, align 8
  %872 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %873 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %872, i32 0, i32 0
  store ptr @32, ptr %873, align 8
  %874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %872, i32 0, i32 1
  store i64 6, ptr %874, align 4
  %875 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %872, align 8
  %876 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %877 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %877, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %875, ptr %878, align 8
  %879 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %877, i32 0, i32 1
  store ptr %876, ptr %879, align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %877, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %880, align 8
  %881 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %877, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %881, align 8
  %882 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %877, align 8
  %883 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %883, i32 0, i32 0
  store ptr @26, ptr %884, align 8
  %885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %883, i32 0, i32 1
  store i64 4, ptr %885, align 4
  %886 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %883, align 8
  %887 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %888 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %888, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %886, ptr %889, align 8
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %888, i32 0, i32 1
  store ptr %887, ptr %890, align 8
  %891 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %888, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %891, align 8
  %892 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %888, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %892, align 8
  %893 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %888, align 8
  %894 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %894, i32 0, i32 0
  store ptr @33, ptr %895, align 8
  %896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %894, i32 0, i32 1
  store i64 15, ptr %896, align 4
  %897 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %894, align 8
  %898 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %899 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %900 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %899, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %897, ptr %900, align 8
  %901 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %899, i32 0, i32 1
  store ptr %898, ptr %901, align 8
  %902 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %899, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", ptr %902, align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %899, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", ptr %903, align 8
  %904 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %899, align 8
  %905 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %906 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %905, i32 0, i32 0
  store ptr @35, ptr %906, align 8
  %907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %905, i32 0, i32 1
  store i64 10, ptr %907, align 4
  %908 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %905, align 8
  %909 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %910 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %911 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %910, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %908, ptr %911, align 8
  %912 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %910, i32 0, i32 1
  store ptr %909, ptr %912, align 8
  %913 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %910, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %913, align 8
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %910, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %914, align 8
  %915 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %910, align 8
  %916 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %917 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %916, i32 0, i32 0
  store ptr @36, ptr %917, align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %916, i32 0, i32 1
  store i64 8, ptr %918, align 4
  %919 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %916, align 8
  %920 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %921 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %921, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %919, ptr %922, align 8
  %923 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %921, i32 0, i32 1
  store ptr %920, ptr %923, align 8
  %924 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %921, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %924, align 8
  %925 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %921, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %925, align 8
  %926 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %921, align 8
  %927 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %928 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %927, i32 0, i32 0
  store ptr @40, ptr %928, align 8
  %929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %927, i32 0, i32 1
  store i64 7, ptr %929, align 4
  %930 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %927, align 8
  %931 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %932 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %933 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %932, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %930, ptr %933, align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %932, i32 0, i32 1
  store ptr %931, ptr %934, align 8
  %935 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %932, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %935, align 8
  %936 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %932, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %936, align 8
  %937 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %932, align 8
  %938 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %939 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %938, i32 0, i32 0
  store ptr @41, ptr %939, align 8
  %940 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %938, i32 0, i32 1
  store i64 10, ptr %940, align 4
  %941 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %938, align 8
  %942 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %943 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %944 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %943, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %941, ptr %944, align 8
  %945 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %943, i32 0, i32 1
  store ptr %942, ptr %945, align 8
  %946 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %943, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %946, align 8
  %947 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %943, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %947, align 8
  %948 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %943, align 8
  %949 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %950 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %949, i32 0, i32 0
  store ptr @42, ptr %950, align 8
  %951 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %949, i32 0, i32 1
  store i64 13, ptr %951, align 4
  %952 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %949, align 8
  %953 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %954 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %955 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %954, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %952, ptr %955, align 8
  %956 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %954, i32 0, i32 1
  store ptr %953, ptr %956, align 8
  %957 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %954, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %957, align 8
  %958 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %954, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %958, align 8
  %959 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %954, align 8
  %960 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %961 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %960, i32 0, i32 0
  store ptr @47, ptr %961, align 8
  %962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %960, i32 0, i32 1
  store i64 13, ptr %962, align 4
  %963 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %960, align 8
  %964 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %965 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %966 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %965, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %963, ptr %966, align 8
  %967 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %965, i32 0, i32 1
  store ptr %964, ptr %967, align 8
  %968 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %965, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %968, align 8
  %969 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %965, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %969, align 8
  %970 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %965, align 8
  %971 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %972 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %971, i32 0, i32 0
  store ptr @48, ptr %972, align 8
  %973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %971, i32 0, i32 1
  store i64 3, ptr %973, align 4
  %974 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %971, align 8
  %975 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %976 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %977 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %974, ptr %977, align 8
  %978 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 1
  store ptr %975, ptr %978, align 8
  %979 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %979, align 8
  %980 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %980, align 8
  %981 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %976, align 8
  %982 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %983 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 0
  store ptr @49, ptr %983, align 8
  %984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 1
  store i64 4, ptr %984, align 4
  %985 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %982, align 8
  %986 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %987 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %986, i32 0, i32 0
  store ptr @50, ptr %987, align 8
  %988 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %986, i32 0, i32 1
  store i64 40, ptr %988, align 4
  %989 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %986, align 8
  %990 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %989, i64 7, i64 8, i64 1, i64 1)
  %991 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %992 = icmp eq ptr %991, null
  br i1 %992, label %_llgo_51, label %_llgo_52

_llgo_50:                                         ; preds = %_llgo_94, %_llgo_48
  %993 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %994 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %993, i32 0, i32 0
  store ptr @43, ptr %994, align 8
  %995 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %993, i32 0, i32 1
  store i64 49, ptr %995, align 4
  %996 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %993, align 8
  %997 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %996, i64 25, i64 120, i64 0, i64 22)
  %998 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %999 = icmp eq ptr %998, null
  br i1 %999, label %_llgo_95, label %_llgo_96

_llgo_51:                                         ; preds = %_llgo_49
  store ptr %990, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_49
  %1000 = load ptr, ptr @_llgo_uint, align 8
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %1002 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %1002, ptr @_llgo_uint, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %1003 = load ptr, ptr @_llgo_uint, align 8
  br i1 %992, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %1004 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1005 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, i32 0, i32 0
  store ptr @51, ptr %1005, align 8
  %1006 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, i32 0, i32 1
  store i64 6, ptr %1006, align 4
  %1007 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, align 8
  %1008 = load ptr, ptr @_llgo_string, align 8
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %_llgo_57, label %_llgo_58

_llgo_56:                                         ; preds = %_llgo_60, %_llgo_54
  %1010 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1011 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1012 = icmp eq ptr %1011, null
  br i1 %1012, label %_llgo_61, label %_llgo_62

_llgo_57:                                         ; preds = %_llgo_55
  %1013 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %1013, ptr @_llgo_string, align 8
  br label %_llgo_58

<<<<<<< HEAD
_llgo_58:                                         ; preds = %_llgo_57, %_llgo_55
  %1014 = load ptr, ptr @_llgo_string, align 8
  %1015 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1016 = icmp eq ptr %1015, null
  br i1 %1016, label %_llgo_59, label %_llgo_60
=======
_llgo_58:                                         ; preds = %_llgo_57, %_llgo_52
  %1022 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1023 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1024 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %927, ptr %1024, align 8
  %1025 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 1
  store ptr %1022, ptr %1025, align 8
  %1026 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1026, align 8
  %1027 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1027, align 8
  %1028 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, align 8
  %1029 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1030 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1029, i32 0, i32 0
  store ptr @28, ptr %1030, align 8
  %1031 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1029, i32 0, i32 1
  store i64 3, ptr %1031, align 4
  %1032 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1029, align 8
  %1033 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
=======
=======
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %68 = getelementptr ptr, ptr %67, i64 0
  store ptr %58, ptr %68, align 8
  %69 = getelementptr ptr, ptr %67, i64 1
  store ptr %59, ptr %69, align 8
  %70 = getelementptr ptr, ptr %67, i64 2
  store ptr %60, ptr %70, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 0
  store ptr %67, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 1
  store i64 3, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 2
  store i64 3, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %77 = getelementptr ptr, ptr %76, i64 0
  store ptr %64, ptr %77, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 0
  store ptr %76, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 1
  store i64 1, ptr %80, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 2
  store i64 1, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, align 8
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %75, %"github.com/goplus/llgo/internal/runtime.Slice" %82, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %83)
  store ptr %83, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %84 = load ptr, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  %85 = load ptr, ptr @_llgo_Pointer, align 8
  %86 = load ptr, ptr @_llgo_Pointer, align 8
  %87 = load ptr, ptr @_llgo_Pointer, align 8
  %88 = load ptr, ptr @_llgo_Pointer, align 8
  %89 = load ptr, ptr @_llgo_bool, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @5, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 1, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr null, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 0, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %99 = getelementptr ptr, ptr %98, i64 0
  store ptr %86, ptr %99, align 8
  %100 = getelementptr ptr, ptr %98, i64 1
  store ptr %87, ptr %100, align 8
  %101 = getelementptr ptr, ptr %98, i64 2
  store ptr %88, ptr %101, align 8
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 0
  store ptr %98, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 1
  store i64 3, ptr %104, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, i32 0, i32 2
  store i64 3, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %102, align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %108 = getelementptr ptr, ptr %107, i64 0
  store ptr %89, ptr %108, align 8
  %109 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 0
  store ptr %107, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 1
  store i64 1, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 2
  store i64 1, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %106, %"github.com/goplus/llgo/internal/runtime.Slice" %113, i1 false)
  %115 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %93, ptr %114, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %97, i1 false)
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @6, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 4, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 0
  store ptr null, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 1
  store i64 0, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %120, align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %125 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %119, ptr %124, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %123, i1 false)
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @7, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 4, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %131 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %130, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %115, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %130, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %125, ptr %132, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 0
  store ptr %130, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 1
  store i64 2, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 2
  store i64 2, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, align 8
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %129, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %137)
  store ptr %138, ptr @"main.struct$p9hq6rduefaRA0UGJ6DazYUtteEOtDFu7UHk5jhDUV4", align 8
  %139 = load ptr, ptr @"main.struct$p9hq6rduefaRA0UGJ6DazYUtteEOtDFu7UHk5jhDUV4", align 8
  %140 = load ptr, ptr @_llgo_byte, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %142, ptr @_llgo_byte, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %143 = load ptr, ptr @"*_llgo_byte", align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %145)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %146)
  store ptr %146, ptr @"*_llgo_byte", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %147 = load ptr, ptr @"*_llgo_byte", align 8
  %148 = load ptr, ptr @_llgo_string, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %150 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %150, ptr @_llgo_string, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %151 = load ptr, ptr @_llgo_string, align 8
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @1, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 40, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %155, i64 25, i64 72, i64 0, i64 20)
  %157 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %159 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %156)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %159)
  store ptr %159, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %160 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %161 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %161, i32 0, i32 0
  store ptr @2, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %161, i32 0, i32 1
  store i64 41, ptr %163, align 4
  %164 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %161, align 8
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %164, i64 8, i64 1, i64 0, i64 0)
  %166 = load ptr, ptr @_llgo_Pointer, align 8
  %167 = load ptr, ptr @_llgo_Pointer, align 8
  %168 = load ptr, ptr @_llgo_Pointer, align 8
  %169 = load ptr, ptr @_llgo_bool, align 8
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 0
  store ptr @1, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 1
  store i64 40, ptr %172, align 4
  %173 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %170, align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %173, i64 25, i64 72, i64 0, i64 20)
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 0
  store ptr @8, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 1
  store i64 5, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %175, align 8
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 0
  store ptr null, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 1
  store i64 0, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %179, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %184 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %178, ptr %183, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %182, i1 false)
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 0
  store ptr @9, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 1
  store i64 8, ptr %187, align 4
  %188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %185, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 0
  store ptr null, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 1
  store i64 0, ptr %191, align 4
  %192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %189, align 8
  %193 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %194 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %188, ptr %193, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %192, i1 false)
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @10, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 4, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr null, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 1
  store i64 0, ptr %201, align 4
  %202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %199, align 8
  %203 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %204 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %198, ptr %203, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %202, i1 false)
  %205 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %205, i32 0, i32 0
  store ptr @4, ptr %206, align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %205, i32 0, i32 1
  store i64 5, ptr %207, align 4
  %208 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %205, align 8
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 0
  store ptr null, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 1
  store i64 0, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %209, align 8
  %213 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %208, ptr %165, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %212, i1 false)
  %214 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 0
  store ptr @11, ptr %215, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 1
  store i64 6, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %214, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 0
  store ptr null, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 0, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %223 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %217, ptr %222, i64 21, %"github.com/goplus/llgo/internal/runtime.String" %221, i1 false)
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr @12, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 11, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 0
  store ptr null, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 1
  store i64 0, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %228, align 8
  %232 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %233 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %227, ptr %232, i64 22, %"github.com/goplus/llgo/internal/runtime.String" %231, i1 false)
  %234 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 0
  store ptr @13, ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 1
  store i64 5, ptr %236, align 4
  %237 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %234, align 8
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 0
  store ptr null, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 1
  store i64 0, ptr %240, align 4
  %241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %238, align 8
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %243 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %237, ptr %242, i64 23, %"github.com/goplus/llgo/internal/runtime.String" %241, i1 false)
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 0
  store ptr @14, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 1
  store i64 5, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %244, align 8
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 0
  store ptr null, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 1
  store i64 0, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %248, align 8
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 0
  store ptr @5, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 1
  store i64 1, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %252, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr null, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 0, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  %260 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %261 = getelementptr ptr, ptr %260, i64 0
  store ptr %166, ptr %261, align 8
  %262 = getelementptr ptr, ptr %260, i64 1
  store ptr %167, ptr %262, align 8
  %263 = getelementptr ptr, ptr %260, i64 2
  store ptr %168, ptr %263, align 8
  %264 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, i32 0, i32 0
  store ptr %260, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, i32 0, i32 1
  store i64 3, ptr %266, align 4
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, i32 0, i32 2
  store i64 3, ptr %267, align 4
  %268 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, align 8
  %269 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %270 = getelementptr ptr, ptr %269, i64 0
  store ptr %169, ptr %270, align 8
  %271 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, i32 0, i32 0
  store ptr %269, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, i32 0, i32 1
  store i64 1, ptr %273, align 4
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, i32 0, i32 2
  store i64 1, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, align 8
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %268, %"github.com/goplus/llgo/internal/runtime.Slice" %275, i1 false)
  %277 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %255, ptr %276, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %259, i1 false)
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 0
  store ptr @6, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 1
  store i64 4, ptr %280, align 4
  %281 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %278, align 8
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 0
  store ptr null, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 1
  store i64 0, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %282, align 8
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %287 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %281, ptr %286, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %285, i1 false)
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 0
  store ptr @7, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 1
  store i64 4, ptr %290, align 4
  %291 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %288, align 8
  %292 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %293 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %292, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %277, ptr %293, align 8
  %294 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %292, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %287, ptr %294, align 8
  %295 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %295, i32 0, i32 0
  store ptr %292, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %295, i32 0, i32 1
  store i64 2, ptr %297, align 4
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %295, i32 0, i32 2
  store i64 2, ptr %298, align 4
  %299 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %295, align 8
  %300 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %291, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %299)
  %301 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %247, ptr %300, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %251, i1 false)
  %302 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 0
  store ptr @15, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 1
  store i64 6, ptr %304, align 4
  %305 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %302, align 8
  %306 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 0
  store ptr null, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 1
  store i64 0, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %306, align 8
  %310 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %311 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %310)
  %312 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %305, ptr %311, i64 40, %"github.com/goplus/llgo/internal/runtime.String" %309, i1 false)
  %313 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 0
  store ptr @16, ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 1
  store i64 4, ptr %315, align 4
  %316 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %313, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 0
  store ptr null, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 1
  store i64 0, ptr %319, align 4
  %320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %317, align 8
  %321 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %322 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %316, ptr %321, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %320, i1 false)
  %323 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 0
  store ptr @17, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 1
  store i64 10, ptr %325, align 4
  %326 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %323, align 8
  %327 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 0
  store ptr null, ptr %328, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 1
  store i64 0, ptr %329, align 4
  %330 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %327, align 8
  %331 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %174)
  %332 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %326, ptr %331, i64 64, %"github.com/goplus/llgo/internal/runtime.String" %330, i1 false)
  %333 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 0
  store ptr @7, ptr %334, align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 1
  store i64 4, ptr %335, align 4
  %336 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %333, align 8
  %337 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 616)
  %338 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %184, ptr %338, align 8
  %339 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %194, ptr %339, align 8
  %340 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %204, ptr %340, align 8
  %341 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %213, ptr %341, align 8
  %342 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %223, ptr %342, align 8
  %343 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %233, ptr %343, align 8
  %344 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %243, ptr %344, align 8
  %345 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %301, ptr %345, align 8
  %346 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %312, ptr %346, align 8
  %347 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 9
  store %"github.com/goplus/llgo/internal/abi.StructField" %322, ptr %347, align 8
  %348 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %337, i64 10
  store %"github.com/goplus/llgo/internal/abi.StructField" %332, ptr %348, align 8
  %349 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %349, i32 0, i32 0
  store ptr %337, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %349, i32 0, i32 1
  store i64 11, ptr %351, align 4
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %349, i32 0, i32 2
  store i64 11, ptr %352, align 4
  %353 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %349, align 8
  %354 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %336, i64 72, %"github.com/goplus/llgo/internal/runtime.Slice" %353)
  store ptr %354, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  %355 = load ptr, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br i1 %22, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 0
  store ptr @18, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 5, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  %360 = load ptr, ptr @_llgo_int, align 8
  %361 = icmp eq ptr %360, null
  br i1 %361, label %_llgo_33, label %_llgo_34

_llgo_32:                                         ; preds = %_llgo_148, %_llgo_30
  %362 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %363 = load ptr, ptr @_llgo_uintptr, align 8
  %364 = load ptr, ptr @_llgo_main.T, align 8
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 0
  store ptr @0, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 1
  store i64 6, ptr %367, align 4
  %368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %365, align 8
  %369 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %368, i64 25, i64 48, i64 0, i64 0)
  %370 = load ptr, ptr @"[]_llgo_main.T", align 8
  %371 = icmp eq ptr %370, null
  br i1 %371, label %_llgo_149, label %_llgo_150

_llgo_33:                                         ; preds = %_llgo_31
  %372 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %372, ptr @_llgo_int, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_31
  %373 = load ptr, ptr @_llgo_int, align 8
  %374 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %376 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %377 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, i32 0, i32 0
  store ptr %376, ptr %378, align 8
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, i32 0, i32 1
  store i64 0, ptr %379, align 4
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, i32 0, i32 2
  store i64 0, ptr %380, align 4
  %381 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, align 8
  %382 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %383 = getelementptr ptr, ptr %382, i64 0
  store ptr %373, ptr %383, align 8
  %384 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %384, i32 0, i32 0
  store ptr %382, ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %384, i32 0, i32 1
  store i64 1, ptr %386, align 4
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %384, i32 0, i32 2
  store i64 1, ptr %387, align 4
  %388 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %384, align 8
  %389 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %381, %"github.com/goplus/llgo/internal/runtime.Slice" %388, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %389)
  store ptr %389, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %390 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %391 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %359, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 1
  store ptr %390, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %395, align 8
  %396 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %391, align 8
  %397 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 0
  store ptr @19, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 1
  store i64 9, ptr %399, align 4
  %400 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %397, align 8
  %401 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %401, i32 0, i32 0
  store ptr @20, ptr %402, align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %401, i32 0, i32 1
  store i64 45, ptr %403, align 4
  %404 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %401, align 8
  %405 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %404, i64 25, i64 104, i64 0, i64 18)
  %406 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %407 = icmp eq ptr %406, null
  br i1 %407, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %405, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %408 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %409 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %410 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %411 = load ptr, ptr @_llgo_uintptr, align 8
  %412 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %412, i32 0, i32 0
  store ptr @1, ptr %413, align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %412, i32 0, i32 1
  store i64 40, ptr %414, align 4
  %415 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %412, align 8
  %416 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %415, i64 25, i64 80, i64 0, i64 20)
  %417 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 0
  store ptr @1, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 1
  store i64 40, ptr %419, align 4
  %420 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %417, align 8
  %421 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %420, i64 25, i64 80, i64 0, i64 20)
  %422 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 0
  store ptr @1, ptr %423, align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 1
  store i64 40, ptr %424, align 4
  %425 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %422, align 8
  %426 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %425, i64 25, i64 80, i64 0, i64 20)
  %427 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %428 = icmp eq ptr %427, null
  br i1 %428, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %429 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 0
  store ptr @21, ptr %430, align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 1
  store i64 4, ptr %431, align 4
  %432 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %429, align 8
  %433 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %433, i32 0, i32 0
  store ptr null, ptr %434, align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %433, i32 0, i32 1
  store i64 0, ptr %435, align 4
  %436 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %433, align 8
  %437 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %432, ptr %416, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %436, i1 true)
  %438 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 0
  store ptr @22, ptr %439, align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 1
  store i64 4, ptr %440, align 4
  %441 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %438, align 8
  %442 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %442, i32 0, i32 0
  store ptr null, ptr %443, align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %442, i32 0, i32 1
  store i64 0, ptr %444, align 4
  %445 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %442, align 8
  %446 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %421)
  %447 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %441, ptr %446, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %445, i1 false)
  %448 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %448, i32 0, i32 0
  store ptr @23, ptr %449, align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %448, i32 0, i32 1
  store i64 5, ptr %450, align 4
  %451 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %448, align 8
  %452 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %452, i32 0, i32 0
  store ptr null, ptr %453, align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %452, i32 0, i32 1
  store i64 0, ptr %454, align 4
  %455 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %452, align 8
  %456 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %426)
  %457 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %451, ptr %456, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %455, i1 false)
  %458 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 0
  store ptr @24, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 1
  store i64 3, ptr %460, align 4
  %461 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %458, align 8
  %462 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 0
  store ptr null, ptr %463, align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 1
  store i64 0, ptr %464, align 4
  %465 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %462, align 8
  %466 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %467 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %461, ptr %466, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %465, i1 false)
  %468 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %468, i32 0, i32 0
  store ptr @7, ptr %469, align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %468, i32 0, i32 1
  store i64 4, ptr %470, align 4
  %471 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %468, align 8
  %472 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %473 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %472, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %437, ptr %473, align 8
  %474 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %472, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %447, ptr %474, align 8
  %475 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %472, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %457, ptr %475, align 8
  %476 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %472, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %467, ptr %476, align 8
  %477 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, i32 0, i32 0
  store ptr %472, ptr %478, align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, i32 0, i32 1
  store i64 4, ptr %479, align 4
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, i32 0, i32 2
  store i64 4, ptr %480, align 4
  %481 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, align 8
  %482 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %471, i64 96, %"github.com/goplus/llgo/internal/runtime.Slice" %481)
  store ptr %482, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %483 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br i1 %407, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %484 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %484, i32 0, i32 0
  store ptr @18, ptr %485, align 8
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %484, i32 0, i32 1
  store i64 5, ptr %486, align 4
  %487 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %484, align 8
  %488 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %489 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %490 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %489, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %487, ptr %490, align 8
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %489, i32 0, i32 1
  store ptr %488, ptr %491, align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %489, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %489, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %493, align 8
  %494 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %489, align 8
  %495 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 0
  store ptr @19, ptr %496, align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 1
  store i64 9, ptr %497, align 4
  %498 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %495, align 8
  %499 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %500 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %501 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %500, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %498, ptr %501, align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %500, i32 0, i32 1
  store ptr %499, ptr %502, align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %500, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %503, align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %500, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %504, align 8
  %505 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %500, align 8
  %506 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %506, i32 0, i32 0
  store ptr @25, ptr %507, align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %506, i32 0, i32 1
  store i64 7, ptr %508, align 4
  %509 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %506, align 8
  %510 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %510, i32 0, i32 0
  store ptr @26, ptr %511, align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %510, i32 0, i32 1
  store i64 43, ptr %512, align 4
  %513 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %510, align 8
  %514 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %513, i64 2, i64 8, i64 0, i64 0)
  %515 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %516 = icmp eq ptr %515, null
  br i1 %516, label %_llgo_43, label %_llgo_44

_llgo_42:                                         ; preds = %_llgo_144, %_llgo_40
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr @20, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 45, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %520, i64 25, i64 104, i64 0, i64 18)
  %522 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %523 = icmp eq ptr %522, null
  br i1 %523, label %_llgo_145, label %_llgo_146

_llgo_43:                                         ; preds = %_llgo_41
  store ptr %514, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_41
  %524 = load ptr, ptr @_llgo_int, align 8
  br i1 %516, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %525 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %525, i32 0, i32 0
  store ptr @3, ptr %526, align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %525, i32 0, i32 1
  store i64 35, ptr %527, align 4
  %528 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %525, align 8
  %529 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %529, i32 0, i32 0
  store ptr @25, ptr %530, align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %529, i32 0, i32 1
  store i64 7, ptr %531, align 4
  %532 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %529, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %514, %"github.com/goplus/llgo/internal/runtime.String" %528, %"github.com/goplus/llgo/internal/runtime.String" %532, ptr %524, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %533 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %534 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %535 = icmp eq ptr %534, null
  br i1 %535, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %536 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %537 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, i32 0, i32 0
  store ptr %536, ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, i32 0, i32 1
  store i64 0, ptr %539, align 4
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, i32 0, i32 2
  store i64 0, ptr %540, align 4
  %541 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, align 8
  %542 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %543 = getelementptr ptr, ptr %542, i64 0
  store ptr %533, ptr %543, align 8
  %544 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %545 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %544, i32 0, i32 0
  store ptr %542, ptr %545, align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %544, i32 0, i32 1
  store i64 1, ptr %546, align 4
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %544, i32 0, i32 2
  store i64 1, ptr %547, align 4
  %548 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %544, align 8
  %549 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %541, %"github.com/goplus/llgo/internal/runtime.Slice" %548, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %549)
  store ptr %549, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %550 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %551 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %552 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %551, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %509, ptr %552, align 8
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %551, i32 0, i32 1
  store ptr %550, ptr %553, align 8
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %551, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", ptr %554, align 8
  %555 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %551, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", ptr %555, align 8
  %556 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %551, align 8
  %557 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %557, i32 0, i32 0
  store ptr @27, ptr %558, align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %557, i32 0, i32 1
  store i64 6, ptr %559, align 4
  %560 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %557, align 8
  %561 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %562 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %563 = icmp eq ptr %562, null
  br i1 %563, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %564 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %565 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, i32 0, i32 0
  store ptr %564, ptr %566, align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, i32 0, i32 1
  store i64 0, ptr %567, align 4
  %568 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, i32 0, i32 2
  store i64 0, ptr %568, align 4
  %569 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, align 8
  %570 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %571 = getelementptr ptr, ptr %570, i64 0
  store ptr %561, ptr %571, align 8
  %572 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, i32 0, i32 0
  store ptr %570, ptr %573, align 8
  %574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, i32 0, i32 1
  store i64 1, ptr %574, align 4
  %575 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, i32 0, i32 2
  store i64 1, ptr %575, align 4
  %576 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, align 8
  %577 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %569, %"github.com/goplus/llgo/internal/runtime.Slice" %576, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %577)
  store ptr %577, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %578 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %579 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %560, ptr %580, align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 1
  store ptr %578, ptr %581, align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %583, align 8
  %584 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %579, align 8
  %585 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 0
  store ptr @28, ptr %586, align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 1
  store i64 10, ptr %587, align 4
  %588 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %585, align 8
  %589 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %590 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %588, ptr %591, align 8
  %592 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 1
  store ptr %589, ptr %592, align 8
  %593 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %593, align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %594, align 8
  %595 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %590, align 8
  %596 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %597 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %596, i32 0, i32 0
  store ptr @29, ptr %597, align 8
  %598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %596, i32 0, i32 1
  store i64 8, ptr %598, align 4
  %599 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %596, align 8
  %600 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %601 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %600, i32 0, i32 0
  store ptr @30, ptr %601, align 8
  %602 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %600, i32 0, i32 1
  store i64 44, ptr %602, align 4
  %603 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %600, align 8
  %604 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %603, i64 25, i64 128, i64 0, i64 21)
  %605 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %606 = icmp eq ptr %605, null
  br i1 %606, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  store ptr %604, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %607 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %608 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %609 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %609, i32 0, i32 0
  store ptr @1, ptr %610, align 8
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %609, i32 0, i32 1
  store i64 40, ptr %611, align 4
  %612 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %609, align 8
  %613 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %612, i64 25, i64 80, i64 0, i64 20)
  %614 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %615 = icmp eq ptr %614, null
  br i1 %615, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %616 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %613)
  %617 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %616)
  store ptr %617, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %618 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %619 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %620 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %621 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 0
  store ptr @1, ptr %622, align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 1
  store i64 40, ptr %623, align 4
  %624 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %621, align 8
  %625 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %624, i64 25, i64 80, i64 0, i64 20)
  %626 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %627 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %626, i32 0, i32 0
  store ptr @1, ptr %627, align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %626, i32 0, i32 1
  store i64 40, ptr %628, align 4
  %629 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %626, align 8
  %630 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %629, i64 25, i64 80, i64 0, i64 20)
  %631 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %631, i32 0, i32 0
  store ptr @1, ptr %632, align 8
  %633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %631, i32 0, i32 1
  store i64 40, ptr %633, align 4
  %634 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %631, align 8
  %635 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %634, i64 25, i64 80, i64 0, i64 20)
  %636 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %637 = icmp eq ptr %636, null
  br i1 %637, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %638 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %638, i32 0, i32 0
  store ptr @21, ptr %639, align 8
  %640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %638, i32 0, i32 1
  store i64 4, ptr %640, align 4
  %641 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %638, align 8
  %642 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %642, i32 0, i32 0
  store ptr null, ptr %643, align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %642, i32 0, i32 1
  store i64 0, ptr %644, align 4
  %645 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %642, align 8
  %646 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %641, ptr %625, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %645, i1 true)
  %647 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %647, i32 0, i32 0
  store ptr @31, ptr %648, align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %647, i32 0, i32 1
  store i64 2, ptr %649, align 4
  %650 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %647, align 8
  %651 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %651, i32 0, i32 0
  store ptr null, ptr %652, align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %651, i32 0, i32 1
  store i64 0, ptr %653, align 4
  %654 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %651, align 8
  %655 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %630)
  %656 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %655)
  %657 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %650, ptr %656, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %654, i1 false)
  %658 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %658, i32 0, i32 0
  store ptr @32, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %658, i32 0, i32 1
  store i64 3, ptr %660, align 4
  %661 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %658, align 8
  %662 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %662, i32 0, i32 0
  store ptr null, ptr %663, align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %662, i32 0, i32 1
  store i64 0, ptr %664, align 4
  %665 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %662, align 8
  %666 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %635)
  %667 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %666)
  %668 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %661, ptr %667, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %665, i1 false)
  %669 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %670 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %669, i32 0, i32 0
  store ptr @7, ptr %670, align 8
  %671 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %669, i32 0, i32 1
  store i64 4, ptr %671, align 4
  %672 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %669, align 8
  %673 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %674 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %673, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %646, ptr %674, align 8
  %675 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %673, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %657, ptr %675, align 8
  %676 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %673, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %668, ptr %676, align 8
  %677 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, i32 0, i32 0
  store ptr %673, ptr %678, align 8
  %679 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, i32 0, i32 1
  store i64 3, ptr %679, align 4
  %680 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, i32 0, i32 2
  store i64 3, ptr %680, align 4
  %681 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, align 8
  %682 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %672, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %681)
  store ptr %682, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %683 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %606, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %684 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %684, i32 0, i32 0
  store ptr @18, ptr %685, align 8
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %684, i32 0, i32 1
  store i64 5, ptr %686, align 4
  %687 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %684, align 8
  %688 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %689 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %687, ptr %690, align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 1
  store ptr %688, ptr %691, align 8
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %692, align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %693, align 8
  %694 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %689, align 8
  %695 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %695, i32 0, i32 0
  store ptr @19, ptr %696, align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %695, i32 0, i32 1
  store i64 9, ptr %697, align 4
  %698 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %695, align 8
  %699 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %700 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %701 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %700, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %698, ptr %701, align 8
  %702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %700, i32 0, i32 1
  store ptr %699, ptr %702, align 8
  %703 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %700, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %703, align 8
  %704 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %700, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %704, align 8
  %705 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %700, align 8
  %706 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %707 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %706, i32 0, i32 0
  store ptr @25, ptr %707, align 8
  %708 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %706, i32 0, i32 1
  store i64 7, ptr %708, align 4
  %709 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %706, align 8
  %710 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %711 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %709, ptr %712, align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 1
  store ptr %710, ptr %713, align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %714, align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %715, align 8
  %716 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %711, align 8
  %717 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %717, i32 0, i32 0
  store ptr @27, ptr %718, align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %717, i32 0, i32 1
  store i64 6, ptr %719, align 4
  %720 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %717, align 8
  %721 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %722 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %722, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %720, ptr %723, align 8
  %724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %722, i32 0, i32 1
  store ptr %721, ptr %724, align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %722, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %725, align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %722, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %726, align 8
  %727 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %722, align 8
  %728 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %729 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %728, i32 0, i32 0
  store ptr @22, ptr %729, align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %728, i32 0, i32 1
  store i64 4, ptr %730, align 4
  %731 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %728, align 8
  %732 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %733 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %733, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %731, ptr %734, align 8
  %735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %733, i32 0, i32 1
  store ptr %732, ptr %735, align 8
  %736 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %733, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %736, align 8
  %737 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %733, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %737, align 8
  %738 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %733, align 8
  %739 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %740 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %739, i32 0, i32 0
  store ptr @28, ptr %740, align 8
  %741 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %739, i32 0, i32 1
  store i64 10, ptr %741, align 4
  %742 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %739, align 8
  %743 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %744 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %745 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %744, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %742, ptr %745, align 8
  %746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %744, i32 0, i32 1
  store ptr %743, ptr %746, align 8
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %744, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %747, align 8
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %744, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %748, align 8
  %749 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %744, align 8
  %750 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %751 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %750, i32 0, i32 0
  store ptr @29, ptr %751, align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %750, i32 0, i32 1
  store i64 8, ptr %752, align 4
  %753 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %750, align 8
  %754 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %755 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %756 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %753, ptr %756, align 8
  %757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 1
  store ptr %754, ptr %757, align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %758, align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %755, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %759, align 8
  %760 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %755, align 8
  %761 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %762 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %761, i32 0, i32 0
  store ptr @33, ptr %762, align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %761, i32 0, i32 1
  store i64 7, ptr %763, align 4
  %764 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %761, align 8
  %765 = load ptr, ptr @_llgo_bool, align 8
  %766 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %767 = icmp eq ptr %766, null
  br i1 %767, label %_llgo_59, label %_llgo_60

_llgo_58:                                         ; preds = %_llgo_142, %_llgo_56
  %768 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %769 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %770 = icmp eq ptr %769, null
  br i1 %770, label %_llgo_143, label %_llgo_144

_llgo_59:                                         ; preds = %_llgo_57
  %771 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %772 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %772, i32 0, i32 0
  store ptr %771, ptr %773, align 8
  %774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %772, i32 0, i32 1
  store i64 0, ptr %774, align 4
  %775 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %772, i32 0, i32 2
  store i64 0, ptr %775, align 4
  %776 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %772, align 8
  %777 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %778 = getelementptr ptr, ptr %777, i64 0
  store ptr %765, ptr %778, align 8
  %779 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %780 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %779, i32 0, i32 0
  store ptr %777, ptr %780, align 8
  %781 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %779, i32 0, i32 1
  store i64 1, ptr %781, align 4
  %782 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %779, i32 0, i32 2
  store i64 1, ptr %782, align 4
  %783 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %779, align 8
  %784 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %776, %"github.com/goplus/llgo/internal/runtime.Slice" %783, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %784)
  store ptr %784, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_57
  %785 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %786 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %786, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %764, ptr %787, align 8
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %786, i32 0, i32 1
  store ptr %785, ptr %788, align 8
  %789 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %786, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %789, align 8
  %790 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %786, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %790, align 8
  %791 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %786, align 8
  %792 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %792, i32 0, i32 0
  store ptr @34, ptr %793, align 8
  %794 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %792, i32 0, i32 1
  store i64 10, ptr %794, align 4
  %795 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %792, align 8
  %796 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %797 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %798 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %795, ptr %798, align 8
  %799 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 1
  store ptr %796, ptr %799, align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %800, align 8
  %801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %801, align 8
  %802 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %797, align 8
  %803 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %803, i32 0, i32 0
  store ptr @35, ptr %804, align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %803, i32 0, i32 1
  store i64 13, ptr %805, align 4
  %806 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %803, align 8
  %807 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %807, i32 0, i32 0
  store ptr @36, ptr %808, align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %807, i32 0, i32 1
  store i64 49, ptr %809, align 4
  %810 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %807, align 8
  %811 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %810, i64 25, i64 120, i64 0, i64 20)
  %812 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %813 = icmp eq ptr %812, null
  br i1 %813, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  store ptr %811, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %814 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %815 = load ptr, ptr @_llgo_string, align 8
  %816 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %817 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %816, i32 0, i32 0
  store ptr @37, ptr %817, align 8
  %818 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %816, i32 0, i32 1
  store i64 43, ptr %818, align 4
  %819 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %816, align 8
  %820 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %819, i64 25, i64 24, i64 0, i64 3)
  %821 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %822 = icmp eq ptr %821, null
  br i1 %822, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  store ptr %820, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %823 = load ptr, ptr @_llgo_string, align 8
  %824 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %825 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %824, i32 0, i32 0
  store ptr @30, ptr %825, align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %824, i32 0, i32 1
  store i64 44, ptr %826, align 4
  %827 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %824, align 8
  %828 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %827, i64 25, i64 128, i64 0, i64 21)
  %829 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %830 = icmp eq ptr %829, null
  br i1 %830, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %831 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %828)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %831)
  store ptr %831, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %832 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %833 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %834 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %833, i32 0, i32 0
  store ptr @30, ptr %834, align 8
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %833, i32 0, i32 1
  store i64 44, ptr %835, align 4
  %836 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %833, align 8
  %837 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %836, i64 25, i64 128, i64 0, i64 21)
  %838 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  %839 = icmp eq ptr %838, null
  br i1 %839, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %840 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %840, i32 0, i32 0
  store ptr @38, ptr %841, align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %840, i32 0, i32 1
  store i64 5, ptr %842, align 4
  %843 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %840, align 8
  %844 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %844, i32 0, i32 0
  store ptr null, ptr %845, align 8
  %846 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %844, i32 0, i32 1
  store i64 0, ptr %846, align 4
  %847 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %844, align 8
  %848 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %849 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %843, ptr %848, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %847, i1 false)
  %850 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %850, i32 0, i32 0
  store ptr @39, ptr %851, align 8
  %852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %850, i32 0, i32 1
  store i64 4, ptr %852, align 4
  %853 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %850, align 8
  %854 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %854, i32 0, i32 0
  store ptr null, ptr %855, align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %854, i32 0, i32 1
  store i64 0, ptr %856, align 4
  %857 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %854, align 8
  %858 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %837)
  %859 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %853, ptr %858, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %857, i1 false)
  %860 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %861 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %860, i32 0, i32 0
  store ptr @7, ptr %861, align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %860, i32 0, i32 1
  store i64 4, ptr %862, align 4
  %863 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %860, align 8
  %864 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %865 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %864, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %849, ptr %865, align 8
  %866 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %864, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %859, ptr %866, align 8
  %867 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 0
  store ptr %864, ptr %868, align 8
  %869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 1
  store i64 2, ptr %869, align 4
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 2
  store i64 2, ptr %870, align 4
  %871 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, align 8
  %872 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %863, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %871)
  store ptr %872, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %873 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br i1 %822, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %874 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 0
  store ptr @40, ptr %875, align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 1
  store i64 8, ptr %876, align 4
  %877 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %874, align 8
  %878 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %879 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %877, ptr %880, align 8
  %881 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 1
  store ptr %878, ptr %881, align 8
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", ptr %882, align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", ptr %883, align 8
  %884 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %879, align 8
  %885 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %886 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %885, i32 0, i32 0
  store ptr @41, ptr %886, align 8
  %887 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %885, i32 0, i32 1
  store i64 4, ptr %887, align 4
  %888 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %885, align 8
  %889 = load ptr, ptr @_llgo_string, align 8
  %890 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %891 = icmp eq ptr %890, null
  br i1 %891, label %_llgo_71, label %_llgo_72

_llgo_70:                                         ; preds = %_llgo_72, %_llgo_68
  %892 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %893 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 0
  store ptr @37, ptr %894, align 8
  %895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 1
  store i64 43, ptr %895, align 4
  %896 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %893, align 8
  %897 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %896, i64 25, i64 24, i64 0, i64 3)
  %898 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %899 = icmp eq ptr %898, null
  br i1 %899, label %_llgo_73, label %_llgo_74

_llgo_71:                                         ; preds = %_llgo_69
  %900 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %901 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %901, i32 0, i32 0
  store ptr %900, ptr %902, align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %901, i32 0, i32 1
  store i64 0, ptr %903, align 4
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %901, i32 0, i32 2
  store i64 0, ptr %904, align 4
  %905 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %901, align 8
  %906 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %907 = getelementptr ptr, ptr %906, i64 0
  store ptr %889, ptr %907, align 8
  %908 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %908, i32 0, i32 0
  store ptr %906, ptr %909, align 8
  %910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %908, i32 0, i32 1
  store i64 1, ptr %910, align 4
  %911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %908, i32 0, i32 2
  store i64 1, ptr %911, align 4
  %912 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %908, align 8
  %913 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %905, %"github.com/goplus/llgo/internal/runtime.Slice" %912, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %913)
  store ptr %913, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_69
  %914 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %915 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %916 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %888, ptr %916, align 8
  %917 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 1
  store ptr %914, ptr %917, align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", ptr %918, align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", ptr %919, align 8
  %920 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %915, align 8
  %921 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %921, i32 0, i32 0
  store ptr @42, ptr %922, align 8
  %923 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %921, i32 0, i32 1
  store i64 7, ptr %923, align 4
  %924 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %921, align 8
  %925 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %926 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %927 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %926, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %924, ptr %927, align 8
  %928 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %926, i32 0, i32 1
  store ptr %925, ptr %928, align 8
  %929 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %926, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", ptr %929, align 8
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %926, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", ptr %930, align 8
  %931 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %926, align 8
  %932 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %933 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %932, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %884, ptr %933, align 8
  %934 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %932, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %920, ptr %934, align 8
  %935 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %932, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %931, ptr %935, align 8
  %936 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %937 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %936, i32 0, i32 0
  store ptr %932, ptr %937, align 8
  %938 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %936, i32 0, i32 1
  store i64 3, ptr %938, align 4
  %939 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %936, i32 0, i32 2
  store i64 3, ptr %939, align 4
  %940 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %936, align 8
  %941 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %941, i32 0, i32 0
  store ptr @3, ptr %942, align 8
  %943 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %941, i32 0, i32 1
  store i64 35, ptr %943, align 4
  %944 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %941, align 8
  %945 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %946 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %945, i32 0, i32 0
  store ptr @43, ptr %946, align 8
  %947 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %945, i32 0, i32 1
  store i64 7, ptr %947, align 4
  %948 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %945, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %820, %"github.com/goplus/llgo/internal/runtime.String" %944, %"github.com/goplus/llgo/internal/runtime.String" %948, ptr %873, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %940)
  br label %_llgo_70

_llgo_73:                                         ; preds = %_llgo_70
  %949 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %897)
  store ptr %949, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_70
  %950 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %951 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %952 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %951, i32 0, i32 0
  store ptr @1, ptr %952, align 8
  %953 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %951, i32 0, i32 1
  store i64 40, ptr %953, align 4
  %954 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %951, align 8
  %955 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %954, i64 25, i64 80, i64 0, i64 20)
  %956 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %957 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %956, i32 0, i32 0
  store ptr @37, ptr %957, align 8
  %958 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %956, i32 0, i32 1
  store i64 43, ptr %958, align 4
  %959 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %956, align 8
  %960 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %959, i64 25, i64 24, i64 0, i64 3)
  %961 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %962 = icmp eq ptr %961, null
  br i1 %962, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %963 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %964 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %963, i32 0, i32 0
  store ptr @21, ptr %964, align 8
  %965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %963, i32 0, i32 1
  store i64 4, ptr %965, align 4
  %966 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %963, align 8
  %967 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %968 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %967, i32 0, i32 0
  store ptr null, ptr %968, align 8
  %969 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %967, i32 0, i32 1
  store i64 0, ptr %969, align 4
  %970 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %967, align 8
  %971 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %966, ptr %955, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %970, i1 true)
  %972 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %972, i32 0, i32 0
  store ptr @44, ptr %973, align 8
  %974 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %972, i32 0, i32 1
  store i64 8, ptr %974, align 4
  %975 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %972, align 8
  %976 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %976, i32 0, i32 0
  store ptr null, ptr %977, align 8
  %978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %976, i32 0, i32 1
  store i64 0, ptr %978, align 4
  %979 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %976, align 8
  %980 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %981 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %975, ptr %980, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %979, i1 false)
  %982 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %983 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 0
  store ptr @45, ptr %983, align 8
  %984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 1
  store i64 7, ptr %984, align 4
  %985 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %982, align 8
  %986 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %987 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %986, i32 0, i32 0
  store ptr null, ptr %987, align 8
  %988 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %986, i32 0, i32 1
  store i64 0, ptr %988, align 4
  %989 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %986, align 8
  %990 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %960)
  %991 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %985, ptr %990, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %989, i1 false)
  %992 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %993 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %992, i32 0, i32 0
  store ptr @7, ptr %993, align 8
  %994 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %992, i32 0, i32 1
  store i64 4, ptr %994, align 4
  %995 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %992, align 8
  %996 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %997 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %996, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %971, ptr %997, align 8
  %998 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %996, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %981, ptr %998, align 8
  %999 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %996, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %991, ptr %999, align 8
  %1000 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1001 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1000, i32 0, i32 0
  store ptr %996, ptr %1001, align 8
  %1002 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1000, i32 0, i32 1
  store i64 3, ptr %1002, align 4
  %1003 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1000, i32 0, i32 2
  store i64 3, ptr %1003, align 4
  %1004 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1000, align 8
  %1005 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %995, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1004)
  store ptr %1005, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %1006 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %813, label %_llgo_77, label %_llgo_78

_llgo_77:                                         ; preds = %_llgo_76
  %1007 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1008 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1007, i32 0, i32 0
  store ptr @18, ptr %1008, align 8
  %1009 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1007, i32 0, i32 1
  store i64 5, ptr %1009, align 4
  %1010 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1007, align 8
  %1011 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1012 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1013 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1010, ptr %1013, align 8
  %1014 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 1
  store ptr %1011, ptr %1014, align 8
  %1015 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %1015, align 8
  %1016 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %1016, align 8
  %1017 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, align 8
  %1018 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1019 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, i32 0, i32 0
  store ptr @19, ptr %1019, align 8
  %1020 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, i32 0, i32 1
  store i64 9, ptr %1020, align 4
  %1021 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, align 8
  %1022 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1023 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1024 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1021, ptr %1024, align 8
  %1025 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 1
  store ptr %1022, ptr %1025, align 8
  %1026 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %1026, align 8
  %1027 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %1027, align 8
  %1028 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1023, align 8
  %1029 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1030 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1029, i32 0, i32 0
  store ptr @25, ptr %1030, align 8
  %1031 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1029, i32 0, i32 1
  store i64 7, ptr %1031, align 4
  %1032 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1029, align 8
  %1033 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1034 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1035 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1032, ptr %1035, align 8
  %1036 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 1
  store ptr %1033, ptr %1036, align 8
  %1037 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %1037, align 8
  %1038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %1038, align 8
  %1039 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, align 8
  %1040 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1041 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, i32 0, i32 0
  store ptr @27, ptr %1041, align 8
  %1042 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, i32 0, i32 1
  store i64 6, ptr %1042, align 4
  %1043 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, align 8
<<<<<<< HEAD
  %1044 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1045 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1044, i32 0, i32 0
  store ptr @51, ptr %1045, align 8
  %1046 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1044, i32 0, i32 1
  store i64 43, ptr %1046, align 4
  %1047 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1044, align 8
  %1048 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1047, i64 25, i64 136, i64 0, i64 23)
  %1049 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %_llgo_59, label %_llgo_60
>>>>>>> 3be2e102 (ssa: fix map key has typeargs)

_llgo_59:                                         ; preds = %_llgo_58
  %1017 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1018 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1019 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1018, i32 0, i32 0
  store ptr %1017, ptr %1019, align 8
  %1020 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1018, i32 0, i32 1
  store i64 0, ptr %1020, align 4
  %1021 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1018, i32 0, i32 2
  store i64 0, ptr %1021, align 4
  %1022 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1018, align 8
  %1023 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1024 = getelementptr ptr, ptr %1023, i64 0
  store ptr %1014, ptr %1024, align 8
  %1025 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1026 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, i32 0, i32 0
  store ptr %1023, ptr %1026, align 8
  %1027 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, i32 0, i32 1
  store i64 1, ptr %1027, align 4
  %1028 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, i32 0, i32 2
  store i64 1, ptr %1028, align 4
  %1029 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, align 8
  %1030 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1022, %"github.com/goplus/llgo/internal/runtime.Slice" %1029, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1030)
  store ptr %1030, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %1031 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1032 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1033 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1032, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1007, ptr %1033, align 8
  %1034 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1032, i32 0, i32 1
  store ptr %1031, ptr %1034, align 8
  %1035 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1032, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1035, align 8
  %1036 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1032, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1036, align 8
  %1037 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1032, align 8
  %1038 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1039 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1038, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1007, ptr %1039, align 8
  %1040 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1038, i32 0, i32 1
  store ptr %1031, ptr %1040, align 8
  %1041 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1038, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1041, align 8
  %1042 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1038, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.Kind.String", ptr %1042, align 8
  %1043 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1038, align 8
  %1044 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1045 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1044, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1043, ptr %1045, align 8
  %1046 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1047 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1046, i32 0, i32 0
  store ptr %1044, ptr %1047, align 8
  %1048 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1046, i32 0, i32 1
  store i64 1, ptr %1048, align 4
  %1049 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1046, i32 0, i32 2
  store i64 1, ptr %1049, align 4
  %1050 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1046, align 8
  %1051 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1052 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1051, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1037, ptr %1052, align 8
  %1053 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1054 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1053, i32 0, i32 0
  store ptr %1051, ptr %1054, align 8
  %1055 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1053, i32 0, i32 1
  store i64 1, ptr %1055, align 4
  %1056 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1053, i32 0, i32 2
  store i64 1, ptr %1056, align 4
  %1057 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1053, align 8
  %1058 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1059 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1058, i32 0, i32 0
  store ptr @31, ptr %1059, align 8
  %1060 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1058, i32 0, i32 1
  store i64 35, ptr %1060, align 4
  %1061 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1058, align 8
  %1062 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1063 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1062, i32 0, i32 0
  store ptr @49, ptr %1063, align 8
  %1064 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1062, i32 0, i32 1
  store i64 4, ptr %1064, align 4
  %1065 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1062, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %990, %"github.com/goplus/llgo/internal/runtime.String" %1061, %"github.com/goplus/llgo/internal/runtime.String" %1065, ptr %1003, %"github.com/goplus/llgo/internal/runtime.Slice" %1050, %"github.com/goplus/llgo/internal/runtime.Slice" %1057)
  br label %_llgo_56

_llgo_61:                                         ; preds = %_llgo_56
  %1066 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1067 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1068 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1067, i32 0, i32 0
  store ptr %1066, ptr %1068, align 8
  %1069 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1067, i32 0, i32 1
  store i64 0, ptr %1069, align 4
  %1070 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1067, i32 0, i32 2
  store i64 0, ptr %1070, align 4
  %1071 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1067, align 8
  %1072 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1073 = getelementptr ptr, ptr %1072, i64 0
  store ptr %1010, ptr %1073, align 8
  %1074 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1075 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1074, i32 0, i32 0
  store ptr %1072, ptr %1075, align 8
  %1076 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1074, i32 0, i32 1
  store i64 1, ptr %1076, align 4
  %1077 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1074, i32 0, i32 2
  store i64 1, ptr %1077, align 4
  %1078 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1074, align 8
  %1079 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1071, %"github.com/goplus/llgo/internal/runtime.Slice" %1078, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1079)
  store ptr %1079, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_56
  %1080 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1081 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %985, ptr %1082, align 8
  %1083 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 1
  store ptr %1080, ptr %1083, align 8
  %1084 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1084, align 8
  %1085 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1085, align 8
  %1086 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, align 8
  %1087 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1088 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, i32 0, i32 0
  store ptr @28, ptr %1088, align 8
  %1089 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, i32 0, i32 1
  store i64 3, ptr %1089, align 4
  %1090 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, align 8
  %1091 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1092 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1090, ptr %1093, align 8
  %1094 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 1
  store ptr %1091, ptr %1094, align 8
  %1095 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1095, align 8
  %1096 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1096, align 8
  %1097 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, align 8
  %1098 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1098, i32 0, i32 0
  store ptr @52, ptr %1099, align 8
  %1100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1098, i32 0, i32 1
  store i64 7, ptr %1100, align 4
  %1101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1098, align 8
  %1102 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1102, i32 0, i32 0
  store ptr @53, ptr %1103, align 8
  %1104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1102, i32 0, i32 1
  store i64 43, ptr %1104, align 4
  %1105 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1102, align 8
  %1106 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1105, i64 25, i64 136, i64 0, i64 25)
  %1107 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  store ptr %1106, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %1109 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, i32 0, i32 0
  store ptr @1, ptr %1110, align 8
  %1111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, i32 0, i32 1
  store i64 40, ptr %1111, align 4
  %1112 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, align 8
  %1113 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1112, i64 25, i64 80, i64 0, i64 22)
  %1114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1114, i32 0, i32 0
  store ptr @1, ptr %1115, align 8
  %1116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1114, i32 0, i32 1
  store i64 40, ptr %1116, align 4
  %1117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1114, align 8
  %1118 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1117, i64 25, i64 80, i64 0, i64 22)
  %1119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1119, i32 0, i32 0
  store ptr @1, ptr %1120, align 8
  %1121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1119, i32 0, i32 1
  store i64 40, ptr %1121, align 4
  %1122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1119, align 8
  %1123 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1122, i64 25, i64 80, i64 0, i64 22)
  %1124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1124, i32 0, i32 0
  store ptr @1, ptr %1125, align 8
  %1126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1124, i32 0, i32 1
  store i64 40, ptr %1126, align 4
  %1127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1124, align 8
  %1128 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1127, i64 25, i64 80, i64 0, i64 22)
  %1129 = load ptr, ptr @_llgo_Pointer, align 8
  %1130 = load ptr, ptr @_llgo_Pointer, align 8
  %1131 = load ptr, ptr @_llgo_uintptr, align 8
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %1133 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %1133, ptr @_llgo_uintptr, align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %1134 = load ptr, ptr @_llgo_uintptr, align 8
  %1135 = load ptr, ptr @_llgo_uintptr, align 8
  %1136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1136, i32 0, i32 0
  store ptr @25, ptr %1137, align 8
  %1138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1136, i32 0, i32 1
  store i64 4, ptr %1138, align 4
  %1139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1136, align 8
  %1140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1140, i32 0, i32 0
  store ptr null, ptr %1141, align 8
  %1142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1140, i32 0, i32 1
  store i64 0, ptr %1142, align 4
  %1143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1140, align 8
  %1144 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1139, ptr %1113, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1143, i1 true)
  %1145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1145, i32 0, i32 0
  store ptr @48, ptr %1146, align 8
  %1147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1145, i32 0, i32 1
  store i64 3, ptr %1147, align 4
  %1148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1145, align 8
  %1149 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1149, i32 0, i32 0
  store ptr null, ptr %1150, align 8
  %1151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1149, i32 0, i32 1
  store i64 0, ptr %1151, align 4
  %1152 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1149, align 8
  %1153 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1118)
  %1154 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1148, ptr %1153, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1152, i1 false)
  %1155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1155, i32 0, i32 0
  store ptr @26, ptr %1156, align 8
  %1157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1155, i32 0, i32 1
  store i64 4, ptr %1157, align 4
  %1158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1155, align 8
  %1159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1159, i32 0, i32 0
  store ptr null, ptr %1160, align 8
  %1161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1159, i32 0, i32 1
  store i64 0, ptr %1161, align 4
  %1162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1159, align 8
  %1163 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1123)
  %1164 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1158, ptr %1163, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %1162, i1 false)
  %1165 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1165, i32 0, i32 0
  store ptr @54, ptr %1166, align 8
  %1167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1165, i32 0, i32 1
  store i64 6, ptr %1167, align 4
  %1168 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1165, align 8
  %1169 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1169, i32 0, i32 0
  store ptr null, ptr %1170, align 8
  %1171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1169, i32 0, i32 1
  store i64 0, ptr %1171, align 4
  %1172 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1169, align 8
  %1173 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1128)
  %1174 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1168, ptr %1173, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1172, i1 false)
  %1175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, i32 0, i32 0
  store ptr @55, ptr %1176, align 8
  %1177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, i32 0, i32 1
  store i64 6, ptr %1177, align 4
  %1178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, align 8
  %1179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, i32 0, i32 0
  store ptr null, ptr %1180, align 8
  %1181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, i32 0, i32 1
  store i64 0, ptr %1181, align 4
  %1182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, align 8
  %1183 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1183, i32 0, i32 0
  store ptr @17, ptr %1184, align 8
  %1185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1183, i32 0, i32 1
  store i64 1, ptr %1185, align 4
  %1186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1183, align 8
  %1187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1187, i32 0, i32 0
  store ptr null, ptr %1188, align 8
  %1189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1187, i32 0, i32 1
  store i64 0, ptr %1189, align 4
  %1190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1187, align 8
  %1191 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1192 = getelementptr ptr, ptr %1191, i64 0
  store ptr %1129, ptr %1192, align 8
  %1193 = getelementptr ptr, ptr %1191, i64 1
  store ptr %1130, ptr %1193, align 8
  %1194 = getelementptr ptr, ptr %1191, i64 2
  store ptr %1134, ptr %1194, align 8
  %1195 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1195, i32 0, i32 0
  store ptr %1191, ptr %1196, align 8
  %1197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1195, i32 0, i32 1
  store i64 3, ptr %1197, align 4
  %1198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1195, i32 0, i32 2
  store i64 3, ptr %1198, align 4
  %1199 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1195, align 8
  %1200 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1201 = getelementptr ptr, ptr %1200, i64 0
  store ptr %1135, ptr %1201, align 8
  %1202 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1202, i32 0, i32 0
  store ptr %1200, ptr %1203, align 8
  %1204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1202, i32 0, i32 1
  store i64 1, ptr %1204, align 4
  %1205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1202, i32 0, i32 2
  store i64 1, ptr %1205, align 4
  %1206 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1202, align 8
  %1207 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1199, %"github.com/goplus/llgo/internal/runtime.Slice" %1206, i1 false)
  %1208 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1186, ptr %1207, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1190, i1 false)
  %1209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1209, i32 0, i32 0
  store ptr @18, ptr %1210, align 8
  %1211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1209, i32 0, i32 1
  store i64 4, ptr %1211, align 4
  %1212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1209, align 8
  %1213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1213, i32 0, i32 0
  store ptr null, ptr %1214, align 8
  %1215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1213, i32 0, i32 1
  store i64 0, ptr %1215, align 4
  %1216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1213, align 8
  %1217 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1218 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1212, ptr %1217, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %1216, i1 false)
  %1219 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1219, i32 0, i32 0
  store ptr @6, ptr %1220, align 8
  %1221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1219, i32 0, i32 1
  store i64 4, ptr %1221, align 4
  %1222 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1219, align 8
  %1223 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %1224 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1223, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1208, ptr %1224, align 8
  %1225 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1223, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1218, ptr %1225, align 8
  %1226 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1226, i32 0, i32 0
  store ptr %1223, ptr %1227, align 8
  %1228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1226, i32 0, i32 1
  store i64 2, ptr %1228, align 4
  %1229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1226, i32 0, i32 2
  store i64 2, ptr %1229, align 4
  %1230 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1226, align 8
  %1231 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1222, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %1230)
  %1232 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1178, ptr %1231, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %1182, i1 false)
  %1233 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1233, i32 0, i32 0
  store ptr @56, ptr %1234, align 8
  %1235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1233, i32 0, i32 1
  store i64 7, ptr %1235, align 4
  %1236 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1233, align 8
  %1237 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1237, i32 0, i32 0
  store ptr null, ptr %1238, align 8
  %1239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1237, i32 0, i32 1
  store i64 0, ptr %1239, align 4
  %1240 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1237, align 8
  %1241 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1242 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1236, ptr %1241, i64 112, %"github.com/goplus/llgo/internal/runtime.String" %1240, i1 false)
  %1243 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1243, i32 0, i32 0
  store ptr @57, ptr %1244, align 8
  %1245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1243, i32 0, i32 1
  store i64 9, ptr %1245, align 4
  %1246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1243, align 8
  %1247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1247, i32 0, i32 0
  store ptr null, ptr %1248, align 8
  %1249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1247, i32 0, i32 1
  store i64 0, ptr %1249, align 4
  %1250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1247, align 8
  %1251 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1252 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1246, ptr %1251, i64 113, %"github.com/goplus/llgo/internal/runtime.String" %1250, i1 false)
  %1253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1253, i32 0, i32 0
  store ptr @58, ptr %1254, align 8
  %1255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1253, i32 0, i32 1
  store i64 10, ptr %1255, align 4
  %1256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1253, align 8
  %1257 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1257, i32 0, i32 0
  store ptr null, ptr %1258, align 8
  %1259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1257, i32 0, i32 1
  store i64 0, ptr %1259, align 4
  %1260 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1257, align 8
  %1261 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1262 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1256, ptr %1261, i64 114, %"github.com/goplus/llgo/internal/runtime.String" %1260, i1 false)
  %1263 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1263, i32 0, i32 0
  store ptr @59, ptr %1264, align 8
  %1265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1263, i32 0, i32 1
  store i64 5, ptr %1265, align 4
  %1266 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1263, align 8
  %1267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1267, i32 0, i32 0
  store ptr null, ptr %1268, align 8
  %1269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1267, i32 0, i32 1
  store i64 0, ptr %1269, align 4
  %1270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1267, align 8
  %1271 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1272 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1266, ptr %1271, i64 116, %"github.com/goplus/llgo/internal/runtime.String" %1270, i1 false)
  %1273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1273, i32 0, i32 0
  store ptr @6, ptr %1274, align 8
  %1275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1273, i32 0, i32 1
  store i64 4, ptr %1275, align 4
  %1276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1273, align 8
  %1277 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %1278 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1144, ptr %1278, align 8
  %1279 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1154, ptr %1279, align 8
  %1280 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1164, ptr %1280, align 8
  %1281 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1174, ptr %1281, align 8
  %1282 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1232, ptr %1282, align 8
  %1283 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %1242, ptr %1283, align 8
  %1284 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %1252, ptr %1284, align 8
  %1285 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %1262, ptr %1285, align 8
  %1286 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1277, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %1272, ptr %1286, align 8
  %1287 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1287, i32 0, i32 0
  store ptr %1277, ptr %1288, align 8
  %1289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1287, i32 0, i32 1
  store i64 9, ptr %1289, align 4
  %1290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1287, i32 0, i32 2
  store i64 9, ptr %1290, align 4
  %1291 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1287, align 8
  %1292 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1276, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %1291)
  store ptr %1292, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %1293 = load ptr, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %1108, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %1294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1294, i32 0, i32 0
  store ptr @22, ptr %1295, align 8
  %1296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1294, i32 0, i32 1
  store i64 5, ptr %1296, align 4
  %1297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1294, align 8
  %1298 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1299 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1299, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1297, ptr %1300, align 8
  %1301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1299, i32 0, i32 1
  store ptr %1298, ptr %1301, align 8
  %1302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1299, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1302, align 8
  %1303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1299, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1303, align 8
  %1304 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1299, align 8
  %1305 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1305, i32 0, i32 0
  store ptr @23, ptr %1306, align 8
  %1307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1305, i32 0, i32 1
  store i64 9, ptr %1307, align 4
  %1308 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1305, align 8
  %1309 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1310 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1310, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1308, ptr %1311, align 8
  %1312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1310, i32 0, i32 1
  store ptr %1309, ptr %1312, align 8
  %1313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1310, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1313, align 8
  %1314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1310, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1314, align 8
  %1315 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1310, align 8
  %1316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1316, i32 0, i32 0
  store ptr @29, ptr %1317, align 8
  %1318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1316, i32 0, i32 1
  store i64 7, ptr %1318, align 4
  %1319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1316, align 8
  %1320 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1321 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1322 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1321, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1319, ptr %1322, align 8
  %1323 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1321, i32 0, i32 1
  store ptr %1320, ptr %1323, align 8
  %1324 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1321, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1324, align 8
  %1325 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1321, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1325, align 8
  %1326 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1321, align 8
  %1327 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1327, i32 0, i32 0
  store ptr @32, ptr %1328, align 8
  %1329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1327, i32 0, i32 1
  store i64 6, ptr %1329, align 4
  %1330 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1327, align 8
  %1331 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1332 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1332, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1330, ptr %1333, align 8
  %1334 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1332, i32 0, i32 1
  store ptr %1331, ptr %1334, align 8
  %1335 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1332, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1335, align 8
  %1336 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1332, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1336, align 8
  %1337 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1332, align 8
  %1338 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1338, i32 0, i32 0
  store ptr @33, ptr %1339, align 8
  %1340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1338, i32 0, i32 1
  store i64 15, ptr %1340, align 4
  %1341 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1338, align 8
  %1342 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1343 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1343, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1341, ptr %1344, align 8
  %1345 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1343, i32 0, i32 1
  store ptr %1342, ptr %1345, align 8
  %1346 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1343, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", ptr %1346, align 8
  %1347 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1343, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", ptr %1347, align 8
  %1348 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1343, align 8
  %1349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1349, i32 0, i32 0
  store ptr @35, ptr %1350, align 8
  %1351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1349, i32 0, i32 1
  store i64 10, ptr %1351, align 4
  %1352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1349, align 8
  %1353 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1354 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1355 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1354, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1352, ptr %1355, align 8
  %1356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1354, i32 0, i32 1
  store ptr %1353, ptr %1356, align 8
  %1357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1354, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1357, align 8
  %1358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1354, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1358, align 8
  %1359 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1354, align 8
  %1360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1360, i32 0, i32 0
  store ptr @36, ptr %1361, align 8
  %1362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1360, i32 0, i32 1
  store i64 8, ptr %1362, align 4
  %1363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1360, align 8
  %1364 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1365 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1366 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1365, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1363, ptr %1366, align 8
  %1367 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1365, i32 0, i32 1
  store ptr %1364, ptr %1367, align 8
  %1368 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1365, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1368, align 8
  %1369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1365, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1369, align 8
  %1370 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1365, align 8
  %1371 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1371, i32 0, i32 0
  store ptr @40, ptr %1372, align 8
  %1373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1371, i32 0, i32 1
  store i64 7, ptr %1373, align 4
  %1374 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1371, align 8
  %1375 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1376 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1376, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1374, ptr %1377, align 8
  %1378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1376, i32 0, i32 1
  store ptr %1375, ptr %1378, align 8
  %1379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1376, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1379, align 8
  %1380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1376, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1380, align 8
  %1381 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1376, align 8
  %1382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1382, i32 0, i32 0
  store ptr @60, ptr %1383, align 8
  %1384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1382, i32 0, i32 1
  store i64 14, ptr %1384, align 4
  %1385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1382, align 8
  %1386 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1387 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1387, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1385, ptr %1388, align 8
  %1389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1387, i32 0, i32 1
  store ptr %1386, ptr %1389, align 8
  %1390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1387, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1390, align 8
  %1391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1387, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1391, align 8
  %1392 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1387, align 8
  %1393 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1393, i32 0, i32 0
  store ptr @41, ptr %1394, align 8
  %1395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1393, i32 0, i32 1
  store i64 10, ptr %1395, align 4
  %1396 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1393, align 8
  %1397 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1398 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1398, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1396, ptr %1399, align 8
  %1400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1398, i32 0, i32 1
  store ptr %1397, ptr %1400, align 8
  %1401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1398, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1401, align 8
  %1402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1398, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1402, align 8
  %1403 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1398, align 8
  %1404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1404, i32 0, i32 0
  store ptr @61, ptr %1405, align 8
  %1406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1404, i32 0, i32 1
  store i64 12, ptr %1406, align 4
  %1407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1404, align 8
  %1408 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1409 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1409, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1407, ptr %1410, align 8
  %1411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1409, i32 0, i32 1
  store ptr %1408, ptr %1411, align 8
  %1412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1409, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1412, align 8
  %1413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1409, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1413, align 8
  %1414 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1409, align 8
  %1415 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1415, i32 0, i32 0
  store ptr @62, ptr %1416, align 8
  %1417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1415, i32 0, i32 1
  store i64 11, ptr %1417, align 4
  %1418 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1415, align 8
  %1419 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1420 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1421 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1420, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1418, ptr %1421, align 8
  %1422 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1420, i32 0, i32 1
  store ptr %1419, ptr %1422, align 8
  %1423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1420, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1423, align 8
  %1424 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1420, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1424, align 8
  %1425 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1420, align 8
  %1426 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1426, i32 0, i32 0
  store ptr @42, ptr %1427, align 8
  %1428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1426, i32 0, i32 1
  store i64 13, ptr %1428, align 4
  %1429 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1426, align 8
  %1430 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1431 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1432 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1431, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1429, ptr %1432, align 8
  %1433 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1431, i32 0, i32 1
  store ptr %1430, ptr %1433, align 8
  %1434 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1431, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1434, align 8
  %1435 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1431, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1435, align 8
  %1436 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1431, align 8
  %1437 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, i32 0, i32 0
  store ptr @47, ptr %1438, align 8
  %1439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, i32 0, i32 1
  store i64 13, ptr %1439, align 4
  %1440 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, align 8
  %1441 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1442 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1443 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1442, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1440, ptr %1443, align 8
  %1444 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1442, i32 0, i32 1
  store ptr %1441, ptr %1444, align 8
  %1445 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1442, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1445, align 8
  %1446 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1442, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1446, align 8
  %1447 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1442, align 8
  %1448 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1448, i32 0, i32 0
  store ptr @49, ptr %1449, align 8
  %1450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1448, i32 0, i32 1
  store i64 4, ptr %1450, align 4
  %1451 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1448, align 8
  %1452 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1453 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1454 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1453, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1451, ptr %1454, align 8
  %1455 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1453, i32 0, i32 1
  store ptr %1452, ptr %1455, align 8
  %1456 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1453, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1456, align 8
  %1457 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1453, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1457, align 8
  %1458 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1453, align 8
  %1459 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1459, i32 0, i32 0
  store ptr @28, ptr %1460, align 8
  %1461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1459, i32 0, i32 1
  store i64 3, ptr %1461, align 4
  %1462 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1459, align 8
  %1463 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1464 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1465 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1464, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1462, ptr %1465, align 8
  %1466 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1464, i32 0, i32 1
  store ptr %1463, ptr %1466, align 8
  %1467 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1464, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1467, align 8
  %1468 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1464, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1468, align 8
  %1469 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1464, align 8
  %1470 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1470, i32 0, i32 0
  store ptr @52, ptr %1471, align 8
  %1472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1470, i32 0, i32 1
  store i64 7, ptr %1472, align 4
  %1473 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1470, align 8
  %1474 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1475 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1476 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1475, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1473, ptr %1476, align 8
  %1477 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1475, i32 0, i32 1
  store ptr %1474, ptr %1477, align 8
  %1478 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1475, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1478, align 8
  %1479 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1475, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1479, align 8
  %1480 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1475, align 8
  %1481 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1481, i32 0, i32 0
  store ptr @63, ptr %1482, align 8
  %1483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1481, i32 0, i32 1
  store i64 13, ptr %1483, align 4
  %1484 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1481, align 8
  %1485 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1486 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1487 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1486, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1484, ptr %1487, align 8
  %1488 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1486, i32 0, i32 1
  store ptr %1485, ptr %1488, align 8
  %1489 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1486, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1489, align 8
  %1490 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1486, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1490, align 8
  %1491 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1486, align 8
  %1492 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1492, i32 0, i32 0
  store ptr @64, ptr %1493, align 8
  %1494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1492, i32 0, i32 1
  store i64 9, ptr %1494, align 4
  %1495 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1492, align 8
  %1496 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1497 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1498 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1497, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1495, ptr %1498, align 8
  %1499 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1497, i32 0, i32 1
  store ptr %1496, ptr %1499, align 8
  %1500 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1497, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", ptr %1500, align 8
  %1501 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1497, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", ptr %1501, align 8
  %1502 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1497, align 8
  %1503 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1503, i32 0, i32 0
  store ptr @65, ptr %1504, align 8
  %1505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1503, i32 0, i32 1
  store i64 8, ptr %1505, align 4
  %1506 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1503, align 8
  %1507 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1508 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1509 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1508, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1506, ptr %1509, align 8
  %1510 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1508, i32 0, i32 1
  store ptr %1507, ptr %1510, align 8
  %1511 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1508, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1511, align 8
  %1512 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1508, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1512, align 8
  %1513 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1508, align 8
  %1514 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, i32 0, i32 0
  store ptr @66, ptr %1515, align 8
  %1516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, i32 0, i32 1
  store i64 12, ptr %1516, align 4
  %1517 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, align 8
  %1518 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1519 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1520 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1519, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1517, ptr %1520, align 8
  %1521 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1519, i32 0, i32 1
  store ptr %1518, ptr %1521, align 8
  %1522 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1519, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1522, align 8
  %1523 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1519, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1523, align 8
  %1524 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1519, align 8
  %1525 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1525, i32 0, i32 0
  store ptr @67, ptr %1526, align 8
  %1527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1525, i32 0, i32 1
  store i64 4, ptr %1527, align 4
  %1528 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1525, align 8
  %1529 = load ptr, ptr @_llgo_uintptr, align 8
  %1530 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1531 = icmp eq ptr %1530, null
  br i1 %1531, label %_llgo_69, label %_llgo_70

_llgo_68:                                         ; preds = %_llgo_90, %_llgo_66
  %1532 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1532, i32 0, i32 0
  store ptr @53, ptr %1533, align 8
  %1534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1532, i32 0, i32 1
  store i64 43, ptr %1534, align 4
  %1535 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1532, align 8
  %1536 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1535, i64 25, i64 136, i64 0, i64 25)
  %1537 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1538 = icmp eq ptr %1537, null
  br i1 %1538, label %_llgo_91, label %_llgo_92

_llgo_69:                                         ; preds = %_llgo_67
  %1539 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1540 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1540, i32 0, i32 0
  store ptr %1539, ptr %1541, align 8
  %1542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1540, i32 0, i32 1
  store i64 0, ptr %1542, align 4
  %1543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1540, i32 0, i32 2
  store i64 0, ptr %1543, align 4
  %1544 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1540, align 8
  %1545 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1546 = getelementptr ptr, ptr %1545, i64 0
  store ptr %1529, ptr %1546, align 8
  %1547 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1548 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1547, i32 0, i32 0
  store ptr %1545, ptr %1548, align 8
  %1549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1547, i32 0, i32 1
  store i64 1, ptr %1549, align 4
  %1550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1547, i32 0, i32 2
  store i64 1, ptr %1550, align 4
  %1551 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1547, align 8
  %1552 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1544, %"github.com/goplus/llgo/internal/runtime.Slice" %1551, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1552)
  store ptr %1552, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_67
  %1553 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1554 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1555 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1554, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1528, ptr %1555, align 8
  %1556 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1554, i32 0, i32 1
  store ptr %1553, ptr %1556, align 8
  %1557 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1554, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1557, align 8
  %1558 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1554, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1558, align 8
  %1559 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1554, align 8
  %1560 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1561 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1560, i32 0, i32 0
  store ptr @51, ptr %1561, align 8
  %1562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1560, i32 0, i32 1
  store i64 6, ptr %1562, align 4
  %1563 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1560, align 8
  %1564 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1565 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1566 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1565, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1563, ptr %1566, align 8
  %1567 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1565, i32 0, i32 1
  store ptr %1564, ptr %1567, align 8
  %1568 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1565, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1568, align 8
  %1569 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1565, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1569, align 8
  %1570 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1565, align 8
  %1571 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1571, i32 0, i32 0
  store ptr @68, ptr %1572, align 8
  %1573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1571, i32 0, i32 1
  store i64 10, ptr %1573, align 4
  %1574 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1571, align 8
  %1575 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1576 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1575, i32 0, i32 0
  store ptr @69, ptr %1576, align 8
  %1577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1575, i32 0, i32 1
  store i64 46, ptr %1577, align 4
  %1578 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1575, align 8
  %1579 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1578, i64 25, i64 120, i64 0, i64 22)
  %1580 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1581 = icmp eq ptr %1580, null
  br i1 %1581, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  store ptr %1579, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %1582 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1582, i32 0, i32 0
  store ptr @1, ptr %1583, align 8
  %1584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1582, i32 0, i32 1
  store i64 40, ptr %1584, align 4
  %1585 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1582, align 8
  %1586 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1585, i64 25, i64 80, i64 0, i64 22)
  %1587 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1587, i32 0, i32 0
  store ptr @70, ptr %1588, align 8
  %1589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1587, i32 0, i32 1
  store i64 47, ptr %1589, align 4
  %1590 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1587, align 8
  %1591 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1590, i64 25, i64 56, i64 0, i64 2)
  %1592 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1593 = icmp eq ptr %1592, null
  br i1 %1593, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %1594 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, i32 0, i32 0
  store ptr @25, ptr %1595, align 8
  %1596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, i32 0, i32 1
  store i64 4, ptr %1596, align 4
  %1597 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, align 8
  %1598 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1598, i32 0, i32 0
  store ptr null, ptr %1599, align 8
  %1600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1598, i32 0, i32 1
  store i64 0, ptr %1600, align 4
  %1601 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1598, align 8
  %1602 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1597, ptr %1586, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1601, i1 true)
  %1603 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1603, i32 0, i32 0
  store ptr @45, ptr %1604, align 8
  %1605 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1603, i32 0, i32 1
  store i64 8, ptr %1605, align 4
  %1606 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1603, align 8
  %1607 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1607, i32 0, i32 0
  store ptr null, ptr %1608, align 8
  %1609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1607, i32 0, i32 1
  store i64 0, ptr %1609, align 4
  %1610 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1607, align 8
  %1611 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1612 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1606, ptr %1611, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1610, i1 false)
  %1613 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, i32 0, i32 0
  store ptr @71, ptr %1614, align 8
  %1615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, i32 0, i32 1
  store i64 6, ptr %1615, align 4
  %1616 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, align 8
  %1617 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1617, i32 0, i32 0
  store ptr null, ptr %1618, align 8
  %1619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1617, i32 0, i32 1
  store i64 0, ptr %1619, align 4
  %1620 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1617, align 8
  %1621 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1591)
  %1622 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1616, ptr %1621, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1620, i1 false)
  %1623 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1624 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1623, i32 0, i32 0
  store ptr @6, ptr %1624, align 8
  %1625 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1623, i32 0, i32 1
  store i64 4, ptr %1625, align 4
  %1626 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1623, align 8
  %1627 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1628 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1627, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1602, ptr %1628, align 8
  %1629 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1627, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1612, ptr %1629, align 8
  %1630 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1627, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1622, ptr %1630, align 8
  %1631 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1631, i32 0, i32 0
  store ptr %1627, ptr %1632, align 8
  %1633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1631, i32 0, i32 1
  store i64 3, ptr %1633, align 4
  %1634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1631, i32 0, i32 2
  store i64 3, ptr %1634, align 4
  %1635 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1631, align 8
  %1636 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1626, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1635)
  store ptr %1636, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %1637 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1581, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %1638 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1638, i32 0, i32 0
  store ptr @22, ptr %1639, align 8
  %1640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1638, i32 0, i32 1
  store i64 5, ptr %1640, align 4
  %1641 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1638, align 8
  %1642 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1643 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1644 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1641, ptr %1644, align 8
  %1645 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 1
  store ptr %1642, ptr %1645, align 8
  %1646 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1646, align 8
  %1647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1647, align 8
  %1648 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, align 8
  %1649 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1649, i32 0, i32 0
  store ptr @23, ptr %1650, align 8
  %1651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1649, i32 0, i32 1
  store i64 9, ptr %1651, align 4
  %1652 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1649, align 8
  %1653 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1654 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1652, ptr %1655, align 8
  %1656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 1
  store ptr %1653, ptr %1656, align 8
  %1657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1657, align 8
  %1658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1658, align 8
  %1659 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, align 8
  %1660 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1660, i32 0, i32 0
  store ptr @29, ptr %1661, align 8
  %1662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1660, i32 0, i32 1
  store i64 7, ptr %1662, align 4
  %1663 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1660, align 8
  %1664 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1665 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1666 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1663, ptr %1666, align 8
  %1667 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 1
  store ptr %1664, ptr %1667, align 8
  %1668 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %1668, align 8
  %1669 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %1669, align 8
  %1670 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, align 8
  %1671 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1672 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1671, i32 0, i32 0
  store ptr @32, ptr %1672, align 8
  %1673 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1671, i32 0, i32 1
  store i64 6, ptr %1673, align 4
  %1674 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1671, align 8
  %1675 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1676 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1677 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1674, ptr %1677, align 8
  %1678 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 1
  store ptr %1675, ptr %1678, align 8
  %1679 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1679, align 8
  %1680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1680, align 8
  %1681 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, align 8
  %1682 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1683 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1682, i32 0, i32 0
  store ptr @26, ptr %1683, align 8
  %1684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1682, i32 0, i32 1
  store i64 4, ptr %1684, align 4
  %1685 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1682, align 8
  %1686 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1687 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1688 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1685, ptr %1688, align 8
  %1689 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 1
  store ptr %1686, ptr %1689, align 8
  %1690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1690, align 8
  %1691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1691, align 8
  %1692 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, align 8
  %1693 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1694 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, i32 0, i32 0
  store ptr @33, ptr %1694, align 8
  %1695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, i32 0, i32 1
  store i64 15, ptr %1695, align 4
  %1696 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, align 8
  %1697 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1698 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1696, ptr %1699, align 8
  %1700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 1
  store ptr %1697, ptr %1700, align 8
  %1701 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", ptr %1701, align 8
  %1702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", ptr %1702, align 8
  %1703 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, align 8
  %1704 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, i32 0, i32 0
  store ptr @35, ptr %1705, align 8
  %1706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, i32 0, i32 1
  store i64 10, ptr %1706, align 4
  %1707 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, align 8
  %1708 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1709 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1707, ptr %1710, align 8
  %1711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 1
  store ptr %1708, ptr %1711, align 8
  %1712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1712, align 8
  %1713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1713, align 8
  %1714 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, align 8
  %1715 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1715, i32 0, i32 0
  store ptr @36, ptr %1716, align 8
  %1717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1715, i32 0, i32 1
  store i64 8, ptr %1717, align 4
  %1718 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1715, align 8
  %1719 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1720 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1718, ptr %1721, align 8
  %1722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 1
  store ptr %1719, ptr %1722, align 8
  %1723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1723, align 8
  %1724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1724, align 8
  %1725 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, align 8
  %1726 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, i32 0, i32 0
  store ptr @40, ptr %1727, align 8
  %1728 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, i32 0, i32 1
  store i64 7, ptr %1728, align 4
  %1729 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, align 8
  %1730 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1731 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1729, ptr %1732, align 8
  %1733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 1
  store ptr %1730, ptr %1733, align 8
  %1734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1734, align 8
  %1735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1735, align 8
  %1736 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, align 8
  %1737 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, i32 0, i32 0
  store ptr @41, ptr %1738, align 8
  %1739 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, i32 0, i32 1
  store i64 10, ptr %1739, align 4
  %1740 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, align 8
  %1741 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1742 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1740, ptr %1743, align 8
  %1744 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 1
  store ptr %1741, ptr %1744, align 8
  %1745 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1745, align 8
  %1746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1746, align 8
  %1747 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, align 8
  %1748 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1748, i32 0, i32 0
  store ptr @42, ptr %1749, align 8
  %1750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1748, i32 0, i32 1
  store i64 13, ptr %1750, align 4
  %1751 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1748, align 8
  %1752 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1753 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1751, ptr %1754, align 8
  %1755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 1
  store ptr %1752, ptr %1755, align 8
  %1756 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1756, align 8
  %1757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1757, align 8
  %1758 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, align 8
  %1759 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1760 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1759, i32 0, i32 0
  store ptr @47, ptr %1760, align 8
  %1761 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1759, i32 0, i32 1
  store i64 13, ptr %1761, align 4
  %1762 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1759, align 8
  %1763 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1764 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1765 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1762, ptr %1765, align 8
  %1766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 1
  store ptr %1763, ptr %1766, align 8
  %1767 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1767, align 8
  %1768 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1768, align 8
  %1769 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, align 8
  %1770 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1771 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1770, i32 0, i32 0
  store ptr @48, ptr %1771, align 8
  %1772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1770, i32 0, i32 1
  store i64 3, ptr %1772, align 4
  %1773 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1770, align 8
  %1774 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1775 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1776 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1773, ptr %1776, align 8
  %1777 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 1
  store ptr %1774, ptr %1777, align 8
  %1778 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %1778, align 8
  %1779 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %1779, align 8
  %1780 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, align 8
  %1781 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1782 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1781, i32 0, i32 0
  store ptr @49, ptr %1782, align 8
  %1783 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1781, i32 0, i32 1
  store i64 4, ptr %1783, align 4
  %1784 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1781, align 8
  %1785 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1786 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1787 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1784, ptr %1787, align 8
  %1788 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 1
  store ptr %1785, ptr %1788, align 8
  %1789 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1789, align 8
  %1790 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1790, align 8
  %1791 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, align 8
  %1792 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1792, i32 0, i32 0
  store ptr @28, ptr %1793, align 8
  %1794 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1792, i32 0, i32 1
  store i64 3, ptr %1794, align 4
  %1795 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1792, align 8
  %1796 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1797 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1798 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1797, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1795, ptr %1798, align 8
  %1799 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1797, i32 0, i32 1
  store ptr %1796, ptr %1799, align 8
  %1800 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1797, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1800, align 8
  %1801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1797, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1801, align 8
  %1802 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1797, align 8
  %1803 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1803, i32 0, i32 0
  store ptr @52, ptr %1804, align 8
  %1805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1803, i32 0, i32 1
  store i64 7, ptr %1805, align 4
  %1806 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1803, align 8
  %1807 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1808 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1809 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1808, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1806, ptr %1809, align 8
  %1810 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1808, i32 0, i32 1
  store ptr %1807, ptr %1810, align 8
  %1811 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1808, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1811, align 8
  %1812 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1808, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1812, align 8
  %1813 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1808, align 8
  %1814 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1814, i32 0, i32 0
  store ptr @64, ptr %1815, align 8
  %1816 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1814, i32 0, i32 1
  store i64 9, ptr %1816, align 4
  %1817 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1814, align 8
  %1818 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1819 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1820 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1819, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1817, ptr %1820, align 8
  %1821 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1819, i32 0, i32 1
  store ptr %1818, ptr %1821, align 8
  %1822 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1819, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", ptr %1822, align 8
  %1823 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1819, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", ptr %1823, align 8
  %1824 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1819, align 8
  %1825 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1825, i32 0, i32 0
  store ptr @65, ptr %1826, align 8
  %1827 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1825, i32 0, i32 1
  store i64 8, ptr %1827, align 4
  %1828 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1825, align 8
  %1829 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1830 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1831 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1830, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1828, ptr %1831, align 8
  %1832 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1830, i32 0, i32 1
  store ptr %1829, ptr %1832, align 8
  %1833 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1830, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1833, align 8
  %1834 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1830, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1834, align 8
  %1835 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1830, align 8
  %1836 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1836, i32 0, i32 0
  store ptr @67, ptr %1837, align 8
  %1838 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1836, i32 0, i32 1
  store i64 4, ptr %1838, align 4
  %1839 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1836, align 8
  %1840 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1841 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1842 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1839, ptr %1842, align 8
  %1843 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 1
  store ptr %1840, ptr %1843, align 8
  %1844 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1844, align 8
  %1845 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1845, align 8
  %1846 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, align 8
  %1847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, i32 0, i32 0
  store ptr @51, ptr %1848, align 8
  %1849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, i32 0, i32 1
  store i64 6, ptr %1849, align 4
  %1850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, align 8
  %1851 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1852 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1853 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1852, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1850, ptr %1853, align 8
  %1854 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1852, i32 0, i32 1
  store ptr %1851, ptr %1854, align 8
  %1855 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1852, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1855, align 8
  %1856 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1852, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1856, align 8
  %1857 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1852, align 8
  %1858 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1859 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1858, i32 0, i32 0
  store ptr @68, ptr %1859, align 8
  %1860 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1858, i32 0, i32 1
  store i64 10, ptr %1860, align 4
  %1861 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1858, align 8
  %1862 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1863 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1864 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1863, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1861, ptr %1864, align 8
  %1865 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1863, i32 0, i32 1
  store ptr %1862, ptr %1865, align 8
  %1866 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1863, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1866, align 8
  %1867 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1863, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1867, align 8
  %1868 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1863, align 8
  %1869 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1869, i32 0, i32 0
  store ptr @72, ptr %1870, align 8
  %1871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1869, i32 0, i32 1
  store i64 8, ptr %1871, align 4
  %1872 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1869, align 8
  %1873 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1873, i32 0, i32 0
  store ptr @73, ptr %1874, align 8
  %1875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1873, i32 0, i32 1
  store i64 48, ptr %1875, align 4
  %1876 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1873, align 8
  %1877 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1876, i64 25, i64 24, i64 0, i64 2)
  %1878 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1879 = icmp eq ptr %1878, null
  br i1 %1879, label %_llgo_77, label %_llgo_78

_llgo_76:                                         ; preds = %_llgo_86, %_llgo_74
  %1880 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1881 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1880, i32 0, i32 0
  store ptr @69, ptr %1881, align 8
  %1882 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1880, i32 0, i32 1
  store i64 46, ptr %1882, align 4
  %1883 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1880, align 8
  %1884 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1883, i64 25, i64 120, i64 0, i64 22)
  %1885 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1886 = icmp eq ptr %1885, null
  br i1 %1886, label %_llgo_87, label %_llgo_88

_llgo_77:                                         ; preds = %_llgo_75
  store ptr %1877, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_75
  %1887 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1888 = icmp eq ptr %1887, null
  br i1 %1888, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %1889 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1889, i32 0, i32 0
  store ptr @45, ptr %1890, align 8
  %1891 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1889, i32 0, i32 1
  store i64 8, ptr %1891, align 4
  %1892 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1889, align 8
  %1893 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1893, i32 0, i32 0
  store ptr null, ptr %1894, align 8
  %1895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1893, i32 0, i32 1
  store i64 0, ptr %1895, align 4
  %1896 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1893, align 8
  %1897 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1898 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1892, ptr %1897, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1896, i1 false)
  %1899 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1899, i32 0, i32 0
  store ptr @74, ptr %1900, align 8
  %1901 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1899, i32 0, i32 1
  store i64 6, ptr %1901, align 4
  %1902 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1899, align 8
  %1903 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1903, i32 0, i32 0
  store ptr null, ptr %1904, align 8
  %1905 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1903, i32 0, i32 1
  store i64 0, ptr %1905, align 4
  %1906 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1903, align 8
  %1907 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1908 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1902, ptr %1907, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %1906, i1 false)
  %1909 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1909, i32 0, i32 0
  store ptr @75, ptr %1910, align 8
  %1911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1909, i32 0, i32 1
  store i64 6, ptr %1911, align 4
  %1912 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1909, align 8
  %1913 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1914 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1913, i32 0, i32 0
  store ptr null, ptr %1914, align 8
  %1915 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1913, i32 0, i32 1
  store i64 0, ptr %1915, align 4
  %1916 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1913, align 8
  %1917 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1918 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1912, ptr %1917, i64 18, %"github.com/goplus/llgo/internal/runtime.String" %1916, i1 false)
  %1919 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1920 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1919, i32 0, i32 0
  store ptr @76, ptr %1920, align 8
  %1921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1919, i32 0, i32 1
  store i64 4, ptr %1921, align 4
  %1922 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1919, align 8
  %1923 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1924 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1923, i32 0, i32 0
  store ptr null, ptr %1924, align 8
  %1925 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1923, i32 0, i32 1
  store i64 0, ptr %1925, align 4
  %1926 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1923, align 8
  %1927 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1928 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1922, ptr %1927, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %1926, i1 false)
  %1929 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1929, i32 0, i32 0
  store ptr @6, ptr %1930, align 8
  %1931 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1929, i32 0, i32 1
  store i64 4, ptr %1931, align 4
  %1932 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1929, align 8
  %1933 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1934 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1933, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1898, ptr %1934, align 8
  %1935 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1933, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1908, ptr %1935, align 8
  %1936 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1933, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1918, ptr %1936, align 8
  %1937 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1933, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1928, ptr %1937, align 8
  %1938 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1939 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1938, i32 0, i32 0
  store ptr %1933, ptr %1939, align 8
  %1940 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1938, i32 0, i32 1
  store i64 4, ptr %1940, align 4
  %1941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1938, i32 0, i32 2
  store i64 4, ptr %1941, align 4
  %1942 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1938, align 8
  %1943 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1932, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %1942)
  store ptr %1943, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %1944 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1879, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %1945 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1946 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1945, i32 0, i32 0
  store ptr @33, ptr %1946, align 8
  %1947 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1945, i32 0, i32 1
  store i64 15, ptr %1947, align 4
  %1948 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1945, align 8
  %1949 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1950 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1951 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1950, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1948, ptr %1951, align 8
  %1952 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1950, i32 0, i32 1
  store ptr %1949, ptr %1952, align 8
  %1953 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1950, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1953, align 8
  %1954 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1950, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1954, align 8
  %1955 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1950, align 8
  %1956 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1957 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1956, i32 0, i32 0
  store ptr @46, ptr %1957, align 8
  %1958 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1956, i32 0, i32 1
  store i64 7, ptr %1958, align 4
  %1959 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1956, align 8
  %1960 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1961 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1962 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1961, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1959, ptr %1962, align 8
  %1963 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1961, i32 0, i32 1
  store ptr %1960, ptr %1963, align 8
  %1964 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1961, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1964, align 8
  %1965 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1961, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1965, align 8
  %1966 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1961, align 8
  %1967 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1968 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1967, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1955, ptr %1968, align 8
  %1969 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1967, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1966, ptr %1969, align 8
  %1970 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1971 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1970, i32 0, i32 0
  store ptr %1967, ptr %1971, align 8
  %1972 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1970, i32 0, i32 1
  store i64 2, ptr %1972, align 4
  %1973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1970, i32 0, i32 2
  store i64 2, ptr %1973, align 4
  %1974 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1970, align 8
  %1975 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1976 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1975, i32 0, i32 0
  store ptr @31, ptr %1976, align 8
  %1977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1975, i32 0, i32 1
  store i64 35, ptr %1977, align 4
  %1978 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1975, align 8
  %1979 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1980 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1979, i32 0, i32 0
  store ptr @77, ptr %1980, align 8
  %1981 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1979, i32 0, i32 1
  store i64 12, ptr %1981, align 4
  %1982 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1979, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1877, %"github.com/goplus/llgo/internal/runtime.String" %1978, %"github.com/goplus/llgo/internal/runtime.String" %1982, ptr %1944, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1974)
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %1983 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1983, i32 0, i32 0
  store ptr @73, ptr %1984, align 8
  %1985 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1983, i32 0, i32 1
  store i64 48, ptr %1985, align 4
  %1986 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1983, align 8
  %1987 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1986, i64 25, i64 24, i64 0, i64 2)
  %1988 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1989 = icmp eq ptr %1988, null
  br i1 %1989, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %1990 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1987)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1990)
  store ptr %1990, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %1991 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1992 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1993 = icmp eq ptr %1992, null
  br i1 %1993, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %1994 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1995 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1996 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1995, i32 0, i32 0
  store ptr %1994, ptr %1996, align 8
  %1997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1995, i32 0, i32 1
  store i64 0, ptr %1997, align 4
  %1998 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1995, i32 0, i32 2
  store i64 0, ptr %1998, align 4
  %1999 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1995, align 8
  %2000 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2001 = getelementptr ptr, ptr %2000, i64 0
  store ptr %1991, ptr %2001, align 8
  %2002 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2003 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2002, i32 0, i32 0
  store ptr %2000, ptr %2003, align 8
  %2004 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2002, i32 0, i32 1
  store i64 1, ptr %2004, align 4
  %2005 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2002, i32 0, i32 2
  store i64 1, ptr %2005, align 4
  %2006 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2002, align 8
  %2007 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1999, %"github.com/goplus/llgo/internal/runtime.Slice" %2006, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2007)
  store ptr %2007, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %2008 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2009 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2010 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2009, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1872, ptr %2010, align 8
  %2011 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2009, i32 0, i32 1
  store ptr %2008, ptr %2011, align 8
  %2012 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2009, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %2012, align 8
  %2013 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2009, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %2013, align 8
  %2014 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2009, align 8
  %2015 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %2016 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1648, ptr %2016, align 8
  %2017 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1659, ptr %2017, align 8
  %2018 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1670, ptr %2018, align 8
  %2019 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1681, ptr %2019, align 8
  %2020 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1692, ptr %2020, align 8
  %2021 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1703, ptr %2021, align 8
  %2022 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1714, ptr %2022, align 8
  %2023 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1725, ptr %2023, align 8
  %2024 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1736, ptr %2024, align 8
  %2025 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1747, ptr %2025, align 8
  %2026 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1758, ptr %2026, align 8
  %2027 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1769, ptr %2027, align 8
  %2028 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1780, ptr %2028, align 8
  %2029 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1791, ptr %2029, align 8
  %2030 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1802, ptr %2030, align 8
  %2031 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1813, ptr %2031, align 8
  %2032 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1824, ptr %2032, align 8
  %2033 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1835, ptr %2033, align 8
  %2034 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1846, ptr %2034, align 8
  %2035 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1857, ptr %2035, align 8
  %2036 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1868, ptr %2036, align 8
  %2037 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2015, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2014, ptr %2037, align 8
  %2038 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2039 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2038, i32 0, i32 0
  store ptr %2015, ptr %2039, align 8
  %2040 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2038, i32 0, i32 1
  store i64 22, ptr %2040, align 4
  %2041 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2038, i32 0, i32 2
  store i64 22, ptr %2041, align 4
  %2042 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2038, align 8
  %2043 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2044 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2043, i32 0, i32 0
  store ptr @31, ptr %2044, align 8
  %2045 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2043, i32 0, i32 1
  store i64 35, ptr %2045, align 4
  %2046 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2043, align 8
  %2047 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2048 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2047, i32 0, i32 0
  store ptr @68, ptr %2048, align 8
  %2049 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2047, i32 0, i32 1
  store i64 10, ptr %2049, align 4
  %2050 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2047, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1579, %"github.com/goplus/llgo/internal/runtime.String" %2046, %"github.com/goplus/llgo/internal/runtime.String" %2050, ptr %1637, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2042)
  br label %_llgo_76

_llgo_87:                                         ; preds = %_llgo_76
  %2051 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1884)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2051)
  store ptr %2051, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_76
  %2052 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %2053 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2054 = icmp eq ptr %2053, null
  br i1 %2054, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %2055 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2056 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2057 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2056, i32 0, i32 0
  store ptr %2055, ptr %2057, align 8
  %2058 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2056, i32 0, i32 1
  store i64 0, ptr %2058, align 4
  %2059 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2056, i32 0, i32 2
  store i64 0, ptr %2059, align 4
  %2060 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2056, align 8
  %2061 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2062 = getelementptr ptr, ptr %2061, i64 0
  store ptr %2052, ptr %2062, align 8
  %2063 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2064 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2063, i32 0, i32 0
  store ptr %2061, ptr %2064, align 8
  %2065 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2063, i32 0, i32 1
  store i64 1, ptr %2065, align 4
  %2066 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2063, i32 0, i32 2
  store i64 1, ptr %2066, align 4
  %2067 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2063, align 8
  %2068 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2060, %"github.com/goplus/llgo/internal/runtime.Slice" %2067, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2068)
  store ptr %2068, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %2069 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2070 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2070, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1574, ptr %2071, align 8
  %2072 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2070, i32 0, i32 1
  store ptr %2069, ptr %2072, align 8
  %2073 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2070, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %2073, align 8
  %2074 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2070, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %2074, align 8
  %2075 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2070, align 8
  %2076 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2077 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2076, i32 0, i32 0
  store ptr @72, ptr %2077, align 8
  %2078 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2076, i32 0, i32 1
  store i64 8, ptr %2078, align 4
  %2079 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2076, align 8
  %2080 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2081 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2081, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2079, ptr %2082, align 8
  %2083 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2081, i32 0, i32 1
  store ptr %2080, ptr %2083, align 8
  %2084 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2081, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2084, align 8
  %2085 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2081, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2085, align 8
  %2086 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2081, align 8
  %2087 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 1000)
  %2088 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1304, ptr %2088, align 8
  %2089 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1315, ptr %2089, align 8
  %2090 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1326, ptr %2090, align 8
  %2091 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1337, ptr %2091, align 8
  %2092 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1348, ptr %2092, align 8
  %2093 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1359, ptr %2093, align 8
  %2094 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1370, ptr %2094, align 8
  %2095 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1381, ptr %2095, align 8
  %2096 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1392, ptr %2096, align 8
  %2097 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1403, ptr %2097, align 8
  %2098 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1414, ptr %2098, align 8
  %2099 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1425, ptr %2099, align 8
  %2100 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1436, ptr %2100, align 8
  %2101 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1447, ptr %2101, align 8
  %2102 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1458, ptr %2102, align 8
  %2103 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1469, ptr %2103, align 8
  %2104 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1480, ptr %2104, align 8
  %2105 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1491, ptr %2105, align 8
  %2106 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1502, ptr %2106, align 8
  %2107 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1513, ptr %2107, align 8
  %2108 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1524, ptr %2108, align 8
  %2109 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1559, ptr %2109, align 8
  %2110 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1570, ptr %2110, align 8
  %2111 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 23
  store %"github.com/goplus/llgo/internal/abi.Method" %2075, ptr %2111, align 8
  %2112 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2087, i64 24
  store %"github.com/goplus/llgo/internal/abi.Method" %2086, ptr %2112, align 8
  %2113 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2113, i32 0, i32 0
  store ptr %2087, ptr %2114, align 8
  %2115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2113, i32 0, i32 1
  store i64 25, ptr %2115, align 4
  %2116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2113, i32 0, i32 2
  store i64 25, ptr %2116, align 4
  %2117 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2113, align 8
  %2118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, i32 0, i32 0
  store ptr @31, ptr %2119, align 8
  %2120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, i32 0, i32 1
  store i64 35, ptr %2120, align 4
  %2121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, align 8
  %2122 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2122, i32 0, i32 0
  store ptr @52, ptr %2123, align 8
  %2124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2122, i32 0, i32 1
  store i64 7, ptr %2124, align 4
  %2125 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2122, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1106, %"github.com/goplus/llgo/internal/runtime.String" %2121, %"github.com/goplus/llgo/internal/runtime.String" %2125, ptr %1293, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2117)
  br label %_llgo_68

_llgo_91:                                         ; preds = %_llgo_68
  %2126 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1536)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2126)
  store ptr %2126, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_68
  %2127 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2128 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2129 = icmp eq ptr %2128, null
  br i1 %2129, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %2130 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2131 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2131, i32 0, i32 0
  store ptr %2130, ptr %2132, align 8
  %2133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2131, i32 0, i32 1
  store i64 0, ptr %2133, align 4
  %2134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2131, i32 0, i32 2
  store i64 0, ptr %2134, align 4
  %2135 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2131, align 8
  %2136 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2137 = getelementptr ptr, ptr %2136, i64 0
  store ptr %2127, ptr %2137, align 8
  %2138 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2138, i32 0, i32 0
  store ptr %2136, ptr %2139, align 8
  %2140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2138, i32 0, i32 1
  store i64 1, ptr %2140, align 4
  %2141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2138, i32 0, i32 2
  store i64 1, ptr %2141, align 4
  %2142 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2138, align 8
  %2143 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2135, %"github.com/goplus/llgo/internal/runtime.Slice" %2142, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2143)
  store ptr %2143, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %2144 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2145 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1101, ptr %2146, align 8
  %2147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 1
  store ptr %2144, ptr %2147, align 8
  %2148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2148, align 8
  %2149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2149, align 8
  %2150 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, align 8
  %2151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 0
  store ptr @64, ptr %2152, align 8
  %2153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 1
  store i64 9, ptr %2153, align 4
  %2154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, align 8
  %2155 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2156 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2157 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2154, ptr %2157, align 8
  %2158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 1
  store ptr %2155, ptr %2158, align 8
  %2159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", ptr %2159, align 8
  %2160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", ptr %2160, align 8
  %2161 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, align 8
  %2162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, i32 0, i32 0
  store ptr @65, ptr %2163, align 8
  %2164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, i32 0, i32 1
  store i64 8, ptr %2164, align 4
  %2165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, align 8
  %2166 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2167 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2165, ptr %2168, align 8
  %2169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 1
  store ptr %2166, ptr %2169, align 8
  %2170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2170, align 8
  %2171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2171, align 8
  %2172 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, align 8
  %2173 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, i32 0, i32 0
  store ptr @67, ptr %2174, align 8
  %2175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, i32 0, i32 1
  store i64 4, ptr %2175, align 4
  %2176 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, align 8
  %2177 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2178 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2176, ptr %2179, align 8
  %2180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 1
  store ptr %2177, ptr %2180, align 8
  %2181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2181, align 8
  %2182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2182, align 8
  %2183 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, align 8
  %2184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 0
  store ptr @51, ptr %2185, align 8
  %2186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 1
  store i64 6, ptr %2186, align 4
  %2187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, align 8
  %2188 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2189 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2190 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2187, ptr %2190, align 8
  %2191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 1
  store ptr %2188, ptr %2191, align 8
  %2192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2192, align 8
  %2193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2193, align 8
  %2194 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, align 8
  %2195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 0
  store ptr @68, ptr %2196, align 8
  %2197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 1
  store i64 10, ptr %2197, align 4
  %2198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, align 8
  %2199 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2200 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2201 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2198, ptr %2201, align 8
  %2202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 1
  store ptr %2199, ptr %2202, align 8
  %2203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2203, align 8
  %2204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2204, align 8
  %2205 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, align 8
  %2206 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, i32 0, i32 0
  store ptr @72, ptr %2207, align 8
  %2208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, i32 0, i32 1
  store i64 8, ptr %2208, align 4
  %2209 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, align 8
  %2210 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2211 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2209, ptr %2212, align 8
  %2213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 1
  store ptr %2210, ptr %2213, align 8
  %2214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2214, align 8
  %2215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2215, align 8
  %2216 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, align 8
  %2217 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %2218 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %849, ptr %2218, align 8
  %2219 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %860, ptr %2219, align 8
  %2220 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %871, ptr %2220, align 8
  %2221 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %882, ptr %2221, align 8
  %2222 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %893, ptr %2222, align 8
  %2223 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %904, ptr %2223, align 8
  %2224 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %915, ptr %2224, align 8
  %2225 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %926, ptr %2225, align 8
  %2226 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %937, ptr %2226, align 8
  %2227 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %948, ptr %2227, align 8
  %2228 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %959, ptr %2228, align 8
  %2229 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %970, ptr %2229, align 8
  %2230 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %981, ptr %2230, align 8
  %2231 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1086, ptr %2231, align 8
  %2232 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1097, ptr %2232, align 8
  %2233 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2150, ptr %2233, align 8
  %2234 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2161, ptr %2234, align 8
  %2235 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2172, ptr %2235, align 8
  %2236 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2183, ptr %2236, align 8
  %2237 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2194, ptr %2237, align 8
  %2238 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2205, ptr %2238, align 8
  %2239 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2217, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2216, ptr %2239, align 8
  %2240 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2240, i32 0, i32 0
  store ptr %2217, ptr %2241, align 8
  %2242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2240, i32 0, i32 1
  store i64 22, ptr %2242, align 4
  %2243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2240, i32 0, i32 2
  store i64 22, ptr %2243, align 4
  %2244 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2240, align 8
  %2245 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2245, i32 0, i32 0
  store ptr @31, ptr %2246, align 8
  %2247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2245, i32 0, i32 1
  store i64 35, ptr %2247, align 4
  %2248 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2245, align 8
  %2249 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2249, i32 0, i32 0
  store ptr @42, ptr %2250, align 8
  %2251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2249, i32 0, i32 1
  store i64 13, ptr %2251, align 4
  %2252 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2249, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %780, %"github.com/goplus/llgo/internal/runtime.String" %2248, %"github.com/goplus/llgo/internal/runtime.String" %2252, ptr %838, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2244)
  br label %_llgo_50

_llgo_95:                                         ; preds = %_llgo_50
  %2253 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %997)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2253)
  store ptr %2253, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_50
  %2254 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %2255 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2256 = icmp eq ptr %2255, null
  br i1 %2256, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %2257 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2258 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, i32 0, i32 0
  store ptr %2257, ptr %2259, align 8
  %2260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, i32 0, i32 1
  store i64 0, ptr %2260, align 4
  %2261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, i32 0, i32 2
  store i64 0, ptr %2261, align 4
  %2262 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, align 8
  %2263 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2264 = getelementptr ptr, ptr %2263, i64 0
  store ptr %2254, ptr %2264, align 8
  %2265 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2265, i32 0, i32 0
  store ptr %2263, ptr %2266, align 8
  %2267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2265, i32 0, i32 1
  store i64 1, ptr %2267, align 4
  %2268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2265, i32 0, i32 2
  store i64 1, ptr %2268, align 4
  %2269 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2265, align 8
  %2270 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2262, %"github.com/goplus/llgo/internal/runtime.Slice" %2269, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2270)
  store ptr %2270, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %2271 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2272 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2272, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %775, ptr %2273, align 8
  %2274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2272, i32 0, i32 1
  store ptr %2271, ptr %2274, align 8
  %2275 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2272, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2275, align 8
  %2276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2272, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2276, align 8
  %2277 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2272, align 8
  %2278 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2278, i32 0, i32 0
  store ptr @47, ptr %2279, align 8
  %2280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2278, i32 0, i32 1
  store i64 13, ptr %2280, align 4
  %2281 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2278, align 8
  %2282 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2283 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2284 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2283, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2281, ptr %2284, align 8
  %2285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2283, i32 0, i32 1
  store ptr %2282, ptr %2285, align 8
  %2286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2283, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2286, align 8
  %2287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2283, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2287, align 8
  %2288 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2283, align 8
  %2289 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2289, i32 0, i32 0
  store ptr @48, ptr %2290, align 8
  %2291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2289, i32 0, i32 1
  store i64 3, ptr %2291, align 4
  %2292 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2289, align 8
  %2293 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2294 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2294, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2292, ptr %2295, align 8
  %2296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2294, i32 0, i32 1
  store ptr %2293, ptr %2296, align 8
  %2297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2294, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2297, align 8
  %2298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2294, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2298, align 8
  %2299 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2294, align 8
  %2300 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2300, i32 0, i32 0
  store ptr @49, ptr %2301, align 8
  %2302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2300, i32 0, i32 1
  store i64 4, ptr %2302, align 4
  %2303 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2300, align 8
  %2304 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2305 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2306 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2303, ptr %2306, align 8
  %2307 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i32 0, i32 1
  store ptr %2304, ptr %2307, align 8
  %2308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2308, align 8
  %2309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2309, align 8
  %2310 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, align 8
  %2311 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2311, i32 0, i32 0
  store ptr @28, ptr %2312, align 8
  %2313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2311, i32 0, i32 1
  store i64 3, ptr %2313, align 4
  %2314 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2311, align 8
  %2315 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2316 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2317 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2314, ptr %2317, align 8
  %2318 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 1
  store ptr %2315, ptr %2318, align 8
  %2319 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2319, align 8
  %2320 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2320, align 8
  %2321 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, align 8
  %2322 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2322, i32 0, i32 0
  store ptr @52, ptr %2323, align 8
  %2324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2322, i32 0, i32 1
  store i64 7, ptr %2324, align 4
  %2325 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2322, align 8
  %2326 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2327 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2328 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2327, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2325, ptr %2328, align 8
  %2329 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2327, i32 0, i32 1
  store ptr %2326, ptr %2329, align 8
  %2330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2327, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2330, align 8
  %2331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2327, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2331, align 8
  %2332 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2327, align 8
  %2333 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2333, i32 0, i32 0
  store ptr @64, ptr %2334, align 8
  %2335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2333, i32 0, i32 1
  store i64 9, ptr %2335, align 4
  %2336 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2333, align 8
  %2337 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2338 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2338, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2336, ptr %2339, align 8
  %2340 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2338, i32 0, i32 1
  store ptr %2337, ptr %2340, align 8
  %2341 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2338, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", ptr %2341, align 8
  %2342 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2338, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", ptr %2342, align 8
  %2343 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2338, align 8
  %2344 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2344, i32 0, i32 0
  store ptr @65, ptr %2345, align 8
  %2346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2344, i32 0, i32 1
  store i64 8, ptr %2346, align 4
  %2347 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2344, align 8
  %2348 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2349 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2350 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2349, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2347, ptr %2350, align 8
  %2351 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2349, i32 0, i32 1
  store ptr %2348, ptr %2351, align 8
  %2352 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2349, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2352, align 8
  %2353 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2349, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2353, align 8
  %2354 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2349, align 8
  %2355 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2355, i32 0, i32 0
  store ptr @67, ptr %2356, align 8
  %2357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2355, i32 0, i32 1
  store i64 4, ptr %2357, align 4
  %2358 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2355, align 8
  %2359 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2360 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2361 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2360, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2358, ptr %2361, align 8
  %2362 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2360, i32 0, i32 1
  store ptr %2359, ptr %2362, align 8
  %2363 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2360, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2363, align 8
  %2364 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2360, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2364, align 8
  %2365 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2360, align 8
  %2366 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2366, i32 0, i32 0
  store ptr @51, ptr %2367, align 8
  %2368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2366, i32 0, i32 1
  store i64 6, ptr %2368, align 4
  %2369 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2366, align 8
  %2370 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2371 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2372 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2371, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2369, ptr %2372, align 8
  %2373 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2371, i32 0, i32 1
  store ptr %2370, ptr %2373, align 8
  %2374 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2371, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2374, align 8
  %2375 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2371, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2375, align 8
  %2376 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2371, align 8
  %2377 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2377, i32 0, i32 0
  store ptr @68, ptr %2378, align 8
  %2379 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2377, i32 0, i32 1
  store i64 10, ptr %2379, align 4
  %2380 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2377, align 8
  %2381 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2382 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2383 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2382, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2380, ptr %2383, align 8
  %2384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2382, i32 0, i32 1
  store ptr %2381, ptr %2384, align 8
  %2385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2382, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2385, align 8
  %2386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2382, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2386, align 8
  %2387 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2382, align 8
  %2388 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2388, i32 0, i32 0
  store ptr @72, ptr %2389, align 8
  %2390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2388, i32 0, i32 1
  store i64 8, ptr %2390, align 4
  %2391 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2388, align 8
  %2392 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2393 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2393, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2391, ptr %2394, align 8
  %2395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2393, i32 0, i32 1
  store ptr %2392, ptr %2395, align 8
  %2396 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2393, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2396, align 8
  %2397 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2393, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2397, align 8
  %2398 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2393, align 8
  %2399 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2399, i32 0, i32 0
  store ptr @78, ptr %2400, align 8
  %2401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2399, i32 0, i32 1
  store i64 8, ptr %2401, align 4
  %2402 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2399, align 8
  %2403 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2404 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2405 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2404, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2402, ptr %2405, align 8
  %2406 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2404, i32 0, i32 1
  store ptr %2403, ptr %2406, align 8
  %2407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2404, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2407, align 8
  %2408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2404, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2408, align 8
  %2409 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2404, align 8
  %2410 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %2411 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %648, ptr %2411, align 8
  %2412 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %659, ptr %2412, align 8
  %2413 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %670, ptr %2413, align 8
  %2414 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %681, ptr %2414, align 8
  %2415 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %692, ptr %2415, align 8
  %2416 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %703, ptr %2416, align 8
  %2417 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %714, ptr %2417, align 8
  %2418 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %725, ptr %2418, align 8
  %2419 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %760, ptr %2419, align 8
  %2420 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %771, ptr %2420, align 8
  %2421 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2277, ptr %2421, align 8
  %2422 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2288, ptr %2422, align 8
  %2423 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2299, ptr %2423, align 8
  %2424 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2310, ptr %2424, align 8
  %2425 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2321, ptr %2425, align 8
  %2426 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2332, ptr %2426, align 8
  %2427 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2343, ptr %2427, align 8
  %2428 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2354, ptr %2428, align 8
  %2429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2365, ptr %2429, align 8
  %2430 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2376, ptr %2430, align 8
  %2431 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2387, ptr %2431, align 8
  %2432 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2398, ptr %2432, align 8
  %2433 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2410, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %2409, ptr %2433, align 8
  %2434 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2434, i32 0, i32 0
  store ptr %2410, ptr %2435, align 8
  %2436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2434, i32 0, i32 1
  store i64 23, ptr %2436, align 4
  %2437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2434, i32 0, i32 2
  store i64 23, ptr %2437, align 4
  %2438 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2434, align 8
  %2439 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2439, i32 0, i32 0
  store ptr @31, ptr %2440, align 8
  %2441 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2439, i32 0, i32 1
  store i64 35, ptr %2441, align 4
  %2442 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2439, align 8
  %2443 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2443, i32 0, i32 0
  store ptr @36, ptr %2444, align 8
  %2445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2443, i32 0, i32 1
  store i64 8, ptr %2445, align 4
  %2446 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2443, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %572, %"github.com/goplus/llgo/internal/runtime.String" %2442, %"github.com/goplus/llgo/internal/runtime.String" %2446, ptr %637, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2438)
  br label %_llgo_42

_llgo_99:                                         ; preds = %_llgo_42
  %2447 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %737)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2447)
  store ptr %2447, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_42
  %2448 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %2449 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2450 = icmp eq ptr %2449, null
  br i1 %2450, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %2451 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2452 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2452, i32 0, i32 0
  store ptr %2451, ptr %2453, align 8
  %2454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2452, i32 0, i32 1
  store i64 0, ptr %2454, align 4
  %2455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2452, i32 0, i32 2
  store i64 0, ptr %2455, align 4
  %2456 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2452, align 8
  %2457 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2458 = getelementptr ptr, ptr %2457, i64 0
  store ptr %2448, ptr %2458, align 8
  %2459 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2459, i32 0, i32 0
  store ptr %2457, ptr %2460, align 8
  %2461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2459, i32 0, i32 1
  store i64 1, ptr %2461, align 4
  %2462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2459, i32 0, i32 2
  store i64 1, ptr %2462, align 4
  %2463 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2459, align 8
  %2464 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2456, %"github.com/goplus/llgo/internal/runtime.Slice" %2463, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2464)
  store ptr %2464, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %2465 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2466 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2467 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2466, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %567, ptr %2467, align 8
  %2468 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2466, i32 0, i32 1
  store ptr %2465, ptr %2468, align 8
  %2469 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2466, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2469, align 8
  %2470 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2466, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2470, align 8
  %2471 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2466, align 8
  %2472 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2472, i32 0, i32 0
  store ptr @40, ptr %2473, align 8
  %2474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2472, i32 0, i32 1
  store i64 7, ptr %2474, align 4
  %2475 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2472, align 8
  %2476 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2477 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2478 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2475, ptr %2478, align 8
  %2479 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 1
  store ptr %2476, ptr %2479, align 8
  %2480 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2480, align 8
  %2481 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2481, align 8
  %2482 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, align 8
  %2483 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2483, i32 0, i32 0
  store ptr @41, ptr %2484, align 8
  %2485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2483, i32 0, i32 1
  store i64 10, ptr %2485, align 4
  %2486 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2483, align 8
  %2487 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2488 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2489 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2486, ptr %2489, align 8
  %2490 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 1
  store ptr %2487, ptr %2490, align 8
  %2491 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2491, align 8
  %2492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2492, align 8
  %2493 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, align 8
  %2494 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2494, i32 0, i32 0
  store ptr @42, ptr %2495, align 8
  %2496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2494, i32 0, i32 1
  store i64 13, ptr %2496, align 4
  %2497 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2494, align 8
  %2498 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2499 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2500 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2499, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2497, ptr %2500, align 8
  %2501 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2499, i32 0, i32 1
  store ptr %2498, ptr %2501, align 8
  %2502 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2499, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2502, align 8
  %2503 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2499, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2503, align 8
  %2504 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2499, align 8
  %2505 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2505, i32 0, i32 0
  store ptr @47, ptr %2506, align 8
  %2507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2505, i32 0, i32 1
  store i64 13, ptr %2507, align 4
  %2508 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2505, align 8
  %2509 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2510 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2511 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2510, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2508, ptr %2511, align 8
  %2512 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2510, i32 0, i32 1
  store ptr %2509, ptr %2512, align 8
  %2513 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2510, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2513, align 8
  %2514 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2510, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2514, align 8
  %2515 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2510, align 8
  %2516 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2517 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2516, i32 0, i32 0
  store ptr @48, ptr %2517, align 8
  %2518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2516, i32 0, i32 1
  store i64 3, ptr %2518, align 4
  %2519 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2516, align 8
  %2520 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2521 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2522 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2521, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2519, ptr %2522, align 8
  %2523 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2521, i32 0, i32 1
  store ptr %2520, ptr %2523, align 8
  %2524 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2521, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %2524, align 8
  %2525 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2521, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %2525, align 8
  %2526 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2521, align 8
  %2527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2527, i32 0, i32 0
  store ptr @49, ptr %2528, align 8
  %2529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2527, i32 0, i32 1
  store i64 4, ptr %2529, align 4
  %2530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2527, align 8
  %2531 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2532 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2533 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2532, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2530, ptr %2533, align 8
  %2534 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2532, i32 0, i32 1
  store ptr %2531, ptr %2534, align 8
  %2535 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2532, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2535, align 8
  %2536 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2532, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2536, align 8
  %2537 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2532, align 8
  %2538 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2538, i32 0, i32 0
  store ptr @52, ptr %2539, align 8
  %2540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2538, i32 0, i32 1
  store i64 7, ptr %2540, align 4
  %2541 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2538, align 8
  %2542 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2543 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2544 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2543, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2541, ptr %2544, align 8
  %2545 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2543, i32 0, i32 1
  store ptr %2542, ptr %2545, align 8
  %2546 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2543, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2546, align 8
  %2547 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2543, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2547, align 8
  %2548 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2543, align 8
  %2549 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2549, i32 0, i32 0
  store ptr @64, ptr %2550, align 8
  %2551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2549, i32 0, i32 1
  store i64 9, ptr %2551, align 4
  %2552 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2549, align 8
  %2553 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2554 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2555 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2554, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2552, ptr %2555, align 8
  %2556 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2554, i32 0, i32 1
  store ptr %2553, ptr %2556, align 8
  %2557 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2554, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", ptr %2557, align 8
  %2558 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2554, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", ptr %2558, align 8
  %2559 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2554, align 8
  %2560 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2561 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2560, i32 0, i32 0
  store ptr @65, ptr %2561, align 8
  %2562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2560, i32 0, i32 1
  store i64 8, ptr %2562, align 4
  %2563 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2560, align 8
  %2564 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2565 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2566 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2565, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2563, ptr %2566, align 8
  %2567 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2565, i32 0, i32 1
  store ptr %2564, ptr %2567, align 8
  %2568 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2565, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2568, align 8
  %2569 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2565, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2569, align 8
  %2570 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2565, align 8
  %2571 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2571, i32 0, i32 0
  store ptr @67, ptr %2572, align 8
  %2573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2571, i32 0, i32 1
  store i64 4, ptr %2573, align 4
  %2574 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2571, align 8
  %2575 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2576 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2576, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2574, ptr %2577, align 8
  %2578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2576, i32 0, i32 1
  store ptr %2575, ptr %2578, align 8
  %2579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2576, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2579, align 8
  %2580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2576, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2580, align 8
  %2581 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2576, align 8
  %2582 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2582, i32 0, i32 0
  store ptr @51, ptr %2583, align 8
  %2584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2582, i32 0, i32 1
  store i64 6, ptr %2584, align 4
  %2585 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2582, align 8
  %2586 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2587 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2587, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2585, ptr %2588, align 8
  %2589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2587, i32 0, i32 1
  store ptr %2586, ptr %2589, align 8
  %2590 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2587, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2590, align 8
  %2591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2587, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2591, align 8
  %2592 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2587, align 8
  %2593 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2593, i32 0, i32 0
  store ptr @68, ptr %2594, align 8
  %2595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2593, i32 0, i32 1
  store i64 10, ptr %2595, align 4
  %2596 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2593, align 8
  %2597 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2598 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2599 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2598, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2596, ptr %2599, align 8
  %2600 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2598, i32 0, i32 1
  store ptr %2597, ptr %2600, align 8
  %2601 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2598, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2601, align 8
  %2602 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2598, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2602, align 8
  %2603 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2598, align 8
  %2604 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2605 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2604, i32 0, i32 0
  store ptr @72, ptr %2605, align 8
  %2606 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2604, i32 0, i32 1
  store i64 8, ptr %2606, align 4
  %2607 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2604, align 8
  %2608 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2609 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2610 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2609, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2607, ptr %2610, align 8
  %2611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2609, i32 0, i32 1
  store ptr %2608, ptr %2611, align 8
  %2612 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2609, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2612, align 8
  %2613 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2609, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2613, align 8
  %2614 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2609, align 8
  %2615 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %2616 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %418, ptr %2616, align 8
  %2617 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %429, ptr %2617, align 8
  %2618 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %480, ptr %2618, align 8
  %2619 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %516, ptr %2619, align 8
  %2620 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %552, ptr %2620, align 8
  %2621 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %563, ptr %2621, align 8
  %2622 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2471, ptr %2622, align 8
  %2623 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2482, ptr %2623, align 8
  %2624 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2493, ptr %2624, align 8
  %2625 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2504, ptr %2625, align 8
  %2626 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2515, ptr %2626, align 8
  %2627 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2526, ptr %2627, align 8
  %2628 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2537, ptr %2628, align 8
  %2629 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2548, ptr %2629, align 8
  %2630 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2559, ptr %2630, align 8
  %2631 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2570, ptr %2631, align 8
  %2632 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2581, ptr %2632, align 8
  %2633 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2592, ptr %2633, align 8
  %2634 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2603, ptr %2634, align 8
  %2635 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2615, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2614, ptr %2635, align 8
  %2636 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2636, i32 0, i32 0
  store ptr %2615, ptr %2637, align 8
  %2638 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2636, i32 0, i32 1
  store i64 20, ptr %2638, align 4
  %2639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2636, i32 0, i32 2
  store i64 20, ptr %2639, align 4
  %2640 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2636, align 8
  %2641 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2642 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2641, i32 0, i32 0
  store ptr @31, ptr %2642, align 8
  %2643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2641, i32 0, i32 1
  store i64 35, ptr %2643, align 4
  %2644 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2641, align 8
  %2645 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2646 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2645, i32 0, i32 0
  store ptr @23, ptr %2646, align 8
  %2647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2645, i32 0, i32 1
  store i64 9, ptr %2647, align 4
  %2648 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2645, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %333, %"github.com/goplus/llgo/internal/runtime.String" %2644, %"github.com/goplus/llgo/internal/runtime.String" %2648, ptr %407, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2640)
  br label %_llgo_22

_llgo_103:                                        ; preds = %_llgo_22
  %2649 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %445)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2649)
  store ptr %2649, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_22
  %2650 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %2651 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2652 = icmp eq ptr %2651, null
  br i1 %2652, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %2653 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2654 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2655 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2654, i32 0, i32 0
  store ptr %2653, ptr %2655, align 8
  %2656 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2654, i32 0, i32 1
  store i64 0, ptr %2656, align 4
  %2657 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2654, i32 0, i32 2
  store i64 0, ptr %2657, align 4
  %2658 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2654, align 8
  %2659 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2660 = getelementptr ptr, ptr %2659, i64 0
  store ptr %2650, ptr %2660, align 8
  %2661 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2661, i32 0, i32 0
  store ptr %2659, ptr %2662, align 8
  %2663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2661, i32 0, i32 1
  store i64 1, ptr %2663, align 4
  %2664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2661, i32 0, i32 2
  store i64 1, ptr %2664, align 4
  %2665 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2661, align 8
  %2666 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2658, %"github.com/goplus/llgo/internal/runtime.Slice" %2665, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2666)
  store ptr %2666, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
<<<<<<< HEAD
  %2667 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2668 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2669 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2668, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %328, ptr %2669, align 8
  %2670 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2668, i32 0, i32 1
  store ptr %2667, ptr %2670, align 8
  %2671 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2668, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2671, align 8
  %2672 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2668, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2672, align 8
  %2673 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2668, align 8
  %2674 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2674, i32 0, i32 0
  store ptr @29, ptr %2675, align 8
  %2676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2674, i32 0, i32 1
  store i64 7, ptr %2676, align 4
  %2677 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2674, align 8
  %2678 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %2679 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2677, ptr %2680, align 8
  %2681 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 1
  store ptr %2678, ptr %2681, align 8
  %2682 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %2682, align 8
  %2683 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %2683, align 8
  %2684 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, align 8
  %2685 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2685, i32 0, i32 0
  store ptr @32, ptr %2686, align 8
  %2687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2685, i32 0, i32 1
  store i64 6, ptr %2687, align 4
  %2688 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2685, align 8
  %2689 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2690 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2688, ptr %2691, align 8
  %2692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 1
  store ptr %2689, ptr %2692, align 8
  %2693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2693, align 8
  %2694 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2694, align 8
  %2695 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, align 8
  %2696 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2696, i32 0, i32 0
  store ptr @26, ptr %2697, align 8
  %2698 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2696, i32 0, i32 1
  store i64 4, ptr %2698, align 4
  %2699 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2696, align 8
  %2700 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2701 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2699, ptr %2702, align 8
  %2703 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 1
  store ptr %2700, ptr %2703, align 8
  %2704 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2704, align 8
  %2705 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2705, align 8
  %2706 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, align 8
  %2707 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2708 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2707, i32 0, i32 0
  store ptr @33, ptr %2708, align 8
  %2709 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2707, i32 0, i32 1
  store i64 15, ptr %2709, align 4
  %2710 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2707, align 8
  %2711 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2712 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2710, ptr %2713, align 8
  %2714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 1
  store ptr %2711, ptr %2714, align 8
  %2715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", ptr %2715, align 8
  %2716 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", ptr %2716, align 8
  %2717 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, align 8
  %2718 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2718, i32 0, i32 0
  store ptr @35, ptr %2719, align 8
  %2720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2718, i32 0, i32 1
  store i64 10, ptr %2720, align 4
  %2721 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2718, align 8
  %2722 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2723 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2721, ptr %2724, align 8
  %2725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 1
  store ptr %2722, ptr %2725, align 8
  %2726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2726, align 8
  %2727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2727, align 8
  %2728 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, align 8
  %2729 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2729, i32 0, i32 0
  store ptr @36, ptr %2730, align 8
  %2731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2729, i32 0, i32 1
  store i64 8, ptr %2731, align 4
  %2732 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2729, align 8
  %2733 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2734 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2732, ptr %2735, align 8
  %2736 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 1
  store ptr %2733, ptr %2736, align 8
  %2737 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2737, align 8
  %2738 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2738, align 8
  %2739 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, align 8
  %2740 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2741 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2740, i32 0, i32 0
  store ptr @40, ptr %2741, align 8
  %2742 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2740, i32 0, i32 1
  store i64 7, ptr %2742, align 4
  %2743 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2740, align 8
  %2744 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2745 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2743, ptr %2746, align 8
  %2747 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 1
  store ptr %2744, ptr %2747, align 8
  %2748 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2748, align 8
  %2749 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2749, align 8
  %2750 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, align 8
  %2751 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2751, i32 0, i32 0
  store ptr @41, ptr %2752, align 8
  %2753 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2751, i32 0, i32 1
  store i64 10, ptr %2753, align 4
  %2754 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2751, align 8
  %2755 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2756 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2754, ptr %2757, align 8
  %2758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 1
  store ptr %2755, ptr %2758, align 8
  %2759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2759, align 8
  %2760 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2760, align 8
  %2761 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, align 8
  %2762 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, i32 0, i32 0
  store ptr @42, ptr %2763, align 8
  %2764 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, i32 0, i32 1
  store i64 13, ptr %2764, align 4
  %2765 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, align 8
  %2766 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2767 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2768 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2765, ptr %2768, align 8
  %2769 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 1
  store ptr %2766, ptr %2769, align 8
  %2770 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2770, align 8
  %2771 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2771, align 8
  %2772 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, align 8
  %2773 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2773, i32 0, i32 0
  store ptr @47, ptr %2774, align 8
  %2775 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2773, i32 0, i32 1
  store i64 13, ptr %2775, align 4
  %2776 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2773, align 8
  %2777 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2778 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2779 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2776, ptr %2779, align 8
  %2780 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 1
  store ptr %2777, ptr %2780, align 8
  %2781 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2781, align 8
  %2782 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2782, align 8
  %2783 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, align 8
  %2784 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2784, i32 0, i32 0
  store ptr @48, ptr %2785, align 8
  %2786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2784, i32 0, i32 1
  store i64 3, ptr %2786, align 4
  %2787 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2784, align 8
  %2788 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2789 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2790 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2787, ptr %2790, align 8
  %2791 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 1
  store ptr %2788, ptr %2791, align 8
  %2792 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %2792, align 8
  %2793 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %2793, align 8
  %2794 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, align 8
  %2795 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2796 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2795, i32 0, i32 0
  store ptr @49, ptr %2796, align 8
  %2797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2795, i32 0, i32 1
  store i64 4, ptr %2797, align 4
  %2798 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2795, align 8
  %2799 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2800 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2798, ptr %2801, align 8
  %2802 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 1
  store ptr %2799, ptr %2802, align 8
  %2803 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2803, align 8
  %2804 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2804, align 8
  %2805 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, align 8
  %2806 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, i32 0, i32 0
  store ptr @28, ptr %2807, align 8
  %2808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, i32 0, i32 1
  store i64 3, ptr %2808, align 4
  %2809 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, align 8
  %2810 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2811 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2812 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2809, ptr %2812, align 8
  %2813 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 1
  store ptr %2810, ptr %2813, align 8
  %2814 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2814, align 8
  %2815 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2815, align 8
  %2816 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, align 8
  %2817 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2818 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2817, i32 0, i32 0
  store ptr @52, ptr %2818, align 8
  %2819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2817, i32 0, i32 1
  store i64 7, ptr %2819, align 4
  %2820 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2817, align 8
  %2821 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2822 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2823 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2822, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2820, ptr %2823, align 8
  %2824 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2822, i32 0, i32 1
  store ptr %2821, ptr %2824, align 8
  %2825 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2822, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2825, align 8
  %2826 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2822, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2826, align 8
  %2827 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2822, align 8
  %2828 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2828, i32 0, i32 0
  store ptr @64, ptr %2829, align 8
  %2830 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2828, i32 0, i32 1
  store i64 9, ptr %2830, align 4
  %2831 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2828, align 8
  %2832 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2833 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2834 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2831, ptr %2834, align 8
  %2835 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 1
  store ptr %2832, ptr %2835, align 8
  %2836 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", ptr %2836, align 8
  %2837 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", ptr %2837, align 8
  %2838 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, align 8
  %2839 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2839, i32 0, i32 0
  store ptr @65, ptr %2840, align 8
  %2841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2839, i32 0, i32 1
  store i64 8, ptr %2841, align 4
  %2842 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2839, align 8
  %2843 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2844 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2845 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2844, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2842, ptr %2845, align 8
  %2846 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2844, i32 0, i32 1
  store ptr %2843, ptr %2846, align 8
  %2847 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2844, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2847, align 8
  %2848 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2844, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2848, align 8
  %2849 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2844, align 8
  %2850 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2850, i32 0, i32 0
  store ptr @67, ptr %2851, align 8
  %2852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2850, i32 0, i32 1
  store i64 4, ptr %2852, align 4
  %2853 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2850, align 8
  %2854 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2855 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2856 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2855, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2853, ptr %2856, align 8
  %2857 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2855, i32 0, i32 1
  store ptr %2854, ptr %2857, align 8
  %2858 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2855, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2858, align 8
  %2859 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2855, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2859, align 8
  %2860 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2855, align 8
  %2861 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2862 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2861, i32 0, i32 0
  store ptr @51, ptr %2862, align 8
  %2863 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2861, i32 0, i32 1
  store i64 6, ptr %2863, align 4
  %2864 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2861, align 8
  %2865 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2866 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2867 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2866, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2864, ptr %2867, align 8
  %2868 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2866, i32 0, i32 1
  store ptr %2865, ptr %2868, align 8
  %2869 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2866, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2869, align 8
  %2870 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2866, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2870, align 8
  %2871 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2866, align 8
  %2872 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2873 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2872, i32 0, i32 0
  store ptr @68, ptr %2873, align 8
  %2874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2872, i32 0, i32 1
  store i64 10, ptr %2874, align 4
  %2875 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2872, align 8
  %2876 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2877 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2878 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2877, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2875, ptr %2878, align 8
  %2879 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2877, i32 0, i32 1
  store ptr %2876, ptr %2879, align 8
  %2880 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2877, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2880, align 8
  %2881 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2877, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2881, align 8
  %2882 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2877, align 8
  %2883 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2883, i32 0, i32 0
  store ptr @72, ptr %2884, align 8
  %2885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2883, i32 0, i32 1
  store i64 8, ptr %2885, align 4
  %2886 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2883, align 8
  %2887 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2888 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2889 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2888, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2886, ptr %2889, align 8
  %2890 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2888, i32 0, i32 1
  store ptr %2887, ptr %2890, align 8
  %2891 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2888, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2891, align 8
  %2892 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2888, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2892, align 8
  %2893 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2888, align 8
  %2894 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %2895 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %324, ptr %2895, align 8
  %2896 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2673, ptr %2896, align 8
  %2897 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2684, ptr %2897, align 8
  %2898 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2695, ptr %2898, align 8
  %2899 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2706, ptr %2899, align 8
  %2900 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2717, ptr %2900, align 8
  %2901 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2728, ptr %2901, align 8
  %2902 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2739, ptr %2902, align 8
  %2903 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2750, ptr %2903, align 8
  %2904 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2761, ptr %2904, align 8
  %2905 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2772, ptr %2905, align 8
  %2906 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2783, ptr %2906, align 8
  %2907 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2794, ptr %2907, align 8
  %2908 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2805, ptr %2908, align 8
  %2909 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2816, ptr %2909, align 8
  %2910 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2827, ptr %2910, align 8
  %2911 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2838, ptr %2911, align 8
  %2912 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2849, ptr %2912, align 8
  %2913 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2860, ptr %2913, align 8
  %2914 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2871, ptr %2914, align 8
  %2915 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2882, ptr %2915, align 8
  %2916 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2894, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2893, ptr %2916, align 8
  %2917 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2917, i32 0, i32 0
  store ptr %2894, ptr %2918, align 8
  %2919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2917, i32 0, i32 1
  store i64 22, ptr %2919, align 4
  %2920 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2917, i32 0, i32 2
  store i64 22, ptr %2920, align 4
  %2921 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2917, align 8
  %2922 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2923 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2922, i32 0, i32 0
  store ptr @31, ptr %2923, align 8
  %2924 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2922, i32 0, i32 1
  store i64 35, ptr %2924, align 4
  %2925 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2922, align 8
  %2926 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2927 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2926, i32 0, i32 0
  store ptr @25, ptr %2927, align 8
  %2928 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2926, i32 0, i32 1
  store i64 4, ptr %2928, align 4
  %2929 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2926, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %90, %"github.com/goplus/llgo/internal/runtime.String" %2925, %"github.com/goplus/llgo/internal/runtime.String" %2929, ptr %293, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2921)
=======
  %2547 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2548 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2549 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2548, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %328, ptr %2549, align 8
  %2550 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2548, i32 0, i32 1
  store ptr %2547, ptr %2550, align 8
  %2551 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2548, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2551, align 8
  %2552 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2548, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2552, align 8
  %2553 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2548, align 8
  %2554 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2554, i32 0, i32 0
  store ptr @29, ptr %2555, align 8
  %2556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2554, i32 0, i32 1
  store i64 7, ptr %2556, align 4
  %2557 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2554, align 8
  %2558 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %2559 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2560 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2557, ptr %2560, align 8
  %2561 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i32 0, i32 1
  store ptr %2558, ptr %2561, align 8
  %2562 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %2562, align 8
  %2563 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %2563, align 8
  %2564 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, align 8
  %2565 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2565, i32 0, i32 0
  store ptr @32, ptr %2566, align 8
  %2567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2565, i32 0, i32 1
  store i64 6, ptr %2567, align 4
  %2568 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2565, align 8
  %2569 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2570 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2571 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2570, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2568, ptr %2571, align 8
  %2572 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2570, i32 0, i32 1
  store ptr %2569, ptr %2572, align 8
  %2573 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2570, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2573, align 8
  %2574 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2570, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2574, align 8
  %2575 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2570, align 8
  %2576 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2576, i32 0, i32 0
  store ptr @26, ptr %2577, align 8
  %2578 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2576, i32 0, i32 1
  store i64 4, ptr %2578, align 4
  %2579 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2576, align 8
  %2580 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2581 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2581, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2579, ptr %2582, align 8
  %2583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2581, i32 0, i32 1
  store ptr %2580, ptr %2583, align 8
  %2584 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2581, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2584, align 8
  %2585 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2581, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2585, align 8
  %2586 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2581, align 8
=======
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1037, align 8
  %1038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1038, align 8
  %1039 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, align 8
  %1040 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1041 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, i32 0, i32 0
  store ptr @33, ptr %1041, align 8
  %1042 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, i32 0, i32 1
  store i64 13, ptr %1042, align 4
  %1043 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, align 8
  %1044 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
=======
  %1044 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
  %1045 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1046 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1045, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1043, ptr %1046, align 8
  %1047 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1045, i32 0, i32 1
  store ptr %1044, ptr %1047, align 8
  %1048 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1045, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %1048, align 8
  %1049 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1045, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %1049, align 8
  %1050 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1045, align 8
  %1051 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1052 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1051, i32 0, i32 0
  store ptr @22, ptr %1052, align 8
  %1053 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1051, i32 0, i32 1
  store i64 4, ptr %1053, align 4
  %1054 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1051, align 8
  %1055 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1056 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1057 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1056, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1054, ptr %1057, align 8
  %1058 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1056, i32 0, i32 1
  store ptr %1055, ptr %1058, align 8
  %1059 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1056, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %1059, align 8
  %1060 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1056, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %1060, align 8
  %1061 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1056, align 8
  %1062 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1063 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1062, i32 0, i32 0
  store ptr @28, ptr %1063, align 8
  %1064 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1062, i32 0, i32 1
  store i64 10, ptr %1064, align 4
  %1065 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1062, align 8
  %1066 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1067 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1068 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1065, ptr %1068, align 8
  %1069 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 1
  store ptr %1066, ptr %1069, align 8
  %1070 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %1070, align 8
  %1071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %1071, align 8
  %1072 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, align 8
  %1073 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1074 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1073, i32 0, i32 0
  store ptr @29, ptr %1074, align 8
  %1075 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1073, i32 0, i32 1
  store i64 8, ptr %1075, align 4
  %1076 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1073, align 8
  %1077 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1078 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1079 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1078, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1076, ptr %1079, align 8
  %1080 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1078, i32 0, i32 1
  store ptr %1077, ptr %1080, align 8
  %1081 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1078, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %1081, align 8
  %1082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1078, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %1082, align 8
  %1083 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1078, align 8
  %1084 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1085 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1084, i32 0, i32 0
  store ptr @33, ptr %1085, align 8
  %1086 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1084, i32 0, i32 1
  store i64 7, ptr %1086, align 4
  %1087 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1084, align 8
  %1088 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1089 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1090 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1089, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1087, ptr %1090, align 8
  %1091 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1089, i32 0, i32 1
  store ptr %1088, ptr %1091, align 8
  %1092 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1089, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %1092, align 8
  %1093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1089, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %1093, align 8
  %1094 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1089, align 8
  %1095 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1096 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1095, i32 0, i32 0
  store ptr @34, ptr %1096, align 8
  %1097 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1095, i32 0, i32 1
  store i64 10, ptr %1097, align 4
  %1098 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1095, align 8
  %1099 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1100 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1101 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1100, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1098, ptr %1101, align 8
  %1102 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1100, i32 0, i32 1
  store ptr %1099, ptr %1102, align 8
  %1103 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1100, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1103, align 8
  %1104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1100, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1104, align 8
  %1105 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1100, align 8
  %1106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1106, i32 0, i32 0
  store ptr @35, ptr %1107, align 8
  %1108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1106, i32 0, i32 1
  store i64 13, ptr %1108, align 4
  %1109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1106, align 8
  %1110 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1111 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1112 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1111, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1109, ptr %1112, align 8
  %1113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1111, i32 0, i32 1
  store ptr %1110, ptr %1113, align 8
  %1114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1111, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %1114, align 8
  %1115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1111, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %1115, align 8
  %1116 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1111, align 8
  %1117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1117, i32 0, i32 0
  store ptr @46, ptr %1118, align 8
  %1119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1117, i32 0, i32 1
  store i64 13, ptr %1119, align 4
  %1120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1117, align 8
  %1121 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1122 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1122, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1120, ptr %1123, align 8
  %1124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1122, i32 0, i32 1
  store ptr %1121, ptr %1124, align 8
  %1125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1122, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %1125, align 8
  %1126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1122, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %1126, align 8
  %1127 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1122, align 8
  %1128 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1128, i32 0, i32 0
  store ptr @47, ptr %1129, align 8
  %1130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1128, i32 0, i32 1
  store i64 3, ptr %1130, align 4
  %1131 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1128, align 8
  %1132 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1133 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1133, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1131, ptr %1134, align 8
  %1135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1133, i32 0, i32 1
  store ptr %1132, ptr %1135, align 8
  %1136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1133, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %1136, align 8
  %1137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1133, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %1137, align 8
  %1138 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1133, align 8
  %1139 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1139, i32 0, i32 0
  store ptr @48, ptr %1140, align 8
  %1141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1139, i32 0, i32 1
  store i64 4, ptr %1141, align 4
  %1142 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1139, align 8
  %1143 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1143, i32 0, i32 0
  store ptr @49, ptr %1144, align 8
  %1145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1143, i32 0, i32 1
  store i64 40, ptr %1145, align 4
  %1146 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1143, align 8
  %1147 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1146, i64 7, i64 8, i64 1, i64 1)
  %1148 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %_llgo_79, label %_llgo_80

_llgo_78:                                         ; preds = %_llgo_138, %_llgo_76
  %1150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1150, i32 0, i32 0
  store ptr @36, ptr %1151, align 8
  %1152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1150, i32 0, i32 1
  store i64 49, ptr %1152, align 4
  %1153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1150, align 8
  %1154 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1153, i64 25, i64 120, i64 0, i64 20)
  %1155 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %_llgo_139, label %_llgo_140

_llgo_79:                                         ; preds = %_llgo_77
  store ptr %1147, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_77
  %1157 = load ptr, ptr @_llgo_uint, align 8
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %1159 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %1159, ptr @_llgo_uint, align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %1160 = load ptr, ptr @_llgo_uint, align 8
  br i1 %1149, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %1161 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1161, i32 0, i32 0
  store ptr @50, ptr %1162, align 8
  %1163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1161, i32 0, i32 1
  store i64 6, ptr %1163, align 4
  %1164 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1161, align 8
  %1165 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1166 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1166, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1164, ptr %1167, align 8
  %1168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1166, i32 0, i32 1
  store ptr %1165, ptr %1168, align 8
  %1169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1166, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1169, align 8
  %1170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1166, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1170, align 8
  %1171 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1166, align 8
  %1172 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1172, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1164, ptr %1173, align 8
  %1174 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1172, i32 0, i32 1
  store ptr %1165, ptr %1174, align 8
  %1175 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1172, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1175, align 8
  %1176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1172, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.Kind.String", ptr %1176, align 8
  %1177 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1172, align 8
  %1178 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1179 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1178, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1177, ptr %1179, align 8
  %1180 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1180, i32 0, i32 0
  store ptr %1178, ptr %1181, align 8
  %1182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1180, i32 0, i32 1
  store i64 1, ptr %1182, align 4
  %1183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1180, i32 0, i32 2
  store i64 1, ptr %1183, align 4
  %1184 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1180, align 8
  %1185 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1186 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1185, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1171, ptr %1186, align 8
  %1187 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1187, i32 0, i32 0
  store ptr %1185, ptr %1188, align 8
  %1189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1187, i32 0, i32 1
  store i64 1, ptr %1189, align 4
  %1190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1187, i32 0, i32 2
  store i64 1, ptr %1190, align 4
  %1191 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1187, align 8
  %1192 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1192, i32 0, i32 0
  store ptr @3, ptr %1193, align 8
  %1194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1192, i32 0, i32 1
  store i64 35, ptr %1194, align 4
  %1195 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1192, align 8
  %1196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1196, i32 0, i32 0
  store ptr @48, ptr %1197, align 8
  %1198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1196, i32 0, i32 1
  store i64 4, ptr %1198, align 4
  %1199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1196, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1147, %"github.com/goplus/llgo/internal/runtime.String" %1195, %"github.com/goplus/llgo/internal/runtime.String" %1199, ptr %1160, %"github.com/goplus/llgo/internal/runtime.Slice" %1184, %"github.com/goplus/llgo/internal/runtime.Slice" %1191)
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %1200 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1201 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %1203 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1204 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1204, i32 0, i32 0
  store ptr %1203, ptr %1205, align 8
  %1206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1204, i32 0, i32 1
  store i64 0, ptr %1206, align 4
  %1207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1204, i32 0, i32 2
  store i64 0, ptr %1207, align 4
  %1208 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1204, align 8
  %1209 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1210 = getelementptr ptr, ptr %1209, i64 0
  store ptr %1200, ptr %1210, align 8
  %1211 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1211, i32 0, i32 0
  store ptr %1209, ptr %1212, align 8
  %1213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1211, i32 0, i32 1
  store i64 1, ptr %1213, align 4
  %1214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1211, i32 0, i32 2
  store i64 1, ptr %1214, align 4
  %1215 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1211, align 8
  %1216 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1208, %"github.com/goplus/llgo/internal/runtime.Slice" %1215, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1216)
  store ptr %1216, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %1217 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1218 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1219 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1218, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1142, ptr %1219, align 8
  %1220 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1218, i32 0, i32 1
  store ptr %1217, ptr %1220, align 8
  %1221 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1218, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1221, align 8
  %1222 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1218, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1222, align 8
  %1223 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1218, align 8
  %1224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1224, i32 0, i32 0
  store ptr @24, ptr %1225, align 8
  %1226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1224, i32 0, i32 1
  store i64 3, ptr %1226, align 4
  %1227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1224, align 8
  %1228 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1229 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1230 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1229, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1227, ptr %1230, align 8
  %1231 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1229, i32 0, i32 1
  store ptr %1228, ptr %1231, align 8
  %1232 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1229, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1232, align 8
  %1233 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1229, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1233, align 8
  %1234 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1229, align 8
  %1235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1235, i32 0, i32 0
  store ptr @51, ptr %1236, align 8
  %1237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1235, i32 0, i32 1
  store i64 7, ptr %1237, align 4
  %1238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1235, align 8
  %1239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1239, i32 0, i32 0
  store ptr @52, ptr %1240, align 8
  %1241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1239, i32 0, i32 1
  store i64 43, ptr %1241, align 4
  %1242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1239, align 8
  %1243 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1242, i64 25, i64 136, i64 0, i64 23)
  %1244 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  store ptr %1243, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %1246 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1247 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1248 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1249 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1250 = load ptr, ptr @_llgo_Pointer, align 8
  %1251 = load ptr, ptr @_llgo_Pointer, align 8
  %1252 = load ptr, ptr @_llgo_uintptr, align 8
  %1253 = load ptr, ptr @_llgo_uintptr, align 8
  %1254 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %1256 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1257 = getelementptr ptr, ptr %1256, i64 0
  store ptr %1250, ptr %1257, align 8
  %1258 = getelementptr ptr, ptr %1256, i64 1
  store ptr %1251, ptr %1258, align 8
  %1259 = getelementptr ptr, ptr %1256, i64 2
  store ptr %1252, ptr %1259, align 8
  %1260 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1260, i32 0, i32 0
  store ptr %1256, ptr %1261, align 8
  %1262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1260, i32 0, i32 1
  store i64 3, ptr %1262, align 4
  %1263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1260, i32 0, i32 2
  store i64 3, ptr %1263, align 4
  %1264 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1260, align 8
  %1265 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1266 = getelementptr ptr, ptr %1265, i64 0
  store ptr %1253, ptr %1266, align 8
  %1267 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1267, i32 0, i32 0
  store ptr %1265, ptr %1268, align 8
  %1269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1267, i32 0, i32 1
  store i64 1, ptr %1269, align 4
  %1270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1267, i32 0, i32 2
  store i64 1, ptr %1270, align 4
  %1271 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1267, align 8
  %1272 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1264, %"github.com/goplus/llgo/internal/runtime.Slice" %1271, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1272)
  store ptr %1272, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %1273 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %1274 = load ptr, ptr @_llgo_Pointer, align 8
  %1275 = load ptr, ptr @_llgo_Pointer, align 8
  %1276 = load ptr, ptr @_llgo_Pointer, align 8
  %1277 = load ptr, ptr @_llgo_uintptr, align 8
  %1278 = load ptr, ptr @_llgo_uintptr, align 8
  %1279 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1279, i32 0, i32 0
  store ptr @5, ptr %1280, align 8
  %1281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1279, i32 0, i32 1
  store i64 1, ptr %1281, align 4
  %1282 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1279, align 8
  %1283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1283, i32 0, i32 0
  store ptr null, ptr %1284, align 8
  %1285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1283, i32 0, i32 1
  store i64 0, ptr %1285, align 4
  %1286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1283, align 8
  %1287 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1288 = getelementptr ptr, ptr %1287, i64 0
  store ptr %1275, ptr %1288, align 8
  %1289 = getelementptr ptr, ptr %1287, i64 1
  store ptr %1276, ptr %1289, align 8
  %1290 = getelementptr ptr, ptr %1287, i64 2
  store ptr %1277, ptr %1290, align 8
  %1291 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1291, i32 0, i32 0
  store ptr %1287, ptr %1292, align 8
  %1293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1291, i32 0, i32 1
  store i64 3, ptr %1293, align 4
  %1294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1291, i32 0, i32 2
  store i64 3, ptr %1294, align 4
  %1295 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1291, align 8
  %1296 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1297 = getelementptr ptr, ptr %1296, i64 0
  store ptr %1278, ptr %1297, align 8
  %1298 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1298, i32 0, i32 0
  store ptr %1296, ptr %1299, align 8
  %1300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1298, i32 0, i32 1
  store i64 1, ptr %1300, align 4
  %1301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1298, i32 0, i32 2
  store i64 1, ptr %1301, align 4
  %1302 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1298, align 8
  %1303 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1295, %"github.com/goplus/llgo/internal/runtime.Slice" %1302, i1 false)
  %1304 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1282, ptr %1303, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1286, i1 false)
  %1305 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1305, i32 0, i32 0
  store ptr @6, ptr %1306, align 8
  %1307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1305, i32 0, i32 1
  store i64 4, ptr %1307, align 4
  %1308 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1305, align 8
  %1309 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1309, i32 0, i32 0
  store ptr null, ptr %1310, align 8
  %1311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1309, i32 0, i32 1
  store i64 0, ptr %1311, align 4
  %1312 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1309, align 8
  %1313 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1314 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1308, ptr %1313, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %1312, i1 false)
  %1315 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1315, i32 0, i32 0
  store ptr @7, ptr %1316, align 8
  %1317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1315, i32 0, i32 1
  store i64 4, ptr %1317, align 4
  %1318 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1315, align 8
  %1319 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %1320 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1319, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1304, ptr %1320, align 8
  %1321 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1319, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1314, ptr %1321, align 8
  %1322 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1322, i32 0, i32 0
  store ptr %1319, ptr %1323, align 8
  %1324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1322, i32 0, i32 1
  store i64 2, ptr %1324, align 4
  %1325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1322, i32 0, i32 2
  store i64 2, ptr %1325, align 4
  %1326 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1322, align 8
  %1327 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1318, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %1326)
  store ptr %1327, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %1328 = load ptr, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %1329 = load ptr, ptr @_llgo_uint8, align 8
  %1330 = load ptr, ptr @_llgo_uint8, align 8
  %1331 = load ptr, ptr @_llgo_uint16, align 8
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %1333 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  store ptr %1333, ptr @_llgo_uint16, align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %1334 = load ptr, ptr @_llgo_uint16, align 8
  %1335 = load ptr, ptr @_llgo_uint32, align 8
  %1336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1336, i32 0, i32 0
  store ptr @1, ptr %1337, align 8
  %1338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1336, i32 0, i32 1
  store i64 40, ptr %1338, align 4
  %1339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1336, align 8
  %1340 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1339, i64 25, i64 80, i64 0, i64 20)
  %1341 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1341, i32 0, i32 0
  store ptr @1, ptr %1342, align 8
  %1343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1341, i32 0, i32 1
  store i64 40, ptr %1343, align 4
  %1344 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1341, align 8
  %1345 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1344, i64 25, i64 80, i64 0, i64 20)
  %1346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1346, i32 0, i32 0
  store ptr @1, ptr %1347, align 8
  %1348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1346, i32 0, i32 1
  store i64 40, ptr %1348, align 4
  %1349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1346, align 8
  %1350 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1349, i64 25, i64 80, i64 0, i64 20)
  %1351 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1351, i32 0, i32 0
  store ptr @1, ptr %1352, align 8
  %1353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1351, i32 0, i32 1
  store i64 40, ptr %1353, align 4
  %1354 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1351, align 8
  %1355 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1354, i64 25, i64 80, i64 0, i64 20)
  %1356 = load ptr, ptr @_llgo_Pointer, align 8
  %1357 = load ptr, ptr @_llgo_Pointer, align 8
  %1358 = load ptr, ptr @_llgo_uintptr, align 8
  %1359 = load ptr, ptr @_llgo_uintptr, align 8
  %1360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1360, i32 0, i32 0
  store ptr @21, ptr %1361, align 8
  %1362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1360, i32 0, i32 1
  store i64 4, ptr %1362, align 4
  %1363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1360, align 8
  %1364 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1364, i32 0, i32 0
  store ptr null, ptr %1365, align 8
  %1366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1364, i32 0, i32 1
  store i64 0, ptr %1366, align 4
  %1367 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1364, align 8
  %1368 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1363, ptr %1340, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1367, i1 true)
  %1369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1369, i32 0, i32 0
  store ptr @47, ptr %1370, align 8
  %1371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1369, i32 0, i32 1
  store i64 3, ptr %1371, align 4
  %1372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1369, align 8
  %1373 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1373, i32 0, i32 0
  store ptr null, ptr %1374, align 8
  %1375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1373, i32 0, i32 1
  store i64 0, ptr %1375, align 4
  %1376 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1373, align 8
  %1377 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1345)
  %1378 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1372, ptr %1377, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1376, i1 false)
  %1379 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 0
  store ptr @22, ptr %1380, align 8
  %1381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 1
  store i64 4, ptr %1381, align 4
  %1382 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, align 8
  %1383 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1383, i32 0, i32 0
  store ptr null, ptr %1384, align 8
  %1385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1383, i32 0, i32 1
  store i64 0, ptr %1385, align 4
  %1386 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1383, align 8
  %1387 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1350)
  %1388 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1382, ptr %1387, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %1386, i1 false)
  %1389 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1389, i32 0, i32 0
  store ptr @53, ptr %1390, align 8
  %1391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1389, i32 0, i32 1
  store i64 6, ptr %1391, align 4
  %1392 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1389, align 8
  %1393 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1393, i32 0, i32 0
  store ptr null, ptr %1394, align 8
  %1395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1393, i32 0, i32 1
  store i64 0, ptr %1395, align 4
  %1396 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1393, align 8
  %1397 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1355)
  %1398 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1392, ptr %1397, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1396, i1 false)
  %1399 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1399, i32 0, i32 0
  store ptr @54, ptr %1400, align 8
  %1401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1399, i32 0, i32 1
  store i64 6, ptr %1401, align 4
  %1402 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1399, align 8
  %1403 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1403, i32 0, i32 0
  store ptr null, ptr %1404, align 8
  %1405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1403, i32 0, i32 1
  store i64 0, ptr %1405, align 4
  %1406 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1403, align 8
  %1407 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1407, i32 0, i32 0
  store ptr @5, ptr %1408, align 8
  %1409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1407, i32 0, i32 1
  store i64 1, ptr %1409, align 4
  %1410 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1407, align 8
  %1411 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1411, i32 0, i32 0
  store ptr null, ptr %1412, align 8
  %1413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1411, i32 0, i32 1
  store i64 0, ptr %1413, align 4
  %1414 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1411, align 8
  %1415 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1416 = getelementptr ptr, ptr %1415, i64 0
  store ptr %1356, ptr %1416, align 8
  %1417 = getelementptr ptr, ptr %1415, i64 1
  store ptr %1357, ptr %1417, align 8
  %1418 = getelementptr ptr, ptr %1415, i64 2
  store ptr %1358, ptr %1418, align 8
  %1419 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1419, i32 0, i32 0
  store ptr %1415, ptr %1420, align 8
  %1421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1419, i32 0, i32 1
  store i64 3, ptr %1421, align 4
  %1422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1419, i32 0, i32 2
  store i64 3, ptr %1422, align 4
  %1423 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1419, align 8
  %1424 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1425 = getelementptr ptr, ptr %1424, i64 0
  store ptr %1359, ptr %1425, align 8
  %1426 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1426, i32 0, i32 0
  store ptr %1424, ptr %1427, align 8
  %1428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1426, i32 0, i32 1
  store i64 1, ptr %1428, align 4
  %1429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1426, i32 0, i32 2
  store i64 1, ptr %1429, align 4
  %1430 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1426, align 8
  %1431 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1423, %"github.com/goplus/llgo/internal/runtime.Slice" %1430, i1 false)
  %1432 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1410, ptr %1431, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1414, i1 false)
  %1433 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1433, i32 0, i32 0
  store ptr @6, ptr %1434, align 8
  %1435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1433, i32 0, i32 1
  store i64 4, ptr %1435, align 4
  %1436 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1433, align 8
  %1437 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, i32 0, i32 0
  store ptr null, ptr %1438, align 8
  %1439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, i32 0, i32 1
  store i64 0, ptr %1439, align 4
  %1440 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, align 8
  %1441 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1442 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1436, ptr %1441, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %1440, i1 false)
  %1443 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1443, i32 0, i32 0
  store ptr @7, ptr %1444, align 8
  %1445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1443, i32 0, i32 1
  store i64 4, ptr %1445, align 4
  %1446 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1443, align 8
  %1447 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %1448 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1447, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1432, ptr %1448, align 8
  %1449 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1447, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1442, ptr %1449, align 8
  %1450 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1450, i32 0, i32 0
  store ptr %1447, ptr %1451, align 8
  %1452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1450, i32 0, i32 1
  store i64 2, ptr %1452, align 4
  %1453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1450, i32 0, i32 2
  store i64 2, ptr %1453, align 4
  %1454 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1450, align 8
  %1455 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1446, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %1454)
  %1456 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1402, ptr %1455, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %1406, i1 false)
  %1457 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1458 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1457, i32 0, i32 0
  store ptr @55, ptr %1458, align 8
  %1459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1457, i32 0, i32 1
  store i64 7, ptr %1459, align 4
  %1460 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1457, align 8
  %1461 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1461, i32 0, i32 0
  store ptr null, ptr %1462, align 8
  %1463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1461, i32 0, i32 1
  store i64 0, ptr %1463, align 4
  %1464 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1461, align 8
  %1465 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1466 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1460, ptr %1465, i64 112, %"github.com/goplus/llgo/internal/runtime.String" %1464, i1 false)
  %1467 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1468 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1467, i32 0, i32 0
  store ptr @56, ptr %1468, align 8
  %1469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1467, i32 0, i32 1
  store i64 9, ptr %1469, align 4
  %1470 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1467, align 8
  %1471 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1471, i32 0, i32 0
  store ptr null, ptr %1472, align 8
  %1473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1471, i32 0, i32 1
  store i64 0, ptr %1473, align 4
  %1474 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1471, align 8
  %1475 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1476 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1470, ptr %1475, i64 113, %"github.com/goplus/llgo/internal/runtime.String" %1474, i1 false)
  %1477 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1477, i32 0, i32 0
  store ptr @57, ptr %1478, align 8
  %1479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1477, i32 0, i32 1
  store i64 10, ptr %1479, align 4
  %1480 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1477, align 8
  %1481 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1481, i32 0, i32 0
  store ptr null, ptr %1482, align 8
  %1483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1481, i32 0, i32 1
  store i64 0, ptr %1483, align 4
  %1484 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1481, align 8
  %1485 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1486 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1480, ptr %1485, i64 114, %"github.com/goplus/llgo/internal/runtime.String" %1484, i1 false)
  %1487 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1487, i32 0, i32 0
  store ptr @58, ptr %1488, align 8
  %1489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1487, i32 0, i32 1
  store i64 5, ptr %1489, align 4
  %1490 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1487, align 8
  %1491 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1491, i32 0, i32 0
  store ptr null, ptr %1492, align 8
  %1493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1491, i32 0, i32 1
  store i64 0, ptr %1493, align 4
  %1494 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1491, align 8
  %1495 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1496 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1490, ptr %1495, i64 116, %"github.com/goplus/llgo/internal/runtime.String" %1494, i1 false)
  %1497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1497, i32 0, i32 0
  store ptr @7, ptr %1498, align 8
  %1499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1497, i32 0, i32 1
  store i64 4, ptr %1499, align 4
  %1500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1497, align 8
  %1501 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %1502 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1368, ptr %1502, align 8
  %1503 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1378, ptr %1503, align 8
  %1504 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1388, ptr %1504, align 8
  %1505 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1398, ptr %1505, align 8
  %1506 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1456, ptr %1506, align 8
  %1507 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %1466, ptr %1507, align 8
  %1508 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %1476, ptr %1508, align 8
  %1509 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %1486, ptr %1509, align 8
  %1510 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1501, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %1496, ptr %1510, align 8
  %1511 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1511, i32 0, i32 0
  store ptr %1501, ptr %1512, align 8
  %1513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1511, i32 0, i32 1
  store i64 9, ptr %1513, align 4
  %1514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1511, i32 0, i32 2
  store i64 9, ptr %1514, align 4
  %1515 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1511, align 8
  %1516 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1500, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %1515)
  store ptr %1516, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %1517 = load ptr, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %1245, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %1518 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1518, i32 0, i32 0
  store ptr @18, ptr %1519, align 8
  %1520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1518, i32 0, i32 1
  store i64 5, ptr %1520, align 4
  %1521 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1518, align 8
  %1522 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1523 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1524 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1523, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1521, ptr %1524, align 8
  %1525 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1523, i32 0, i32 1
  store ptr %1522, ptr %1525, align 8
  %1526 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1523, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1526, align 8
  %1527 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1523, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1527, align 8
  %1528 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1523, align 8
  %1529 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1529, i32 0, i32 0
  store ptr @19, ptr %1530, align 8
  %1531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1529, i32 0, i32 1
  store i64 9, ptr %1531, align 4
  %1532 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1529, align 8
  %1533 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1534 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1535 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1534, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1532, ptr %1535, align 8
  %1536 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1534, i32 0, i32 1
  store ptr %1533, ptr %1536, align 8
  %1537 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1534, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1537, align 8
  %1538 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1534, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1538, align 8
  %1539 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1534, align 8
  %1540 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1540, i32 0, i32 0
  store ptr @25, ptr %1541, align 8
  %1542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1540, i32 0, i32 1
  store i64 7, ptr %1542, align 4
  %1543 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1540, align 8
  %1544 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1545 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1546 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1543, ptr %1546, align 8
  %1547 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 1
  store ptr %1544, ptr %1547, align 8
  %1548 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1548, align 8
  %1549 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1549, align 8
  %1550 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, align 8
  %1551 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1551, i32 0, i32 0
  store ptr @27, ptr %1552, align 8
  %1553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1551, i32 0, i32 1
  store i64 6, ptr %1553, align 4
  %1554 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1551, align 8
  %1555 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1556 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1557 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1556, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1554, ptr %1557, align 8
  %1558 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1556, i32 0, i32 1
  store ptr %1555, ptr %1558, align 8
  %1559 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1556, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1559, align 8
  %1560 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1556, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1560, align 8
  %1561 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1556, align 8
  %1562 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1562, i32 0, i32 0
  store ptr @28, ptr %1563, align 8
  %1564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1562, i32 0, i32 1
  store i64 10, ptr %1564, align 4
  %1565 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1562, align 8
  %1566 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1567 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1568 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1567, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1565, ptr %1568, align 8
  %1569 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1567, i32 0, i32 1
  store ptr %1566, ptr %1569, align 8
  %1570 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1567, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1570, align 8
  %1571 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1567, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1571, align 8
  %1572 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1567, align 8
  %1573 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1573, i32 0, i32 0
  store ptr @29, ptr %1574, align 8
  %1575 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1573, i32 0, i32 1
  store i64 8, ptr %1575, align 4
  %1576 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1573, align 8
  %1577 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1578 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1578, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1576, ptr %1579, align 8
  %1580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1578, i32 0, i32 1
  store ptr %1577, ptr %1580, align 8
  %1581 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1578, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1581, align 8
  %1582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1578, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1582, align 8
  %1583 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1578, align 8
  %1584 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1585 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1584, i32 0, i32 0
  store ptr @33, ptr %1585, align 8
  %1586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1584, i32 0, i32 1
  store i64 7, ptr %1586, align 4
  %1587 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1584, align 8
  %1588 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1589 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1590 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1589, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1587, ptr %1590, align 8
  %1591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1589, i32 0, i32 1
  store ptr %1588, ptr %1591, align 8
  %1592 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1589, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1592, align 8
  %1593 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1589, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1593, align 8
  %1594 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1589, align 8
  %1595 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1595, i32 0, i32 0
  store ptr @59, ptr %1596, align 8
  %1597 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1595, i32 0, i32 1
  store i64 14, ptr %1597, align 4
  %1598 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1595, align 8
  %1599 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1600 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1601 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1600, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1598, ptr %1601, align 8
  %1602 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1600, i32 0, i32 1
  store ptr %1599, ptr %1602, align 8
  %1603 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1600, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1603, align 8
  %1604 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1600, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1604, align 8
  %1605 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1600, align 8
  %1606 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1606, i32 0, i32 0
  store ptr @34, ptr %1607, align 8
  %1608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1606, i32 0, i32 1
  store i64 10, ptr %1608, align 4
  %1609 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1606, align 8
  %1610 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1611 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1612 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1611, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1609, ptr %1612, align 8
  %1613 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1611, i32 0, i32 1
  store ptr %1610, ptr %1613, align 8
  %1614 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1611, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1614, align 8
  %1615 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1611, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1615, align 8
  %1616 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1611, align 8
  %1617 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1617, i32 0, i32 0
  store ptr @60, ptr %1618, align 8
  %1619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1617, i32 0, i32 1
  store i64 12, ptr %1619, align 4
  %1620 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1617, align 8
  %1621 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1622 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1620, ptr %1623, align 8
  %1624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 1
  store ptr %1621, ptr %1624, align 8
  %1625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1625, align 8
  %1626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1626, align 8
  %1627 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, align 8
  %1628 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1628, i32 0, i32 0
  store ptr @61, ptr %1629, align 8
  %1630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1628, i32 0, i32 1
  store i64 11, ptr %1630, align 4
  %1631 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1628, align 8
  %1632 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1633 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1634 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1631, ptr %1634, align 8
  %1635 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 1
  store ptr %1632, ptr %1635, align 8
  %1636 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1636, align 8
  %1637 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1637, align 8
  %1638 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, align 8
  %1639 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1639, i32 0, i32 0
  store ptr @35, ptr %1640, align 8
  %1641 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1639, i32 0, i32 1
  store i64 13, ptr %1641, align 4
  %1642 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1639, align 8
  %1643 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1644 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1645 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1644, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1642, ptr %1645, align 8
  %1646 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1644, i32 0, i32 1
  store ptr %1643, ptr %1646, align 8
  %1647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1644, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1647, align 8
  %1648 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1644, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1648, align 8
  %1649 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1644, align 8
  %1650 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1650, i32 0, i32 0
  store ptr @46, ptr %1651, align 8
  %1652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1650, i32 0, i32 1
  store i64 13, ptr %1652, align 4
  %1653 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1650, align 8
  %1654 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1655 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1655, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1653, ptr %1656, align 8
  %1657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1655, i32 0, i32 1
  store ptr %1654, ptr %1657, align 8
  %1658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1655, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1658, align 8
  %1659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1655, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1659, align 8
  %1660 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1655, align 8
  %1661 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1661, i32 0, i32 0
  store ptr @48, ptr %1662, align 8
  %1663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1661, i32 0, i32 1
  store i64 4, ptr %1663, align 4
  %1664 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1661, align 8
  %1665 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1666 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1667 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1666, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1664, ptr %1667, align 8
  %1668 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1666, i32 0, i32 1
  store ptr %1665, ptr %1668, align 8
  %1669 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1666, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1669, align 8
  %1670 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1666, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1670, align 8
  %1671 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1666, align 8
  %1672 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1673 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1672, i32 0, i32 0
  store ptr @24, ptr %1673, align 8
  %1674 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1672, i32 0, i32 1
  store i64 3, ptr %1674, align 4
  %1675 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1672, align 8
  %1676 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1677 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1678 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1677, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1675, ptr %1678, align 8
  %1679 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1677, i32 0, i32 1
  store ptr %1676, ptr %1679, align 8
  %1680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1677, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1680, align 8
  %1681 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1677, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1681, align 8
  %1682 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1677, align 8
  %1683 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1683, i32 0, i32 0
  store ptr @51, ptr %1684, align 8
  %1685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1683, i32 0, i32 1
  store i64 7, ptr %1685, align 4
  %1686 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1683, align 8
  %1687 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1688 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1689 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1688, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1686, ptr %1689, align 8
  %1690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1688, i32 0, i32 1
  store ptr %1687, ptr %1690, align 8
  %1691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1688, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1691, align 8
  %1692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1688, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1692, align 8
  %1693 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1688, align 8
  %1694 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1694, i32 0, i32 0
  store ptr @62, ptr %1695, align 8
  %1696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1694, i32 0, i32 1
  store i64 13, ptr %1696, align 4
  %1697 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1694, align 8
  %1698 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1699 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1699, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1697, ptr %1700, align 8
  %1701 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1699, i32 0, i32 1
  store ptr %1698, ptr %1701, align 8
  %1702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1699, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1702, align 8
  %1703 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1699, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1703, align 8
  %1704 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1699, align 8
  %1705 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1705, i32 0, i32 0
  store ptr @63, ptr %1706, align 8
  %1707 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1705, i32 0, i32 1
  store i64 8, ptr %1707, align 4
  %1708 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1705, align 8
  %1709 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1710 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1710, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1708, ptr %1711, align 8
  %1712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1710, i32 0, i32 1
  store ptr %1709, ptr %1712, align 8
  %1713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1710, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1713, align 8
  %1714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1710, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1714, align 8
  %1715 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1710, align 8
  %1716 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1716, i32 0, i32 0
  store ptr @64, ptr %1717, align 8
  %1718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1716, i32 0, i32 1
  store i64 12, ptr %1718, align 4
  %1719 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1716, align 8
  %1720 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1721 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1721, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1719, ptr %1722, align 8
  %1723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1721, i32 0, i32 1
  store ptr %1720, ptr %1723, align 8
  %1724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1721, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1724, align 8
  %1725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1721, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1725, align 8
  %1726 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1721, align 8
  %1727 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1728 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1727, i32 0, i32 0
  store ptr @65, ptr %1728, align 8
  %1729 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1727, i32 0, i32 1
  store i64 4, ptr %1729, align 4
  %1730 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1727, align 8
  %1731 = load ptr, ptr @_llgo_uintptr, align 8
  %1732 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1733 = icmp eq ptr %1732, null
  br i1 %1733, label %_llgo_95, label %_llgo_96

_llgo_94:                                         ; preds = %_llgo_134, %_llgo_92
  %1734 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1735 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1734, i32 0, i32 0
  store ptr @52, ptr %1735, align 8
  %1736 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1734, i32 0, i32 1
  store i64 43, ptr %1736, align 4
  %1737 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1734, align 8
  %1738 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1737, i64 25, i64 136, i64 0, i64 23)
  %1739 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1740 = icmp eq ptr %1739, null
  br i1 %1740, label %_llgo_135, label %_llgo_136

_llgo_95:                                         ; preds = %_llgo_93
  %1741 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1742 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1743 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1742, i32 0, i32 0
  store ptr %1741, ptr %1743, align 8
  %1744 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1742, i32 0, i32 1
  store i64 0, ptr %1744, align 4
  %1745 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1742, i32 0, i32 2
  store i64 0, ptr %1745, align 4
  %1746 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1742, align 8
  %1747 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1748 = getelementptr ptr, ptr %1747, i64 0
  store ptr %1731, ptr %1748, align 8
  %1749 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1749, i32 0, i32 0
  store ptr %1747, ptr %1750, align 8
  %1751 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1749, i32 0, i32 1
  store i64 1, ptr %1751, align 4
  %1752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1749, i32 0, i32 2
  store i64 1, ptr %1752, align 4
  %1753 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1749, align 8
  %1754 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1746, %"github.com/goplus/llgo/internal/runtime.Slice" %1753, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1754)
  store ptr %1754, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_93
  %1755 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1756 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1730, ptr %1757, align 8
  %1758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 1
  store ptr %1755, ptr %1758, align 8
  %1759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1759, align 8
  %1760 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1760, align 8
  %1761 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, align 8
  %1762 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1762, i32 0, i32 0
  store ptr @50, ptr %1763, align 8
  %1764 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1762, i32 0, i32 1
  store i64 6, ptr %1764, align 4
  %1765 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1762, align 8
  %1766 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1767 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1768 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1767, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1765, ptr %1768, align 8
  %1769 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1767, i32 0, i32 1
  store ptr %1766, ptr %1769, align 8
  %1770 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1767, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1770, align 8
  %1771 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1767, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1771, align 8
  %1772 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1767, align 8
  %1773 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1773, i32 0, i32 0
  store ptr @66, ptr %1774, align 8
  %1775 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1773, i32 0, i32 1
  store i64 10, ptr %1775, align 4
  %1776 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1773, align 8
  %1777 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1777, i32 0, i32 0
  store ptr @67, ptr %1778, align 8
  %1779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1777, i32 0, i32 1
  store i64 46, ptr %1779, align 4
  %1780 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1777, align 8
  %1781 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1780, i64 25, i64 120, i64 0, i64 20)
  %1782 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1783 = icmp eq ptr %1782, null
  br i1 %1783, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  store ptr %1781, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %1784 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1785 = load ptr, ptr @_llgo_string, align 8
  %1786 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1787 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1786, i32 0, i32 0
  store ptr @68, ptr %1787, align 8
  %1788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1786, i32 0, i32 1
  store i64 47, ptr %1788, align 4
  %1789 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1786, align 8
  %1790 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1789, i64 25, i64 56, i64 0, i64 2)
  %1791 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1792 = icmp eq ptr %1791, null
  br i1 %1792, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  store ptr %1790, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %1793 = load ptr, ptr @_llgo_string, align 8
  %1794 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1795 = load ptr, ptr @_llgo_uintptr, align 8
  %1796 = load ptr, ptr @_llgo_string, align 8
  %1797 = load ptr, ptr @_llgo_bool, align 8
  %1798 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1799 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1798, i32 0, i32 0
  store ptr @1, ptr %1799, align 8
  %1800 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1798, i32 0, i32 1
  store i64 40, ptr %1800, align 4
  %1801 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1798, align 8
  %1802 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1801, i64 25, i64 80, i64 0, i64 20)
  %1803 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  %1804 = icmp eq ptr %1803, null
  br i1 %1804, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %1805 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1806 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1805, i32 0, i32 0
  store ptr @38, ptr %1806, align 8
  %1807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1805, i32 0, i32 1
  store i64 5, ptr %1807, align 4
  %1808 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1805, align 8
  %1809 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1809, i32 0, i32 0
  store ptr null, ptr %1810, align 8
  %1811 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1809, i32 0, i32 1
  store i64 0, ptr %1811, align 4
  %1812 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1809, align 8
  %1813 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1814 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1808, ptr %1813, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1812, i1 false)
  %1815 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1816 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1815, i32 0, i32 0
  store ptr @69, ptr %1816, align 8
  %1817 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1815, i32 0, i32 1
  store i64 3, ptr %1817, align 4
  %1818 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1815, align 8
  %1819 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1819, i32 0, i32 0
  store ptr null, ptr %1820, align 8
  %1821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1819, i32 0, i32 1
  store i64 0, ptr %1821, align 4
  %1822 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1819, align 8
  %1823 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1802)
  %1824 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1818, ptr %1823, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %1822, i1 false)
  %1825 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1825, i32 0, i32 0
  store ptr @70, ptr %1826, align 8
  %1827 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1825, i32 0, i32 1
  store i64 6, ptr %1827, align 4
  %1828 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1825, align 8
  %1829 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1830 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1829, i32 0, i32 0
  store ptr null, ptr %1830, align 8
  %1831 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1829, i32 0, i32 1
  store i64 0, ptr %1831, align 4
  %1832 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1829, align 8
  %1833 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %1834 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1828, ptr %1833, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %1832, i1 false)
  %1835 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1835, i32 0, i32 0
  store ptr @71, ptr %1836, align 8
  %1837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1835, i32 0, i32 1
  store i64 4, ptr %1837, align 4
  %1838 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1835, align 8
  %1839 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1839, i32 0, i32 0
  store ptr null, ptr %1840, align 8
  %1841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1839, i32 0, i32 1
  store i64 0, ptr %1841, align 4
  %1842 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1839, align 8
  %1843 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1844 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1838, ptr %1843, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %1842, i1 false)
  %1845 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1846 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1845, i32 0, i32 0
  store ptr @72, ptr %1846, align 8
  %1847 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1845, i32 0, i32 1
  store i64 9, ptr %1847, align 4
  %1848 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1845, align 8
  %1849 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1850 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1849, i32 0, i32 0
  store ptr null, ptr %1850, align 8
  %1851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1849, i32 0, i32 1
  store i64 0, ptr %1851, align 4
  %1852 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1849, align 8
  %1853 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  %1854 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1848, ptr %1853, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %1852, i1 false)
  %1855 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1856 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1855, i32 0, i32 0
  store ptr @7, ptr %1856, align 8
  %1857 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1855, i32 0, i32 1
  store i64 4, ptr %1857, align 4
  %1858 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1855, align 8
  %1859 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 280)
  %1860 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1859, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1814, ptr %1860, align 8
  %1861 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1859, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1824, ptr %1861, align 8
  %1862 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1859, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1834, ptr %1862, align 8
  %1863 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1859, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1844, ptr %1863, align 8
  %1864 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1859, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1854, ptr %1864, align 8
  %1865 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1866 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1865, i32 0, i32 0
  store ptr %1859, ptr %1866, align 8
  %1867 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1865, i32 0, i32 1
  store i64 5, ptr %1867, align 4
  %1868 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1865, i32 0, i32 2
  store i64 5, ptr %1868, align 4
  %1869 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1865, align 8
  %1870 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1858, i64 56, %"github.com/goplus/llgo/internal/runtime.Slice" %1869)
  store ptr %1870, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %1871 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br i1 %1792, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %1872 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1873 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1872, i32 0, i32 0
  store ptr @73, ptr %1873, align 8
  %1874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1872, i32 0, i32 1
  store i64 8, ptr %1874, align 4
  %1875 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1872, align 8
  %1876 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1877 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1878 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1877, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1875, ptr %1878, align 8
  %1879 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1877, i32 0, i32 1
  store ptr %1876, ptr %1879, align 8
  %1880 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1877, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", ptr %1880, align 8
  %1881 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1877, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", ptr %1881, align 8
  %1882 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1877, align 8
  %1883 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1883, i32 0, i32 0
  store ptr @40, ptr %1884, align 8
  %1885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1883, i32 0, i32 1
  store i64 8, ptr %1885, align 4
  %1886 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1883, align 8
  %1887 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1888 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1889 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1888, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1886, ptr %1889, align 8
  %1890 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1888, i32 0, i32 1
  store ptr %1887, ptr %1890, align 8
  %1891 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1888, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", ptr %1891, align 8
  %1892 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1888, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", ptr %1892, align 8
  %1893 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1888, align 8
  %1894 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1895 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1894, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1882, ptr %1895, align 8
  %1896 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1894, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1893, ptr %1896, align 8
  %1897 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1897, i32 0, i32 0
  store ptr %1894, ptr %1898, align 8
  %1899 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1897, i32 0, i32 1
  store i64 2, ptr %1899, align 4
  %1900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1897, i32 0, i32 2
  store i64 2, ptr %1900, align 4
  %1901 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1897, align 8
  %1902 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1902, i32 0, i32 0
  store ptr @3, ptr %1903, align 8
  %1904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1902, i32 0, i32 1
  store i64 35, ptr %1904, align 4
  %1905 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1902, align 8
  %1906 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1906, i32 0, i32 0
  store ptr @74, ptr %1907, align 8
  %1908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1906, i32 0, i32 1
  store i64 11, ptr %1908, align 4
  %1909 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1906, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1790, %"github.com/goplus/llgo/internal/runtime.String" %1905, %"github.com/goplus/llgo/internal/runtime.String" %1909, ptr %1871, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1901)
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %1910 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1911 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1911, i32 0, i32 0
  store ptr @68, ptr %1912, align 8
  %1913 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1911, i32 0, i32 1
  store i64 47, ptr %1913, align 4
  %1914 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1911, align 8
  %1915 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1914, i64 25, i64 56, i64 0, i64 2)
  %1916 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1917 = icmp eq ptr %1916, null
  br i1 %1917, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %1918 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1915)
  store ptr %1918, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %1919 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1920 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1920, i32 0, i32 0
  store ptr @1, ptr %1921, align 8
  %1922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1920, i32 0, i32 1
  store i64 40, ptr %1922, align 4
  %1923 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1920, align 8
  %1924 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1923, i64 25, i64 80, i64 0, i64 20)
  %1925 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1925, i32 0, i32 0
  store ptr @68, ptr %1926, align 8
  %1927 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1925, i32 0, i32 1
  store i64 47, ptr %1927, align 4
  %1928 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1925, align 8
  %1929 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1928, i64 25, i64 56, i64 0, i64 2)
  %1930 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1931 = icmp eq ptr %1930, null
  br i1 %1931, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  %1932 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1933 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1932, i32 0, i32 0
  store ptr @21, ptr %1933, align 8
  %1934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1932, i32 0, i32 1
  store i64 4, ptr %1934, align 4
  %1935 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1932, align 8
  %1936 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1937 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1936, i32 0, i32 0
  store ptr null, ptr %1937, align 8
  %1938 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1936, i32 0, i32 1
  store i64 0, ptr %1938, align 4
  %1939 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1936, align 8
  %1940 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1935, ptr %1924, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1939, i1 true)
  %1941 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1941, i32 0, i32 0
  store ptr @44, ptr %1942, align 8
  %1943 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1941, i32 0, i32 1
  store i64 8, ptr %1943, align 4
  %1944 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1941, align 8
  %1945 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1946 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1945, i32 0, i32 0
  store ptr null, ptr %1946, align 8
  %1947 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1945, i32 0, i32 1
  store i64 0, ptr %1947, align 4
  %1948 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1945, align 8
  %1949 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1950 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1944, ptr %1949, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1948, i1 false)
  %1951 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1952 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1951, i32 0, i32 0
  store ptr @75, ptr %1952, align 8
  %1953 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1951, i32 0, i32 1
  store i64 6, ptr %1953, align 4
  %1954 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1951, align 8
  %1955 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1956 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1955, i32 0, i32 0
  store ptr null, ptr %1956, align 8
  %1957 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1955, i32 0, i32 1
  store i64 0, ptr %1957, align 4
  %1958 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1955, align 8
  %1959 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1929)
  %1960 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1954, ptr %1959, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1958, i1 false)
  %1961 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1961, i32 0, i32 0
  store ptr @7, ptr %1962, align 8
  %1963 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1961, i32 0, i32 1
  store i64 4, ptr %1963, align 4
  %1964 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1961, align 8
  %1965 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1966 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1965, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1940, ptr %1966, align 8
  %1967 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1965, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1950, ptr %1967, align 8
  %1968 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1965, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1960, ptr %1968, align 8
  %1969 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1970 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1969, i32 0, i32 0
  store ptr %1965, ptr %1970, align 8
  %1971 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1969, i32 0, i32 1
  store i64 3, ptr %1971, align 4
  %1972 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1969, i32 0, i32 2
  store i64 3, ptr %1972, align 4
  %1973 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1969, align 8
  %1974 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1964, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1973)
  store ptr %1974, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %1975 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1783, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %1976 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, i32 0, i32 0
  store ptr @18, ptr %1977, align 8
  %1978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, i32 0, i32 1
  store i64 5, ptr %1978, align 4
  %1979 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, align 8
  %1980 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1981 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1982 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1979, ptr %1982, align 8
  %1983 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 1
  store ptr %1980, ptr %1983, align 8
  %1984 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1984, align 8
  %1985 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1985, align 8
  %1986 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, align 8
  %1987 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1988 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, i32 0, i32 0
  store ptr @19, ptr %1988, align 8
  %1989 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, i32 0, i32 1
  store i64 9, ptr %1989, align 4
  %1990 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, align 8
  %1991 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1992 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1993 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1990, ptr %1993, align 8
  %1994 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 1
  store ptr %1991, ptr %1994, align 8
  %1995 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1995, align 8
  %1996 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1996, align 8
  %1997 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, align 8
  %1998 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1999 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1998, i32 0, i32 0
  store ptr @25, ptr %1999, align 8
  %2000 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1998, i32 0, i32 1
  store i64 7, ptr %2000, align 4
  %2001 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1998, align 8
  %2002 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %2003 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2004 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2001, ptr %2004, align 8
  %2005 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 1
  store ptr %2002, ptr %2005, align 8
  %2006 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %2006, align 8
  %2007 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %2007, align 8
  %2008 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, align 8
  %2009 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2010 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2009, i32 0, i32 0
  store ptr @27, ptr %2010, align 8
  %2011 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2009, i32 0, i32 1
  store i64 6, ptr %2011, align 4
  %2012 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2009, align 8
  %2013 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2014 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2015 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2012, ptr %2015, align 8
  %2016 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 1
  store ptr %2013, ptr %2016, align 8
  %2017 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %2017, align 8
  %2018 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %2018, align 8
  %2019 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, align 8
  %2020 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2021 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, i32 0, i32 0
  store ptr @22, ptr %2021, align 8
  %2022 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, i32 0, i32 1
  store i64 4, ptr %2022, align 4
  %2023 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, align 8
  %2024 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2025 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2026 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2023, ptr %2026, align 8
  %2027 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 1
  store ptr %2024, ptr %2027, align 8
  %2028 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %2028, align 8
  %2029 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %2029, align 8
  %2030 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, align 8
  %2031 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2032 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2031, i32 0, i32 0
  store ptr @28, ptr %2032, align 8
  %2033 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2031, i32 0, i32 1
  store i64 10, ptr %2033, align 4
  %2034 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2031, align 8
  %2035 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2036 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2037 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2036, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2034, ptr %2037, align 8
  %2038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2036, i32 0, i32 1
  store ptr %2035, ptr %2038, align 8
  %2039 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2036, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %2039, align 8
  %2040 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2036, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %2040, align 8
  %2041 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2036, align 8
  %2042 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2043 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2042, i32 0, i32 0
  store ptr @29, ptr %2043, align 8
  %2044 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2042, i32 0, i32 1
  store i64 8, ptr %2044, align 4
  %2045 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2042, align 8
  %2046 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2047 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2048 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2047, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2045, ptr %2048, align 8
  %2049 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2047, i32 0, i32 1
  store ptr %2046, ptr %2049, align 8
  %2050 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2047, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %2050, align 8
  %2051 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2047, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %2051, align 8
  %2052 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2047, align 8
  %2053 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2054 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2053, i32 0, i32 0
  store ptr @33, ptr %2054, align 8
  %2055 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2053, i32 0, i32 1
  store i64 7, ptr %2055, align 4
  %2056 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2053, align 8
  %2057 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2058 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2059 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2058, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2056, ptr %2059, align 8
  %2060 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2058, i32 0, i32 1
  store ptr %2057, ptr %2060, align 8
  %2061 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2058, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %2061, align 8
  %2062 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2058, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %2062, align 8
  %2063 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2058, align 8
  %2064 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2065 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2064, i32 0, i32 0
  store ptr @34, ptr %2065, align 8
  %2066 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2064, i32 0, i32 1
  store i64 10, ptr %2066, align 4
  %2067 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2064, align 8
  %2068 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2069 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2070 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2069, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2067, ptr %2070, align 8
  %2071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2069, i32 0, i32 1
  store ptr %2068, ptr %2071, align 8
  %2072 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2069, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %2072, align 8
  %2073 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2069, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %2073, align 8
  %2074 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2069, align 8
  %2075 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2076 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2075, i32 0, i32 0
  store ptr @35, ptr %2076, align 8
  %2077 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2075, i32 0, i32 1
  store i64 13, ptr %2077, align 4
  %2078 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2075, align 8
  %2079 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2080 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2081 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2080, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2078, ptr %2081, align 8
  %2082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2080, i32 0, i32 1
  store ptr %2079, ptr %2082, align 8
  %2083 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2080, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %2083, align 8
  %2084 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2080, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %2084, align 8
  %2085 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2080, align 8
  %2086 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2087 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2086, i32 0, i32 0
  store ptr @46, ptr %2087, align 8
  %2088 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2086, i32 0, i32 1
  store i64 13, ptr %2088, align 4
  %2089 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2086, align 8
  %2090 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2091 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2092 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2091, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2089, ptr %2092, align 8
  %2093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2091, i32 0, i32 1
  store ptr %2090, ptr %2093, align 8
  %2094 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2091, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %2094, align 8
  %2095 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2091, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %2095, align 8
  %2096 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2091, align 8
  %2097 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2098 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2097, i32 0, i32 0
  store ptr @47, ptr %2098, align 8
  %2099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2097, i32 0, i32 1
  store i64 3, ptr %2099, align 4
  %2100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2097, align 8
  %2101 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2102 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2103 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2102, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2100, ptr %2103, align 8
  %2104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2102, i32 0, i32 1
  store ptr %2101, ptr %2104, align 8
  %2105 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2102, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %2105, align 8
  %2106 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2102, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %2106, align 8
  %2107 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2102, align 8
  %2108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2108, i32 0, i32 0
  store ptr @48, ptr %2109, align 8
  %2110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2108, i32 0, i32 1
  store i64 4, ptr %2110, align 4
  %2111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2108, align 8
  %2112 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2113 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2113, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2111, ptr %2114, align 8
  %2115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2113, i32 0, i32 1
  store ptr %2112, ptr %2115, align 8
  %2116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2113, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %2116, align 8
  %2117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2113, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %2117, align 8
  %2118 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2113, align 8
  %2119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2119, i32 0, i32 0
  store ptr @24, ptr %2120, align 8
  %2121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2119, i32 0, i32 1
  store i64 3, ptr %2121, align 4
  %2122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2119, align 8
  %2123 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2124 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2124, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2122, ptr %2125, align 8
  %2126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2124, i32 0, i32 1
  store ptr %2123, ptr %2126, align 8
  %2127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2124, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %2127, align 8
  %2128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2124, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %2128, align 8
  %2129 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2124, align 8
  %2130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2130, i32 0, i32 0
  store ptr @51, ptr %2131, align 8
  %2132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2130, i32 0, i32 1
  store i64 7, ptr %2132, align 4
  %2133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2130, align 8
  %2134 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2135 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2135, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2133, ptr %2136, align 8
  %2137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2135, i32 0, i32 1
  store ptr %2134, ptr %2137, align 8
  %2138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2135, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %2138, align 8
  %2139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2135, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %2139, align 8
  %2140 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2135, align 8
  %2141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2141, i32 0, i32 0
  store ptr @63, ptr %2142, align 8
  %2143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2141, i32 0, i32 1
  store i64 8, ptr %2143, align 4
  %2144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2141, align 8
  %2145 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2146 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2146, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2144, ptr %2147, align 8
  %2148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2146, i32 0, i32 1
  store ptr %2145, ptr %2148, align 8
  %2149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2146, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %2149, align 8
  %2150 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2146, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %2150, align 8
  %2151 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2146, align 8
  %2152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2152, i32 0, i32 0
  store ptr @65, ptr %2153, align 8
  %2154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2152, i32 0, i32 1
  store i64 4, ptr %2154, align 4
  %2155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2152, align 8
  %2156 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2157 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2157, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2155, ptr %2158, align 8
  %2159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2157, i32 0, i32 1
  store ptr %2156, ptr %2159, align 8
  %2160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2157, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %2160, align 8
  %2161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2157, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %2161, align 8
  %2162 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2157, align 8
  %2163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2163, i32 0, i32 0
  store ptr @50, ptr %2164, align 8
  %2165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2163, i32 0, i32 1
  store i64 6, ptr %2165, align 4
  %2166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2163, align 8
  %2167 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2168 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2168, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2166, ptr %2169, align 8
  %2170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2168, i32 0, i32 1
  store ptr %2167, ptr %2170, align 8
  %2171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2168, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %2171, align 8
  %2172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2168, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %2172, align 8
  %2173 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2168, align 8
  %2174 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2174, i32 0, i32 0
  store ptr @66, ptr %2175, align 8
  %2176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2174, i32 0, i32 1
  store i64 10, ptr %2176, align 4
  %2177 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2174, align 8
  %2178 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2179 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2179, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2177, ptr %2180, align 8
  %2181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2179, i32 0, i32 1
  store ptr %2178, ptr %2181, align 8
  %2182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2179, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %2182, align 8
  %2183 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2179, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %2183, align 8
  %2184 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2179, align 8
  %2185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2185, i32 0, i32 0
  store ptr @76, ptr %2186, align 8
  %2187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2185, i32 0, i32 1
  store i64 8, ptr %2187, align 4
  %2188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2185, align 8
  %2189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2189, i32 0, i32 0
  store ptr @77, ptr %2190, align 8
  %2191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2189, i32 0, i32 1
  store i64 48, ptr %2191, align 4
  %2192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2189, align 8
  %2193 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2192, i64 25, i64 24, i64 0, i64 2)
  %2194 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %2195 = icmp eq ptr %2194, null
  br i1 %2195, label %_llgo_111, label %_llgo_112

_llgo_110:                                        ; preds = %_llgo_130, %_llgo_108
  %2196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2196, i32 0, i32 0
  store ptr @67, ptr %2197, align 8
  %2198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2196, i32 0, i32 1
  store i64 46, ptr %2198, align 4
  %2199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2196, align 8
  %2200 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2199, i64 25, i64 120, i64 0, i64 20)
  %2201 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %2202 = icmp eq ptr %2201, null
  br i1 %2202, label %_llgo_131, label %_llgo_132

_llgo_111:                                        ; preds = %_llgo_109
  store ptr %2193, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_109
  %2203 = load ptr, ptr @_llgo_string, align 8
  %2204 = load ptr, ptr @_llgo_uint16, align 8
  %2205 = load ptr, ptr @_llgo_uint16, align 8
  %2206 = load ptr, ptr @_llgo_uint32, align 8
  %2207 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %2208 = icmp eq ptr %2207, null
  br i1 %2208, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %2209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2209, i32 0, i32 0
  store ptr @44, ptr %2210, align 8
  %2211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2209, i32 0, i32 1
  store i64 8, ptr %2211, align 4
  %2212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2209, align 8
  %2213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2213, i32 0, i32 0
  store ptr null, ptr %2214, align 8
  %2215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2213, i32 0, i32 1
  store i64 0, ptr %2215, align 4
  %2216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2213, align 8
  %2217 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2218 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2212, ptr %2217, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2216, i1 false)
  %2219 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2219, i32 0, i32 0
  store ptr @78, ptr %2220, align 8
  %2221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2219, i32 0, i32 1
  store i64 6, ptr %2221, align 4
  %2222 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2219, align 8
  %2223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2223, i32 0, i32 0
  store ptr null, ptr %2224, align 8
  %2225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2223, i32 0, i32 1
  store i64 0, ptr %2225, align 4
  %2226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2223, align 8
  %2227 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %2228 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2222, ptr %2227, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %2226, i1 false)
  %2229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2229, i32 0, i32 0
  store ptr @79, ptr %2230, align 8
  %2231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2229, i32 0, i32 1
  store i64 6, ptr %2231, align 4
  %2232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2229, align 8
  %2233 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2233, i32 0, i32 0
  store ptr null, ptr %2234, align 8
  %2235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2233, i32 0, i32 1
  store i64 0, ptr %2235, align 4
  %2236 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2233, align 8
  %2237 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %2238 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2232, ptr %2237, i64 18, %"github.com/goplus/llgo/internal/runtime.String" %2236, i1 false)
  %2239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, i32 0, i32 0
  store ptr @80, ptr %2240, align 8
  %2241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, i32 0, i32 1
  store i64 4, ptr %2241, align 4
  %2242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, align 8
  %2243 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2243, i32 0, i32 0
  store ptr null, ptr %2244, align 8
  %2245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2243, i32 0, i32 1
  store i64 0, ptr %2245, align 4
  %2246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2243, align 8
  %2247 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %2248 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2242, ptr %2247, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %2246, i1 false)
  %2249 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2249, i32 0, i32 0
  store ptr @7, ptr %2250, align 8
  %2251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2249, i32 0, i32 1
  store i64 4, ptr %2251, align 4
  %2252 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2249, align 8
  %2253 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %2254 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2253, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2218, ptr %2254, align 8
  %2255 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2253, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2228, ptr %2255, align 8
  %2256 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2253, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2238, ptr %2256, align 8
  %2257 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2253, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %2248, ptr %2257, align 8
  %2258 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, i32 0, i32 0
  store ptr %2253, ptr %2259, align 8
  %2260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, i32 0, i32 1
  store i64 4, ptr %2260, align 4
  %2261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, i32 0, i32 2
  store i64 4, ptr %2261, align 4
  %2262 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2258, align 8
  %2263 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2252, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %2262)
  store ptr %2263, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %2264 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %2195, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %2265 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2265, i32 0, i32 0
  store ptr @81, ptr %2266, align 8
  %2267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2265, i32 0, i32 1
  store i64 15, ptr %2267, align 4
  %2268 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2265, align 8
  %2269 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2269, i32 0, i32 0
  store ptr @82, ptr %2270, align 8
  %2271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2269, i32 0, i32 1
  store i64 42, ptr %2271, align 4
  %2272 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2269, align 8
  %2273 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2272, i64 25, i64 40, i64 0, i64 3)
  %2274 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %2275 = icmp eq ptr %2274, null
  br i1 %2275, label %_llgo_117, label %_llgo_118

_llgo_116:                                        ; preds = %_llgo_126, %_llgo_114
  %2276 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, i32 0, i32 0
  store ptr @77, ptr %2277, align 8
  %2278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, i32 0, i32 1
  store i64 48, ptr %2278, align 4
  %2279 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, align 8
  %2280 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2279, i64 25, i64 24, i64 0, i64 2)
  %2281 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %2282 = icmp eq ptr %2281, null
  br i1 %2282, label %_llgo_127, label %_llgo_128

_llgo_117:                                        ; preds = %_llgo_115
  store ptr %2273, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_115
  %2283 = load ptr, ptr @_llgo_string, align 8
  %2284 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %2285 = load ptr, ptr @_llgo_Pointer, align 8
  %2286 = load ptr, ptr @_llgo_Pointer, align 8
  %2287 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2287, i32 0, i32 0
  store ptr @30, ptr %2288, align 8
  %2289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2287, i32 0, i32 1
  store i64 44, ptr %2289, align 4
  %2290 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2287, align 8
  %2291 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2290, i64 25, i64 128, i64 0, i64 21)
  %2292 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  %2293 = icmp eq ptr %2292, null
  br i1 %2293, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %2294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, i32 0, i32 0
  store ptr @38, ptr %2295, align 8
  %2296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, i32 0, i32 1
  store i64 5, ptr %2296, align 4
  %2297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, align 8
  %2298 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, i32 0, i32 0
  store ptr null, ptr %2299, align 8
  %2300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, i32 0, i32 1
  store i64 0, ptr %2300, align 4
  %2301 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, align 8
  %2302 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2303 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2297, ptr %2302, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2301, i1 false)
  %2304 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2304, i32 0, i32 0
  store ptr @83, ptr %2305, align 8
  %2306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2304, i32 0, i32 1
  store i64 5, ptr %2306, align 4
  %2307 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2304, align 8
  %2308 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2308, i32 0, i32 0
  store ptr null, ptr %2309, align 8
  %2310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2308, i32 0, i32 1
  store i64 0, ptr %2310, align 4
  %2311 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2308, align 8
  %2312 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2291)
  %2313 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2307, ptr %2312, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %2311, i1 false)
  %2314 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2314, i32 0, i32 0
  store ptr @84, ptr %2315, align 8
  %2316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2314, i32 0, i32 1
  store i64 4, ptr %2316, align 4
  %2317 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2314, align 8
  %2318 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2318, i32 0, i32 0
  store ptr null, ptr %2319, align 8
  %2320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2318, i32 0, i32 1
  store i64 0, ptr %2320, align 4
  %2321 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2318, align 8
  %2322 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %2323 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2317, ptr %2322, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %2321, i1 false)
  %2324 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2324, i32 0, i32 0
  store ptr @85, ptr %2325, align 8
  %2326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2324, i32 0, i32 1
  store i64 4, ptr %2326, align 4
  %2327 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2324, align 8
  %2328 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2328, i32 0, i32 0
  store ptr null, ptr %2329, align 8
  %2330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2328, i32 0, i32 1
  store i64 0, ptr %2330, align 4
  %2331 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2328, align 8
  %2332 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %2333 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2327, ptr %2332, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %2331, i1 false)
  %2334 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2334, i32 0, i32 0
  store ptr @7, ptr %2335, align 8
  %2336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2334, i32 0, i32 1
  store i64 4, ptr %2336, align 4
  %2337 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2334, align 8
  %2338 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %2339 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2338, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2303, ptr %2339, align 8
  %2340 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2338, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2313, ptr %2340, align 8
  %2341 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2338, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2323, ptr %2341, align 8
  %2342 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2338, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %2333, ptr %2342, align 8
  %2343 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2343, i32 0, i32 0
  store ptr %2338, ptr %2344, align 8
  %2345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2343, i32 0, i32 1
  store i64 4, ptr %2345, align 4
  %2346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2343, i32 0, i32 2
  store i64 4, ptr %2346, align 4
  %2347 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2343, align 8
  %2348 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2337, i64 40, %"github.com/goplus/llgo/internal/runtime.Slice" %2347)
  store ptr %2348, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %2349 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br i1 %2275, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  %2350 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2350, i32 0, i32 0
  store ptr @40, ptr %2351, align 8
  %2352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2350, i32 0, i32 1
  store i64 8, ptr %2352, align 4
  %2353 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2350, align 8
  %2354 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2355 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2355, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2353, ptr %2356, align 8
  %2357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2355, i32 0, i32 1
  store ptr %2354, ptr %2357, align 8
  %2358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2355, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", ptr %2358, align 8
  %2359 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2355, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", ptr %2359, align 8
  %2360 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2355, align 8
  %2361 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2361, i32 0, i32 0
  store ptr @41, ptr %2362, align 8
  %2363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2361, i32 0, i32 1
  store i64 4, ptr %2363, align 4
  %2364 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2361, align 8
  %2365 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2366 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2367 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2366, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2364, ptr %2367, align 8
  %2368 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2366, i32 0, i32 1
  store ptr %2365, ptr %2368, align 8
  %2369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2366, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", ptr %2369, align 8
  %2370 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2366, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", ptr %2370, align 8
  %2371 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2366, align 8
  %2372 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2372, i32 0, i32 0
  store ptr @42, ptr %2373, align 8
  %2374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2372, i32 0, i32 1
  store i64 7, ptr %2374, align 4
  %2375 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2372, align 8
  %2376 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2377 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2377, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2375, ptr %2378, align 8
  %2379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2377, i32 0, i32 1
  store ptr %2376, ptr %2379, align 8
  %2380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2377, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", ptr %2380, align 8
  %2381 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2377, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", ptr %2381, align 8
  %2382 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2377, align 8
  %2383 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %2384 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2383, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2360, ptr %2384, align 8
  %2385 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2383, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2371, ptr %2385, align 8
  %2386 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2383, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2382, ptr %2386, align 8
  %2387 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2387, i32 0, i32 0
  store ptr %2383, ptr %2388, align 8
  %2389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2387, i32 0, i32 1
  store i64 3, ptr %2389, align 4
  %2390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2387, i32 0, i32 2
  store i64 3, ptr %2390, align 4
  %2391 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2387, align 8
  %2392 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2392, i32 0, i32 0
  store ptr @3, ptr %2393, align 8
  %2394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2392, i32 0, i32 1
  store i64 35, ptr %2394, align 4
  %2395 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2392, align 8
  %2396 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2396, i32 0, i32 0
  store ptr @86, ptr %2397, align 8
  %2398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2396, i32 0, i32 1
  store i64 6, ptr %2398, align 4
  %2399 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2396, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2273, %"github.com/goplus/llgo/internal/runtime.String" %2395, %"github.com/goplus/llgo/internal/runtime.String" %2399, ptr %2349, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2391)
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %2400 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %2401 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2401, i32 0, i32 0
  store ptr @82, ptr %2402, align 8
  %2403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2401, i32 0, i32 1
  store i64 42, ptr %2403, align 4
  %2404 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2401, align 8
  %2405 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2404, i64 25, i64 40, i64 0, i64 3)
  %2406 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %2407 = icmp eq ptr %2406, null
  br i1 %2407, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %2408 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %2405)
  store ptr %2408, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %2409 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %2410 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2411 = icmp eq ptr %2410, null
  br i1 %2411, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %2412 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2413 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2413, i32 0, i32 0
  store ptr %2412, ptr %2414, align 8
  %2415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2413, i32 0, i32 1
  store i64 0, ptr %2415, align 4
  %2416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2413, i32 0, i32 2
  store i64 0, ptr %2416, align 4
  %2417 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2413, align 8
  %2418 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2419 = getelementptr ptr, ptr %2418, i64 0
  store ptr %2409, ptr %2419, align 8
  %2420 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2420, i32 0, i32 0
  store ptr %2418, ptr %2421, align 8
  %2422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2420, i32 0, i32 1
  store i64 1, ptr %2422, align 4
  %2423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2420, i32 0, i32 2
  store i64 1, ptr %2423, align 4
  %2424 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2420, align 8
  %2425 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2417, %"github.com/goplus/llgo/internal/runtime.Slice" %2424, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2425)
  store ptr %2425, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %2426 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2427 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2428 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2427, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2268, ptr %2428, align 8
  %2429 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2427, i32 0, i32 1
  store ptr %2426, ptr %2429, align 8
  %2430 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2427, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %2430, align 8
  %2431 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2427, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %2431, align 8
  %2432 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2427, align 8
  %2433 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2433, i32 0, i32 0
  store ptr @45, ptr %2434, align 8
  %2435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2433, i32 0, i32 1
  store i64 7, ptr %2435, align 4
  %2436 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2433, align 8
  %2437 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2438 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2439 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2438, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2436, ptr %2439, align 8
  %2440 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2438, i32 0, i32 1
  store ptr %2437, ptr %2440, align 8
  %2441 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2438, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %2441, align 8
  %2442 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2438, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %2442, align 8
  %2443 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2438, align 8
  %2444 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %2445 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2444, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2432, ptr %2445, align 8
  %2446 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2444, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2443, ptr %2446, align 8
  %2447 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2447, i32 0, i32 0
  store ptr %2444, ptr %2448, align 8
  %2449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2447, i32 0, i32 1
  store i64 2, ptr %2449, align 4
  %2450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2447, i32 0, i32 2
  store i64 2, ptr %2450, align 4
  %2451 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2447, align 8
  %2452 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2452, i32 0, i32 0
  store ptr @3, ptr %2453, align 8
  %2454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2452, i32 0, i32 1
  store i64 35, ptr %2454, align 4
  %2455 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2452, align 8
  %2456 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2457 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2456, i32 0, i32 0
  store ptr @87, ptr %2457, align 8
  %2458 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2456, i32 0, i32 1
  store i64 12, ptr %2458, align 4
  %2459 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2456, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2193, %"github.com/goplus/llgo/internal/runtime.String" %2455, %"github.com/goplus/llgo/internal/runtime.String" %2459, ptr %2264, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2451)
  br label %_llgo_116

_llgo_127:                                        ; preds = %_llgo_116
  %2460 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2280)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2460)
  store ptr %2460, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_116
  %2461 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %2462 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2463 = icmp eq ptr %2462, null
  br i1 %2463, label %_llgo_129, label %_llgo_130

_llgo_129:                                        ; preds = %_llgo_128
  %2464 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2465 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2465, i32 0, i32 0
  store ptr %2464, ptr %2466, align 8
  %2467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2465, i32 0, i32 1
  store i64 0, ptr %2467, align 4
  %2468 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2465, i32 0, i32 2
  store i64 0, ptr %2468, align 4
  %2469 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2465, align 8
  %2470 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2471 = getelementptr ptr, ptr %2470, i64 0
  store ptr %2461, ptr %2471, align 8
  %2472 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2472, i32 0, i32 0
  store ptr %2470, ptr %2473, align 8
  %2474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2472, i32 0, i32 1
  store i64 1, ptr %2474, align 4
  %2475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2472, i32 0, i32 2
  store i64 1, ptr %2475, align 4
  %2476 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2472, align 8
  %2477 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2469, %"github.com/goplus/llgo/internal/runtime.Slice" %2476, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2477)
  store ptr %2477, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_128
  %2478 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2479 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2480 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2188, ptr %2480, align 8
  %2481 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 1
  store ptr %2478, ptr %2481, align 8
  %2482 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %2482, align 8
  %2483 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %2483, align 8
  %2484 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, align 8
  %2485 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %2486 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1986, ptr %2486, align 8
  %2487 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1997, ptr %2487, align 8
  %2488 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2008, ptr %2488, align 8
  %2489 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2019, ptr %2489, align 8
  %2490 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2030, ptr %2490, align 8
  %2491 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2041, ptr %2491, align 8
  %2492 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2052, ptr %2492, align 8
  %2493 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2063, ptr %2493, align 8
  %2494 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2074, ptr %2494, align 8
  %2495 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2085, ptr %2495, align 8
  %2496 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2096, ptr %2496, align 8
  %2497 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2107, ptr %2497, align 8
  %2498 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2118, ptr %2498, align 8
  %2499 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2129, ptr %2499, align 8
  %2500 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2140, ptr %2500, align 8
  %2501 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2151, ptr %2501, align 8
  %2502 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2162, ptr %2502, align 8
  %2503 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2173, ptr %2503, align 8
  %2504 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2184, ptr %2504, align 8
  %2505 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2484, ptr %2505, align 8
  %2506 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2506, i32 0, i32 0
  store ptr %2485, ptr %2507, align 8
  %2508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2506, i32 0, i32 1
  store i64 20, ptr %2508, align 4
  %2509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2506, i32 0, i32 2
  store i64 20, ptr %2509, align 4
  %2510 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2506, align 8
  %2511 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2511, i32 0, i32 0
  store ptr @3, ptr %2512, align 8
  %2513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2511, i32 0, i32 1
  store i64 35, ptr %2513, align 4
  %2514 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2511, align 8
  %2515 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2515, i32 0, i32 0
  store ptr @66, ptr %2516, align 8
  %2517 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2515, i32 0, i32 1
  store i64 10, ptr %2517, align 4
  %2518 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2515, align 8
<<<<<<< HEAD
  %2519 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2520 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2521 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2520, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2518, ptr %2521, align 8
  %2522 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2520, i32 0, i32 1
  store ptr %2519, ptr %2522, align 8
  %2523 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2520, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2523, align 8
  %2524 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2520, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2524, align 8
  %2525 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2520, align 8
  %2526 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2526, i32 0, i32 0
  store ptr @47, ptr %2527, align 8
  %2528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2526, i32 0, i32 1
  store i64 6, ptr %2528, align 4
  %2529 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2526, align 8
  %2530 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2531 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2532 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2531, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2529, ptr %2532, align 8
  %2533 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2531, i32 0, i32 1
  store ptr %2530, ptr %2533, align 8
  %2534 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2531, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2534, align 8
  %2535 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2531, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2535, align 8
  %2536 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2531, align 8
  %2537 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2537, i32 0, i32 0
  store ptr @64, ptr %2538, align 8
  %2539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2537, i32 0, i32 1
  store i64 10, ptr %2539, align 4
  %2540 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2537, align 8
  %2541 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2542 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2543 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2542, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2540, ptr %2543, align 8
  %2544 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2542, i32 0, i32 1
  store ptr %2541, ptr %2544, align 8
  %2545 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2542, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2545, align 8
  %2546 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2542, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2546, align 8
  %2547 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2542, align 8
  %2548 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2548, i32 0, i32 0
  store ptr @74, ptr %2549, align 8
  %2550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2548, i32 0, i32 1
  store i64 8, ptr %2550, align 4
  %2551 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2548, align 8
  %2552 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2553 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2554 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2553, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2551, ptr %2554, align 8
  %2555 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2553, i32 0, i32 1
  store ptr %2552, ptr %2555, align 8
  %2556 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2553, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2556, align 8
  %2557 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2553, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2557, align 8
  %2558 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2553, align 8
  %2559 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %2560 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %962, ptr %2560, align 8
  %2561 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %973, ptr %2561, align 8
  %2562 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %984, ptr %2562, align 8
  %2563 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %995, ptr %2563, align 8
  %2564 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1006, ptr %2564, align 8
  %2565 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1017, ptr %2565, align 8
  %2566 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1028, ptr %2566, align 8
  %2567 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1039, ptr %2567, align 8
  %2568 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1050, ptr %2568, align 8
  %2569 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1061, ptr %2569, align 8
  %2570 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1146, ptr %2570, align 8
  %2571 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1157, ptr %2571, align 8
  %2572 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2503, ptr %2572, align 8
  %2573 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2514, ptr %2573, align 8
  %2574 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2525, ptr %2574, align 8
  %2575 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2536, ptr %2575, align 8
  %2576 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2547, ptr %2576, align 8
  %2577 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2559, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2558, ptr %2577, align 8
  %2578 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2579 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2578, i32 0, i32 0
  store ptr %2559, ptr %2579, align 8
  %2580 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2578, i32 0, i32 1
  store i64 18, ptr %2580, align 4
  %2581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2578, i32 0, i32 2
  store i64 18, ptr %2581, align 4
  %2582 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2578, align 8
  %2583 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2583, i32 0, i32 0
  store ptr @3, ptr %2584, align 8
  %2585 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2583, i32 0, i32 1
  store i64 35, ptr %2585, align 4
  %2586 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2583, align 8
>>>>>>> a502fe11 (ssa: fix map key has typeargs)
  %2587 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2587, i32 0, i32 0
  store ptr @33, ptr %2588, align 8
  %2589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2587, i32 0, i32 1
<<<<<<< HEAD
  store i64 10, ptr %2589, align 4
  %2590 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2587, align 8
  %2591 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2592 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2593 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2592, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2590, ptr %2593, align 8
  %2594 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2592, i32 0, i32 1
  store ptr %2591, ptr %2594, align 8
  %2595 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2592, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2595, align 8
  %2596 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2592, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2596, align 8
  %2597 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2592, align 8
  %2598 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2598, i32 0, i32 0
  store ptr @34, ptr %2599, align 8
  %2600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2598, i32 0, i32 1
  store i64 8, ptr %2600, align 4
  %2601 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2598, align 8
  %2602 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2603 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2604 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2603, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2601, ptr %2604, align 8
  %2605 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2603, i32 0, i32 1
  store ptr %2602, ptr %2605, align 8
  %2606 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2603, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2606, align 8
  %2607 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2603, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2607, align 8
  %2608 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2603, align 8
  %2609 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2609, i32 0, i32 0
  store ptr @38, ptr %2610, align 8
  %2611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2609, i32 0, i32 1
  store i64 7, ptr %2611, align 4
  %2612 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2609, align 8
  %2613 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2614 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2615 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2614, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2612, ptr %2615, align 8
  %2616 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2614, i32 0, i32 1
  store ptr %2613, ptr %2616, align 8
  %2617 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2614, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2617, align 8
  %2618 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2614, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2618, align 8
  %2619 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2614, align 8
  %2620 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2621 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2620, i32 0, i32 0
  store ptr @39, ptr %2621, align 8
  %2622 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2620, i32 0, i32 1
  store i64 10, ptr %2622, align 4
  %2623 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2620, align 8
  %2624 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2625 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2625, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2623, ptr %2626, align 8
  %2627 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2625, i32 0, i32 1
  store ptr %2624, ptr %2627, align 8
  %2628 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2625, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2628, align 8
  %2629 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2625, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2629, align 8
  %2630 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2625, align 8
  %2631 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2631, i32 0, i32 0
  store ptr @40, ptr %2632, align 8
  %2633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2631, i32 0, i32 1
  store i64 13, ptr %2633, align 4
  %2634 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2631, align 8
  %2635 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2636 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2637 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2636, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2634, ptr %2637, align 8
  %2638 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2636, i32 0, i32 1
  store ptr %2635, ptr %2638, align 8
  %2639 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2636, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2639, align 8
  %2640 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2636, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2640, align 8
  %2641 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2636, align 8
  %2642 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2642, i32 0, i32 0
  store ptr @45, ptr %2643, align 8
  %2644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2642, i32 0, i32 1
  store i64 13, ptr %2644, align 4
  %2645 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2642, align 8
  %2646 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2647 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2648 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2647, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2645, ptr %2648, align 8
  %2649 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2647, i32 0, i32 1
  store ptr %2646, ptr %2649, align 8
  %2650 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2647, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2650, align 8
  %2651 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2647, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2651, align 8
  %2652 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2647, align 8
  %2653 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2654 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2653, i32 0, i32 0
  store ptr @46, ptr %2654, align 8
  %2655 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2653, i32 0, i32 1
  store i64 3, ptr %2655, align 4
  %2656 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2653, align 8
  %2657 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2658 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2658, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2656, ptr %2659, align 8
  %2660 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2658, i32 0, i32 1
  store ptr %2657, ptr %2660, align 8
  %2661 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2658, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %2661, align 8
  %2662 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2658, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %2662, align 8
  %2663 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2658, align 8
  %2664 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2664, i32 0, i32 0
  store ptr @47, ptr %2665, align 8
  %2666 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2664, i32 0, i32 1
  store i64 4, ptr %2666, align 4
  %2667 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2664, align 8
  %2668 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2669 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2670 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2669, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2667, ptr %2670, align 8
  %2671 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2669, i32 0, i32 1
  store ptr %2668, ptr %2671, align 8
  %2672 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2669, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2672, align 8
  %2673 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2669, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2673, align 8
  %2674 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2669, align 8
  %2675 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2675, i32 0, i32 0
  store ptr @28, ptr %2676, align 8
  %2677 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2675, i32 0, i32 1
  store i64 3, ptr %2677, align 4
  %2678 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2675, align 8
  %2679 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2680 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2681 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2680, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2678, ptr %2681, align 8
  %2682 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2680, i32 0, i32 1
  store ptr %2679, ptr %2682, align 8
  %2683 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2680, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2683, align 8
  %2684 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2680, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2684, align 8
  %2685 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2680, align 8
  %2686 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2686, i32 0, i32 0
  store ptr @50, ptr %2687, align 8
  %2688 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2686, i32 0, i32 1
  store i64 7, ptr %2688, align 4
  %2689 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2686, align 8
  %2690 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2691 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2691, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2689, ptr %2692, align 8
  %2693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2691, i32 0, i32 1
  store ptr %2690, ptr %2693, align 8
  %2694 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2691, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2694, align 8
  %2695 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2691, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2695, align 8
  %2696 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2691, align 8
  %2697 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2698 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2697, i32 0, i32 0
  store ptr @62, ptr %2698, align 8
  %2699 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2697, i32 0, i32 1
  store i64 8, ptr %2699, align 4
  %2700 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2697, align 8
  %2701 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2702 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2703 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2702, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2700, ptr %2703, align 8
  %2704 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2702, i32 0, i32 1
  store ptr %2701, ptr %2704, align 8
  %2705 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2702, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2705, align 8
  %2706 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2702, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2706, align 8
  %2707 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2702, align 8
  %2708 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2709 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2708, i32 0, i32 0
  store ptr @64, ptr %2709, align 8
  %2710 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2708, i32 0, i32 1
  store i64 4, ptr %2710, align 4
  %2711 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2708, align 8
  %2712 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2713 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2713, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2711, ptr %2714, align 8
  %2715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2713, i32 0, i32 1
  store ptr %2712, ptr %2715, align 8
  %2716 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2713, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2716, align 8
  %2717 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2713, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2717, align 8
  %2718 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2713, align 8
  %2719 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2719, i32 0, i32 0
  store ptr @49, ptr %2720, align 8
  %2721 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2719, i32 0, i32 1
  store i64 6, ptr %2721, align 4
  %2722 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2719, align 8
  %2723 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2724 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2724, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2722, ptr %2725, align 8
  %2726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2724, i32 0, i32 1
  store ptr %2723, ptr %2726, align 8
  %2727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2724, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2727, align 8
  %2728 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2724, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2728, align 8
  %2729 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2724, align 8
  %2730 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2730, i32 0, i32 0
  store ptr @65, ptr %2731, align 8
  %2732 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2730, i32 0, i32 1
  store i64 10, ptr %2732, align 4
  %2733 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2730, align 8
  %2734 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2735 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2736 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2735, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2733, ptr %2736, align 8
  %2737 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2735, i32 0, i32 1
  store ptr %2734, ptr %2737, align 8
  %2738 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2735, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2738, align 8
  %2739 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2735, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2739, align 8
  %2740 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2735, align 8
  %2741 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2742 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2741, i32 0, i32 0
  store ptr @69, ptr %2742, align 8
  %2743 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2741, i32 0, i32 1
  store i64 8, ptr %2743, align 4
  %2744 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2741, align 8
  %2745 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2746 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2747 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2746, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2744, ptr %2747, align 8
  %2748 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2746, i32 0, i32 1
  store ptr %2745, ptr %2748, align 8
  %2749 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2746, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2749, align 8
  %2750 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2746, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2750, align 8
  %2751 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2746, align 8
  %2752 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %2753 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %324, ptr %2753, align 8
  %2754 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2553, ptr %2754, align 8
  %2755 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2564, ptr %2755, align 8
  %2756 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2575, ptr %2756, align 8
  %2757 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2586, ptr %2757, align 8
  %2758 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2597, ptr %2758, align 8
  %2759 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2608, ptr %2759, align 8
  %2760 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2619, ptr %2760, align 8
  %2761 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2630, ptr %2761, align 8
  %2762 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2641, ptr %2762, align 8
  %2763 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2652, ptr %2763, align 8
  %2764 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2663, ptr %2764, align 8
  %2765 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2674, ptr %2765, align 8
  %2766 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2685, ptr %2766, align 8
  %2767 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2696, ptr %2767, align 8
  %2768 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2707, ptr %2768, align 8
  %2769 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2718, ptr %2769, align 8
  %2770 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2729, ptr %2770, align 8
  %2771 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2740, ptr %2771, align 8
  %2772 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2752, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2751, ptr %2772, align 8
  %2773 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2773, i32 0, i32 0
  store ptr %2752, ptr %2774, align 8
  %2775 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2773, i32 0, i32 1
  store i64 20, ptr %2775, align 4
  %2776 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2773, i32 0, i32 2
  store i64 20, ptr %2776, align 4
  %2777 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2773, align 8
  %2778 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2778, i32 0, i32 0
  store ptr @31, ptr %2779, align 8
  %2780 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2778, i32 0, i32 1
  store i64 35, ptr %2780, align 4
  %2781 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2778, align 8
  %2782 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2783 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2782, i32 0, i32 0
  store ptr @25, ptr %2783, align 8
  %2784 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2782, i32 0, i32 1
  store i64 4, ptr %2784, align 4
  %2785 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2782, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %90, %"github.com/goplus/llgo/internal/runtime.String" %2781, %"github.com/goplus/llgo/internal/runtime.String" %2785, ptr %293, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2777)
>>>>>>> 3be2e102 (ssa: fix map key has typeargs)
  br label %_llgo_12
=======
  store i64 13, ptr %2589, align 4
  %2590 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2587, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %756, %"github.com/goplus/llgo/internal/runtime.String" %2586, %"github.com/goplus/llgo/internal/runtime.String" %2590, ptr %951, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2582)
  br label %_llgo_72
=======
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1781, %"github.com/goplus/llgo/internal/runtime.String" %2514, %"github.com/goplus/llgo/internal/runtime.String" %2518, ptr %1975, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2510)
  br label %_llgo_110
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)

_llgo_131:                                        ; preds = %_llgo_110
  %2519 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2200)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2519)
  store ptr %2519, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_110
  %2520 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %2521 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2522 = icmp eq ptr %2521, null
  br i1 %2522, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  %2523 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2524 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2524, i32 0, i32 0
  store ptr %2523, ptr %2525, align 8
  %2526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2524, i32 0, i32 1
  store i64 0, ptr %2526, align 4
  %2527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2524, i32 0, i32 2
  store i64 0, ptr %2527, align 4
  %2528 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2524, align 8
  %2529 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2530 = getelementptr ptr, ptr %2529, i64 0
  store ptr %2520, ptr %2530, align 8
  %2531 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2531, i32 0, i32 0
  store ptr %2529, ptr %2532, align 8
  %2533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2531, i32 0, i32 1
  store i64 1, ptr %2533, align 4
  %2534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2531, i32 0, i32 2
  store i64 1, ptr %2534, align 4
  %2535 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2531, align 8
  %2536 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2528, %"github.com/goplus/llgo/internal/runtime.Slice" %2535, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2536)
  store ptr %2536, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_132
  %2537 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2538 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2539 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2538, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1776, ptr %2539, align 8
  %2540 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2538, i32 0, i32 1
  store ptr %2537, ptr %2540, align 8
  %2541 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2538, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %2541, align 8
  %2542 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2538, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %2542, align 8
  %2543 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2538, align 8
  %2544 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2545 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2544, i32 0, i32 0
  store ptr @76, ptr %2545, align 8
  %2546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2544, i32 0, i32 1
  store i64 8, ptr %2546, align 4
  %2547 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2544, align 8
  %2548 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2549 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2550 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2549, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2547, ptr %2550, align 8
  %2551 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2549, i32 0, i32 1
  store ptr %2548, ptr %2551, align 8
  %2552 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2549, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2552, align 8
  %2553 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2549, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2553, align 8
  %2554 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2549, align 8
  %2555 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %2556 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1528, ptr %2556, align 8
  %2557 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1539, ptr %2557, align 8
  %2558 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1550, ptr %2558, align 8
  %2559 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1561, ptr %2559, align 8
  %2560 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1572, ptr %2560, align 8
  %2561 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1583, ptr %2561, align 8
  %2562 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1594, ptr %2562, align 8
  %2563 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1605, ptr %2563, align 8
  %2564 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1616, ptr %2564, align 8
  %2565 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1627, ptr %2565, align 8
  %2566 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1638, ptr %2566, align 8
  %2567 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1649, ptr %2567, align 8
  %2568 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1660, ptr %2568, align 8
  %2569 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1671, ptr %2569, align 8
  %2570 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1682, ptr %2570, align 8
  %2571 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1693, ptr %2571, align 8
  %2572 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1704, ptr %2572, align 8
  %2573 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1715, ptr %2573, align 8
  %2574 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1726, ptr %2574, align 8
  %2575 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1761, ptr %2575, align 8
  %2576 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1772, ptr %2576, align 8
  %2577 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2543, ptr %2577, align 8
  %2578 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2555, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %2554, ptr %2578, align 8
  %2579 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2580 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2579, i32 0, i32 0
  store ptr %2555, ptr %2580, align 8
  %2581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2579, i32 0, i32 1
  store i64 23, ptr %2581, align 4
  %2582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2579, i32 0, i32 2
  store i64 23, ptr %2582, align 4
  %2583 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2579, align 8
  %2584 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2585 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2584, i32 0, i32 0
  store ptr @3, ptr %2585, align 8
  %2586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2584, i32 0, i32 1
  store i64 35, ptr %2586, align 4
  %2587 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2584, align 8
  %2588 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2588, i32 0, i32 0
  store ptr @51, ptr %2589, align 8
  %2590 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2588, i32 0, i32 1
  store i64 7, ptr %2590, align 4
  %2591 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2588, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1243, %"github.com/goplus/llgo/internal/runtime.String" %2587, %"github.com/goplus/llgo/internal/runtime.String" %2591, ptr %1517, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2583)
  br label %_llgo_94

_llgo_135:                                        ; preds = %_llgo_94
  %2592 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1738)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2592)
  store ptr %2592, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_94
  %2593 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2594 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2595 = icmp eq ptr %2594, null
  br i1 %2595, label %_llgo_137, label %_llgo_138

_llgo_137:                                        ; preds = %_llgo_136
  %2596 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2597 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, i32 0, i32 0
  store ptr %2596, ptr %2598, align 8
  %2599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, i32 0, i32 1
  store i64 0, ptr %2599, align 4
  %2600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, i32 0, i32 2
  store i64 0, ptr %2600, align 4
  %2601 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, align 8
  %2602 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2603 = getelementptr ptr, ptr %2602, i64 0
  store ptr %2593, ptr %2603, align 8
  %2604 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2605 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2604, i32 0, i32 0
  store ptr %2602, ptr %2605, align 8
  %2606 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2604, i32 0, i32 1
  store i64 1, ptr %2606, align 4
  %2607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2604, i32 0, i32 2
  store i64 1, ptr %2607, align 4
  %2608 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2604, align 8
  %2609 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2601, %"github.com/goplus/llgo/internal/runtime.Slice" %2608, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2609)
  store ptr %2609, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_136
  %2610 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2611 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2612 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2611, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1238, ptr %2612, align 8
  %2613 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2611, i32 0, i32 1
  store ptr %2610, ptr %2613, align 8
  %2614 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2611, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2614, align 8
  %2615 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2611, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2615, align 8
  %2616 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2611, align 8
  %2617 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2617, i32 0, i32 0
  store ptr @63, ptr %2618, align 8
  %2619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2617, i32 0, i32 1
  store i64 8, ptr %2619, align 4
  %2620 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2617, align 8
  %2621 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2622 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2622, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2620, ptr %2623, align 8
  %2624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2622, i32 0, i32 1
  store ptr %2621, ptr %2624, align 8
  %2625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2622, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2625, align 8
  %2626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2622, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2626, align 8
  %2627 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2622, align 8
  %2628 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2628, i32 0, i32 0
  store ptr @65, ptr %2629, align 8
  %2630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2628, i32 0, i32 1
  store i64 4, ptr %2630, align 4
  %2631 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2628, align 8
  %2632 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2633 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2634 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2633, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2631, ptr %2634, align 8
  %2635 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2633, i32 0, i32 1
  store ptr %2632, ptr %2635, align 8
  %2636 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2633, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2636, align 8
  %2637 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2633, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2637, align 8
  %2638 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2633, align 8
  %2639 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2639, i32 0, i32 0
  store ptr @50, ptr %2640, align 8
  %2641 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2639, i32 0, i32 1
  store i64 6, ptr %2641, align 4
  %2642 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2639, align 8
  %2643 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2644 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2645 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2644, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2642, ptr %2645, align 8
  %2646 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2644, i32 0, i32 1
  store ptr %2643, ptr %2646, align 8
  %2647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2644, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2647, align 8
  %2648 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2644, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2648, align 8
  %2649 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2644, align 8
  %2650 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2650, i32 0, i32 0
  store ptr @66, ptr %2651, align 8
  %2652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2650, i32 0, i32 1
  store i64 10, ptr %2652, align 4
  %2653 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2650, align 8
  %2654 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2655 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2655, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2653, ptr %2656, align 8
  %2657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2655, i32 0, i32 1
  store ptr %2654, ptr %2657, align 8
  %2658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2655, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2658, align 8
  %2659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2655, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2659, align 8
  %2660 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2655, align 8
  %2661 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2661, i32 0, i32 0
  store ptr @76, ptr %2662, align 8
  %2663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2661, i32 0, i32 1
  store i64 8, ptr %2663, align 4
  %2664 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2661, align 8
  %2665 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2666 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2667 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2666, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2664, ptr %2667, align 8
  %2668 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2666, i32 0, i32 1
  store ptr %2665, ptr %2668, align 8
  %2669 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2666, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2669, align 8
  %2670 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2666, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2670, align 8
  %2671 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2666, align 8
  %2672 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %2673 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1017, ptr %2673, align 8
  %2674 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1028, ptr %2674, align 8
  %2675 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1039, ptr %2675, align 8
  %2676 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1050, ptr %2676, align 8
  %2677 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1061, ptr %2677, align 8
  %2678 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1072, ptr %2678, align 8
  %2679 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1083, ptr %2679, align 8
  %2680 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1094, ptr %2680, align 8
  %2681 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1105, ptr %2681, align 8
  %2682 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1116, ptr %2682, align 8
  %2683 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1127, ptr %2683, align 8
  %2684 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1138, ptr %2684, align 8
  %2685 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1223, ptr %2685, align 8
  %2686 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1234, ptr %2686, align 8
  %2687 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2616, ptr %2687, align 8
  %2688 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2627, ptr %2688, align 8
  %2689 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2638, ptr %2689, align 8
  %2690 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2649, ptr %2690, align 8
  %2691 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2660, ptr %2691, align 8
  %2692 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2672, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2671, ptr %2692, align 8
  %2693 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2694 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2693, i32 0, i32 0
  store ptr %2672, ptr %2694, align 8
  %2695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2693, i32 0, i32 1
  store i64 20, ptr %2695, align 4
  %2696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2693, i32 0, i32 2
  store i64 20, ptr %2696, align 4
  %2697 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2693, align 8
  %2698 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2699 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2698, i32 0, i32 0
  store ptr @3, ptr %2699, align 8
  %2700 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2698, i32 0, i32 1
  store i64 35, ptr %2700, align 4
  %2701 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2698, align 8
  %2702 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2703 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2702, i32 0, i32 0
  store ptr @35, ptr %2703, align 8
  %2704 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2702, i32 0, i32 1
  store i64 13, ptr %2704, align 4
  %2705 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2702, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %811, %"github.com/goplus/llgo/internal/runtime.String" %2701, %"github.com/goplus/llgo/internal/runtime.String" %2705, ptr %1006, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2697)
  br label %_llgo_78

_llgo_139:                                        ; preds = %_llgo_78
  %2706 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1154)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2706)
  store ptr %2706, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_140

_llgo_140:                                        ; preds = %_llgo_139, %_llgo_78
  %2707 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %2708 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2709 = icmp eq ptr %2708, null
  br i1 %2709, label %_llgo_141, label %_llgo_142

_llgo_141:                                        ; preds = %_llgo_140
  %2710 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2711 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2712 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2711, i32 0, i32 0
  store ptr %2710, ptr %2712, align 8
  %2713 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2711, i32 0, i32 1
  store i64 0, ptr %2713, align 4
  %2714 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2711, i32 0, i32 2
  store i64 0, ptr %2714, align 4
  %2715 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2711, align 8
  %2716 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2717 = getelementptr ptr, ptr %2716, i64 0
  store ptr %2707, ptr %2717, align 8
  %2718 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2718, i32 0, i32 0
  store ptr %2716, ptr %2719, align 8
  %2720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2718, i32 0, i32 1
  store i64 1, ptr %2720, align 4
  %2721 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2718, i32 0, i32 2
  store i64 1, ptr %2721, align 4
  %2722 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2718, align 8
  %2723 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2715, %"github.com/goplus/llgo/internal/runtime.Slice" %2722, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2723)
  store ptr %2723, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_142

_llgo_142:                                        ; preds = %_llgo_141, %_llgo_140
  %2724 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2725 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2725, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %806, ptr %2726, align 8
  %2727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2725, i32 0, i32 1
  store ptr %2724, ptr %2727, align 8
  %2728 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2725, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2728, align 8
  %2729 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2725, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2729, align 8
  %2730 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2725, align 8
  %2731 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2732 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2731, i32 0, i32 0
  store ptr @46, ptr %2732, align 8
  %2733 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2731, i32 0, i32 1
  store i64 13, ptr %2733, align 4
  %2734 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2731, align 8
  %2735 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2736 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2737 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2736, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2734, ptr %2737, align 8
  %2738 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2736, i32 0, i32 1
  store ptr %2735, ptr %2738, align 8
  %2739 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2736, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2739, align 8
  %2740 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2736, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2740, align 8
  %2741 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2736, align 8
  %2742 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2743 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2742, i32 0, i32 0
  store ptr @47, ptr %2743, align 8
  %2744 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2742, i32 0, i32 1
  store i64 3, ptr %2744, align 4
  %2745 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2742, align 8
  %2746 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2747 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2748 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2747, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2745, ptr %2748, align 8
  %2749 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2747, i32 0, i32 1
  store ptr %2746, ptr %2749, align 8
  %2750 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2747, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2750, align 8
  %2751 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2747, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2751, align 8
  %2752 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2747, align 8
  %2753 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2754 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2753, i32 0, i32 0
  store ptr @48, ptr %2754, align 8
  %2755 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2753, i32 0, i32 1
  store i64 4, ptr %2755, align 4
  %2756 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2753, align 8
  %2757 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2758 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2758, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2756, ptr %2759, align 8
  %2760 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2758, i32 0, i32 1
  store ptr %2757, ptr %2760, align 8
  %2761 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2758, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2761, align 8
  %2762 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2758, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2762, align 8
  %2763 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2758, align 8
  %2764 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2765 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2764, i32 0, i32 0
  store ptr @24, ptr %2765, align 8
  %2766 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2764, i32 0, i32 1
  store i64 3, ptr %2766, align 4
  %2767 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2764, align 8
  %2768 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2769 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2770 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2769, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2767, ptr %2770, align 8
  %2771 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2769, i32 0, i32 1
  store ptr %2768, ptr %2771, align 8
  %2772 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2769, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2772, align 8
  %2773 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2769, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2773, align 8
  %2774 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2769, align 8
  %2775 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2776 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2775, i32 0, i32 0
  store ptr @51, ptr %2776, align 8
  %2777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2775, i32 0, i32 1
  store i64 7, ptr %2777, align 4
  %2778 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2775, align 8
  %2779 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2780 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2781 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2780, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2778, ptr %2781, align 8
  %2782 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2780, i32 0, i32 1
  store ptr %2779, ptr %2782, align 8
  %2783 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2780, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2783, align 8
  %2784 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2780, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2784, align 8
  %2785 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2780, align 8
  %2786 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2787 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2786, i32 0, i32 0
  store ptr @63, ptr %2787, align 8
  %2788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2786, i32 0, i32 1
  store i64 8, ptr %2788, align 4
  %2789 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2786, align 8
  %2790 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2791 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2792 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2791, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2789, ptr %2792, align 8
  %2793 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2791, i32 0, i32 1
  store ptr %2790, ptr %2793, align 8
  %2794 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2791, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2794, align 8
  %2795 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2791, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2795, align 8
  %2796 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2791, align 8
  %2797 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2798 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2797, i32 0, i32 0
  store ptr @65, ptr %2798, align 8
  %2799 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2797, i32 0, i32 1
  store i64 4, ptr %2799, align 4
  %2800 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2797, align 8
  %2801 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2802 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2803 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2802, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2800, ptr %2803, align 8
  %2804 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2802, i32 0, i32 1
  store ptr %2801, ptr %2804, align 8
  %2805 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2802, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2805, align 8
  %2806 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2802, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2806, align 8
  %2807 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2802, align 8
  %2808 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2808, i32 0, i32 0
  store ptr @50, ptr %2809, align 8
  %2810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2808, i32 0, i32 1
  store i64 6, ptr %2810, align 4
  %2811 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2808, align 8
  %2812 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2813 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2814 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2813, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2811, ptr %2814, align 8
  %2815 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2813, i32 0, i32 1
  store ptr %2812, ptr %2815, align 8
  %2816 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2813, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2816, align 8
  %2817 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2813, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2817, align 8
  %2818 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2813, align 8
  %2819 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2819, i32 0, i32 0
  store ptr @66, ptr %2820, align 8
  %2821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2819, i32 0, i32 1
  store i64 10, ptr %2821, align 4
  %2822 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2819, align 8
  %2823 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2824 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2825 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2824, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2822, ptr %2825, align 8
  %2826 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2824, i32 0, i32 1
  store ptr %2823, ptr %2826, align 8
  %2827 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2824, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2827, align 8
  %2828 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2824, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2828, align 8
  %2829 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2824, align 8
  %2830 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2831 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2830, i32 0, i32 0
  store ptr @76, ptr %2831, align 8
  %2832 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2830, i32 0, i32 1
  store i64 8, ptr %2832, align 4
  %2833 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2830, align 8
  %2834 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2835 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2836 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2835, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2833, ptr %2836, align 8
  %2837 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2835, i32 0, i32 1
  store ptr %2834, ptr %2837, align 8
  %2838 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2835, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2838, align 8
  %2839 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2835, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2839, align 8
  %2840 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2835, align 8
  %2841 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2841, i32 0, i32 0
  store ptr @88, ptr %2842, align 8
  %2843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2841, i32 0, i32 1
  store i64 8, ptr %2843, align 4
  %2844 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2841, align 8
  %2845 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2846 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2847 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2846, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2844, ptr %2847, align 8
  %2848 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2846, i32 0, i32 1
  store ptr %2845, ptr %2848, align 8
  %2849 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2846, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2849, align 8
  %2850 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2846, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2850, align 8
  %2851 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2846, align 8
  %2852 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 840)
  %2853 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %694, ptr %2853, align 8
  %2854 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %705, ptr %2854, align 8
  %2855 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %716, ptr %2855, align 8
  %2856 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %727, ptr %2856, align 8
  %2857 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %738, ptr %2857, align 8
  %2858 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %749, ptr %2858, align 8
  %2859 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %760, ptr %2859, align 8
  %2860 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %791, ptr %2860, align 8
  %2861 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %802, ptr %2861, align 8
  %2862 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2730, ptr %2862, align 8
  %2863 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2741, ptr %2863, align 8
  %2864 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2752, ptr %2864, align 8
  %2865 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2763, ptr %2865, align 8
  %2866 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2774, ptr %2866, align 8
  %2867 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2785, ptr %2867, align 8
  %2868 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2796, ptr %2868, align 8
  %2869 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2807, ptr %2869, align 8
  %2870 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2818, ptr %2870, align 8
  %2871 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2829, ptr %2871, align 8
  %2872 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2840, ptr %2872, align 8
  %2873 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2852, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2851, ptr %2873, align 8
  %2874 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2874, i32 0, i32 0
  store ptr %2852, ptr %2875, align 8
  %2876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2874, i32 0, i32 1
  store i64 21, ptr %2876, align 4
  %2877 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2874, i32 0, i32 2
  store i64 21, ptr %2877, align 4
  %2878 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2874, align 8
  %2879 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2880 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2879, i32 0, i32 0
  store ptr @3, ptr %2880, align 8
  %2881 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2879, i32 0, i32 1
  store i64 35, ptr %2881, align 4
  %2882 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2879, align 8
  %2883 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2883, i32 0, i32 0
  store ptr @29, ptr %2884, align 8
  %2885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2883, i32 0, i32 1
  store i64 8, ptr %2885, align 4
  %2886 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2883, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %604, %"github.com/goplus/llgo/internal/runtime.String" %2882, %"github.com/goplus/llgo/internal/runtime.String" %2886, ptr %683, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2878)
  br label %_llgo_58

_llgo_143:                                        ; preds = %_llgo_58
  %2887 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2888 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2888, i32 0, i32 0
  store ptr %2887, ptr %2889, align 8
  %2890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2888, i32 0, i32 1
  store i64 0, ptr %2890, align 4
  %2891 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2888, i32 0, i32 2
  store i64 0, ptr %2891, align 4
  %2892 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2888, align 8
  %2893 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2894 = getelementptr ptr, ptr %2893, i64 0
  store ptr %768, ptr %2894, align 8
  %2895 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2895, i32 0, i32 0
  store ptr %2893, ptr %2896, align 8
  %2897 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2895, i32 0, i32 1
  store i64 1, ptr %2897, align 4
  %2898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2895, i32 0, i32 2
  store i64 1, ptr %2898, align 4
  %2899 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2895, align 8
  %2900 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2892, %"github.com/goplus/llgo/internal/runtime.Slice" %2899, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2900)
  store ptr %2900, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143, %_llgo_58
  %2901 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2902 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2903 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2902, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %599, ptr %2903, align 8
  %2904 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2902, i32 0, i32 1
  store ptr %2901, ptr %2904, align 8
  %2905 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2902, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2905, align 8
  %2906 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2902, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2906, align 8
  %2907 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2902, align 8
  %2908 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2908, i32 0, i32 0
  store ptr @33, ptr %2909, align 8
  %2910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2908, i32 0, i32 1
  store i64 7, ptr %2910, align 4
  %2911 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2908, align 8
  %2912 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2913 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2914 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2913, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2911, ptr %2914, align 8
  %2915 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2913, i32 0, i32 1
  store ptr %2912, ptr %2915, align 8
  %2916 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2913, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2916, align 8
  %2917 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2913, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2917, align 8
  %2918 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2913, align 8
  %2919 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2920 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2919, i32 0, i32 0
  store ptr @34, ptr %2920, align 8
  %2921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2919, i32 0, i32 1
  store i64 10, ptr %2921, align 4
  %2922 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2919, align 8
  %2923 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2924 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2925 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2924, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2922, ptr %2925, align 8
  %2926 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2924, i32 0, i32 1
  store ptr %2923, ptr %2926, align 8
  %2927 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2924, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2927, align 8
  %2928 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2924, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2928, align 8
  %2929 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2924, align 8
  %2930 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2931 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2930, i32 0, i32 0
  store ptr @35, ptr %2931, align 8
  %2932 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2930, i32 0, i32 1
  store i64 13, ptr %2932, align 4
  %2933 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2930, align 8
  %2934 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2935 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2936 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2935, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2933, ptr %2936, align 8
  %2937 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2935, i32 0, i32 1
  store ptr %2934, ptr %2937, align 8
  %2938 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2935, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2938, align 8
  %2939 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2935, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2939, align 8
  %2940 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2935, align 8
  %2941 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2941, i32 0, i32 0
  store ptr @46, ptr %2942, align 8
  %2943 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2941, i32 0, i32 1
  store i64 13, ptr %2943, align 4
  %2944 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2941, align 8
  %2945 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2946 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2947 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2946, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2944, ptr %2947, align 8
  %2948 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2946, i32 0, i32 1
  store ptr %2945, ptr %2948, align 8
  %2949 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2946, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2949, align 8
  %2950 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2946, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2950, align 8
  %2951 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2946, align 8
  %2952 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2953 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2952, i32 0, i32 0
  store ptr @47, ptr %2953, align 8
  %2954 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2952, i32 0, i32 1
  store i64 3, ptr %2954, align 4
  %2955 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2952, align 8
  %2956 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2957 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2958 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2957, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2955, ptr %2958, align 8
  %2959 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2957, i32 0, i32 1
  store ptr %2956, ptr %2959, align 8
  %2960 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2957, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %2960, align 8
  %2961 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2957, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %2961, align 8
  %2962 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2957, align 8
  %2963 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2964 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2963, i32 0, i32 0
  store ptr @48, ptr %2964, align 8
  %2965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2963, i32 0, i32 1
  store i64 4, ptr %2965, align 4
  %2966 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2963, align 8
  %2967 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2968 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2969 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2968, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2966, ptr %2969, align 8
  %2970 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2968, i32 0, i32 1
  store ptr %2967, ptr %2970, align 8
  %2971 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2968, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2971, align 8
  %2972 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2968, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2972, align 8
  %2973 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2968, align 8
  %2974 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2975 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2974, i32 0, i32 0
  store ptr @51, ptr %2975, align 8
  %2976 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2974, i32 0, i32 1
  store i64 7, ptr %2976, align 4
  %2977 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2974, align 8
  %2978 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2979 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2980 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2979, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2977, ptr %2980, align 8
  %2981 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2979, i32 0, i32 1
  store ptr %2978, ptr %2981, align 8
  %2982 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2979, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2982, align 8
  %2983 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2979, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2983, align 8
  %2984 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2979, align 8
  %2985 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2986 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2985, i32 0, i32 0
  store ptr @63, ptr %2986, align 8
  %2987 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2985, i32 0, i32 1
  store i64 8, ptr %2987, align 4
  %2988 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2985, align 8
  %2989 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2990 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2991 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2990, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2988, ptr %2991, align 8
  %2992 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2990, i32 0, i32 1
  store ptr %2989, ptr %2992, align 8
  %2993 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2990, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2993, align 8
  %2994 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2990, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2994, align 8
  %2995 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2990, align 8
  %2996 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2996, i32 0, i32 0
  store ptr @65, ptr %2997, align 8
  %2998 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2996, i32 0, i32 1
  store i64 4, ptr %2998, align 4
  %2999 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2996, align 8
  %3000 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %3001 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3002 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2999, ptr %3002, align 8
  %3003 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 1
  store ptr %3000, ptr %3003, align 8
  %3004 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %3004, align 8
  %3005 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %3005, align 8
  %3006 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, align 8
  %3007 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3008 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3007, i32 0, i32 0
  store ptr @50, ptr %3008, align 8
  %3009 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3007, i32 0, i32 1
  store i64 6, ptr %3009, align 4
  %3010 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3007, align 8
  %3011 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %3012 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3013 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3012, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3010, ptr %3013, align 8
  %3014 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3012, i32 0, i32 1
  store ptr %3011, ptr %3014, align 8
  %3015 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3012, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %3015, align 8
  %3016 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3012, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %3016, align 8
  %3017 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3012, align 8
  %3018 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3019 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3018, i32 0, i32 0
  store ptr @66, ptr %3019, align 8
  %3020 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3018, i32 0, i32 1
  store i64 10, ptr %3020, align 4
  %3021 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3018, align 8
  %3022 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %3023 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3024 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3023, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3021, ptr %3024, align 8
  %3025 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3023, i32 0, i32 1
  store ptr %3022, ptr %3025, align 8
  %3026 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3023, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %3026, align 8
  %3027 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3023, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %3027, align 8
  %3028 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3023, align 8
  %3029 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3030 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3029, i32 0, i32 0
  store ptr @76, ptr %3030, align 8
  %3031 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3029, i32 0, i32 1
  store i64 8, ptr %3031, align 4
  %3032 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3029, align 8
  %3033 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %3034 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3035 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3034, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3032, ptr %3035, align 8
  %3036 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3034, i32 0, i32 1
  store ptr %3033, ptr %3036, align 8
  %3037 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3034, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %3037, align 8
  %3038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3034, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %3038, align 8
  %3039 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3034, align 8
  %3040 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %3041 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %494, ptr %3041, align 8
  %3042 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %505, ptr %3042, align 8
  %3043 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %556, ptr %3043, align 8
  %3044 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %584, ptr %3044, align 8
  %3045 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %595, ptr %3045, align 8
  %3046 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2907, ptr %3046, align 8
  %3047 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2918, ptr %3047, align 8
  %3048 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2929, ptr %3048, align 8
  %3049 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2940, ptr %3049, align 8
  %3050 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2951, ptr %3050, align 8
  %3051 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2962, ptr %3051, align 8
  %3052 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2973, ptr %3052, align 8
  %3053 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2984, ptr %3053, align 8
  %3054 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2995, ptr %3054, align 8
  %3055 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %3006, ptr %3055, align 8
  %3056 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %3017, ptr %3056, align 8
  %3057 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %3028, ptr %3057, align 8
  %3058 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3040, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %3039, ptr %3058, align 8
  %3059 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3060 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3059, i32 0, i32 0
  store ptr %3040, ptr %3060, align 8
  %3061 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3059, i32 0, i32 1
  store i64 18, ptr %3061, align 4
  %3062 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3059, i32 0, i32 2
  store i64 18, ptr %3062, align 4
  %3063 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3059, align 8
  %3064 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3065 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3064, i32 0, i32 0
  store ptr @3, ptr %3065, align 8
  %3066 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3064, i32 0, i32 1
  store i64 35, ptr %3066, align 4
  %3067 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3064, align 8
  %3068 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3069 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3068, i32 0, i32 0
  store ptr @19, ptr %3069, align 8
  %3070 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3068, i32 0, i32 1
  store i64 9, ptr %3070, align 4
  %3071 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3068, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %405, %"github.com/goplus/llgo/internal/runtime.String" %3067, %"github.com/goplus/llgo/internal/runtime.String" %3071, ptr %483, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3063)
  br label %_llgo_42

_llgo_145:                                        ; preds = %_llgo_42
  %3072 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %521)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3072)
  store ptr %3072, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_146

_llgo_146:                                        ; preds = %_llgo_145, %_llgo_42
  %3073 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %3074 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %3075 = icmp eq ptr %3074, null
  br i1 %3075, label %_llgo_147, label %_llgo_148

_llgo_147:                                        ; preds = %_llgo_146
  %3076 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %3077 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3078 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3077, i32 0, i32 0
  store ptr %3076, ptr %3078, align 8
  %3079 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3077, i32 0, i32 1
  store i64 0, ptr %3079, align 4
  %3080 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3077, i32 0, i32 2
  store i64 0, ptr %3080, align 4
  %3081 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3077, align 8
  %3082 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %3083 = getelementptr ptr, ptr %3082, i64 0
  store ptr %3073, ptr %3083, align 8
  %3084 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3085 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3084, i32 0, i32 0
  store ptr %3082, ptr %3085, align 8
  %3086 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3084, i32 0, i32 1
  store i64 1, ptr %3086, align 4
  %3087 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3084, i32 0, i32 2
  store i64 1, ptr %3087, align 4
  %3088 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3084, align 8
  %3089 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %3081, %"github.com/goplus/llgo/internal/runtime.Slice" %3088, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3089)
  store ptr %3089, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_148

_llgo_148:                                        ; preds = %_llgo_147, %_llgo_146
  %3090 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %3091 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3092 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3091, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %400, ptr %3092, align 8
  %3093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3091, i32 0, i32 1
  store ptr %3090, ptr %3093, align 8
  %3094 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3091, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %3094, align 8
  %3095 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3091, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %3095, align 8
  %3096 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3091, align 8
  %3097 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3098 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3097, i32 0, i32 0
  store ptr @25, ptr %3098, align 8
  %3099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3097, i32 0, i32 1
  store i64 7, ptr %3099, align 4
  %3100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3097, align 8
  %3101 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %3102 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3103 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3102, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3100, ptr %3103, align 8
  %3104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3102, i32 0, i32 1
  store ptr %3101, ptr %3104, align 8
  %3105 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3102, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %3105, align 8
  %3106 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3102, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %3106, align 8
  %3107 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3102, align 8
  %3108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3108, i32 0, i32 0
  store ptr @27, ptr %3109, align 8
  %3110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3108, i32 0, i32 1
  store i64 6, ptr %3110, align 4
  %3111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3108, align 8
  %3112 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %3113 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3113, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3111, ptr %3114, align 8
  %3115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3113, i32 0, i32 1
  store ptr %3112, ptr %3115, align 8
  %3116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3113, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %3116, align 8
  %3117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3113, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %3117, align 8
  %3118 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3113, align 8
  %3119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3119, i32 0, i32 0
  store ptr @22, ptr %3120, align 8
  %3121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3119, i32 0, i32 1
  store i64 4, ptr %3121, align 4
  %3122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3119, align 8
  %3123 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %3124 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3124, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3122, ptr %3125, align 8
  %3126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3124, i32 0, i32 1
  store ptr %3123, ptr %3126, align 8
  %3127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3124, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %3127, align 8
  %3128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3124, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %3128, align 8
  %3129 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3124, align 8
  %3130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3130, i32 0, i32 0
  store ptr @28, ptr %3131, align 8
  %3132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3130, i32 0, i32 1
  store i64 10, ptr %3132, align 4
  %3133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3130, align 8
  %3134 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %3135 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3135, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3133, ptr %3136, align 8
  %3137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3135, i32 0, i32 1
  store ptr %3134, ptr %3137, align 8
  %3138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3135, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %3138, align 8
  %3139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3135, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %3139, align 8
  %3140 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3135, align 8
  %3141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3141, i32 0, i32 0
  store ptr @29, ptr %3142, align 8
  %3143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3141, i32 0, i32 1
  store i64 8, ptr %3143, align 4
  %3144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3141, align 8
  %3145 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %3146 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3146, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3144, ptr %3147, align 8
  %3148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3146, i32 0, i32 1
  store ptr %3145, ptr %3148, align 8
  %3149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3146, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %3149, align 8
  %3150 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3146, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %3150, align 8
  %3151 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3146, align 8
  %3152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3152, i32 0, i32 0
  store ptr @33, ptr %3153, align 8
  %3154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3152, i32 0, i32 1
  store i64 7, ptr %3154, align 4
  %3155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3152, align 8
  %3156 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3157 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3157, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3155, ptr %3158, align 8
  %3159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3157, i32 0, i32 1
  store ptr %3156, ptr %3159, align 8
  %3160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3157, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %3160, align 8
  %3161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3157, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %3161, align 8
  %3162 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3157, align 8
  %3163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3163, i32 0, i32 0
  store ptr @34, ptr %3164, align 8
  %3165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3163, i32 0, i32 1
  store i64 10, ptr %3165, align 4
  %3166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3163, align 8
  %3167 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3168 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3168, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3166, ptr %3169, align 8
  %3170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3168, i32 0, i32 1
  store ptr %3167, ptr %3170, align 8
  %3171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3168, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %3171, align 8
  %3172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3168, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %3172, align 8
  %3173 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3168, align 8
  %3174 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3174, i32 0, i32 0
  store ptr @35, ptr %3175, align 8
  %3176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3174, i32 0, i32 1
  store i64 13, ptr %3176, align 4
  %3177 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3174, align 8
  %3178 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %3179 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3179, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3177, ptr %3180, align 8
  %3181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3179, i32 0, i32 1
  store ptr %3178, ptr %3181, align 8
  %3182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3179, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %3182, align 8
  %3183 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3179, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %3183, align 8
  %3184 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3179, align 8
  %3185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3185, i32 0, i32 0
  store ptr @46, ptr %3186, align 8
  %3187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3185, i32 0, i32 1
  store i64 13, ptr %3187, align 4
  %3188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3185, align 8
  %3189 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3190 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3190, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3188, ptr %3191, align 8
  %3192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3190, i32 0, i32 1
  store ptr %3189, ptr %3192, align 8
  %3193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3190, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %3193, align 8
  %3194 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3190, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %3194, align 8
  %3195 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3190, align 8
  %3196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3196, i32 0, i32 0
  store ptr @47, ptr %3197, align 8
  %3198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3196, i32 0, i32 1
  store i64 3, ptr %3198, align 4
  %3199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3196, align 8
  %3200 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %3201 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3201, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3199, ptr %3202, align 8
  %3203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3201, i32 0, i32 1
  store ptr %3200, ptr %3203, align 8
  %3204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3201, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %3204, align 8
  %3205 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3201, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %3205, align 8
  %3206 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3201, align 8
  %3207 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3207, i32 0, i32 0
  store ptr @48, ptr %3208, align 8
  %3209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3207, i32 0, i32 1
  store i64 4, ptr %3209, align 4
  %3210 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3207, align 8
  %3211 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %3212 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3212, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3210, ptr %3213, align 8
  %3214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3212, i32 0, i32 1
  store ptr %3211, ptr %3214, align 8
  %3215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3212, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %3215, align 8
  %3216 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3212, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %3216, align 8
  %3217 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3212, align 8
  %3218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3218, i32 0, i32 0
  store ptr @24, ptr %3219, align 8
  %3220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3218, i32 0, i32 1
  store i64 3, ptr %3220, align 4
  %3221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3218, align 8
  %3222 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %3223 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3223, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3221, ptr %3224, align 8
  %3225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3223, i32 0, i32 1
  store ptr %3222, ptr %3225, align 8
  %3226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3223, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %3226, align 8
  %3227 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3223, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %3227, align 8
  %3228 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3223, align 8
  %3229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3229, i32 0, i32 0
  store ptr @51, ptr %3230, align 8
  %3231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3229, i32 0, i32 1
  store i64 7, ptr %3231, align 4
  %3232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3229, align 8
  %3233 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %3234 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3234, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3232, ptr %3235, align 8
  %3236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3234, i32 0, i32 1
  store ptr %3233, ptr %3236, align 8
  %3237 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3234, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %3237, align 8
  %3238 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3234, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %3238, align 8
  %3239 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3234, align 8
  %3240 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3240, i32 0, i32 0
  store ptr @63, ptr %3241, align 8
  %3242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3240, i32 0, i32 1
  store i64 8, ptr %3242, align 4
  %3243 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3240, align 8
  %3244 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3245 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3246 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3245, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3243, ptr %3246, align 8
  %3247 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3245, i32 0, i32 1
  store ptr %3244, ptr %3247, align 8
  %3248 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3245, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %3248, align 8
  %3249 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3245, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %3249, align 8
  %3250 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3245, align 8
  %3251 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3251, i32 0, i32 0
  store ptr @65, ptr %3252, align 8
  %3253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3251, i32 0, i32 1
  store i64 4, ptr %3253, align 4
  %3254 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3251, align 8
  %3255 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %3256 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3256, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3254, ptr %3257, align 8
  %3258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3256, i32 0, i32 1
  store ptr %3255, ptr %3258, align 8
  %3259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3256, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %3259, align 8
  %3260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3256, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %3260, align 8
  %3261 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3256, align 8
  %3262 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3262, i32 0, i32 0
  store ptr @50, ptr %3263, align 8
  %3264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3262, i32 0, i32 1
  store i64 6, ptr %3264, align 4
  %3265 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3262, align 8
  %3266 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %3267 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3267, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3265, ptr %3268, align 8
  %3269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3267, i32 0, i32 1
  store ptr %3266, ptr %3269, align 8
  %3270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3267, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %3270, align 8
  %3271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3267, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %3271, align 8
  %3272 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3267, align 8
  %3273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3273, i32 0, i32 0
  store ptr @66, ptr %3274, align 8
  %3275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3273, i32 0, i32 1
  store i64 10, ptr %3275, align 4
  %3276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3273, align 8
  %3277 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %3278 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3278, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3276, ptr %3279, align 8
  %3280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3278, i32 0, i32 1
  store ptr %3277, ptr %3280, align 8
  %3281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3278, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %3281, align 8
  %3282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3278, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %3282, align 8
  %3283 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3278, align 8
  %3284 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3284, i32 0, i32 0
  store ptr @76, ptr %3285, align 8
  %3286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3284, i32 0, i32 1
  store i64 8, ptr %3286, align 4
  %3287 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3284, align 8
  %3288 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %3289 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3289, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3287, ptr %3290, align 8
  %3291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3289, i32 0, i32 1
  store ptr %3288, ptr %3291, align 8
  %3292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3289, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %3292, align 8
  %3293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3289, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %3293, align 8
  %3294 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3289, align 8
  %3295 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %3296 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %396, ptr %3296, align 8
  %3297 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %3096, ptr %3297, align 8
  %3298 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %3107, ptr %3298, align 8
  %3299 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %3118, ptr %3299, align 8
  %3300 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %3129, ptr %3300, align 8
  %3301 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %3140, ptr %3301, align 8
  %3302 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %3151, ptr %3302, align 8
  %3303 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %3162, ptr %3303, align 8
  %3304 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %3173, ptr %3304, align 8
  %3305 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %3184, ptr %3305, align 8
  %3306 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %3195, ptr %3306, align 8
  %3307 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %3206, ptr %3307, align 8
  %3308 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %3217, ptr %3308, align 8
  %3309 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %3228, ptr %3309, align 8
  %3310 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %3239, ptr %3310, align 8
  %3311 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %3250, ptr %3311, align 8
  %3312 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %3261, ptr %3312, align 8
  %3313 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %3272, ptr %3313, align 8
  %3314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %3283, ptr %3314, align 8
  %3315 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3295, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %3294, ptr %3315, align 8
  %3316 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3316, i32 0, i32 0
  store ptr %3295, ptr %3317, align 8
  %3318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3316, i32 0, i32 1
  store i64 20, ptr %3318, align 4
  %3319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3316, i32 0, i32 2
  store i64 20, ptr %3319, align 4
  %3320 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3316, align 8
  %3321 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3321, i32 0, i32 0
  store ptr @3, ptr %3322, align 8
  %3323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3321, i32 0, i32 1
  store i64 35, ptr %3323, align 4
  %3324 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3321, align 8
  %3325 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3325, i32 0, i32 0
  store ptr @21, ptr %3326, align 8
  %3327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3325, i32 0, i32 1
  store i64 4, ptr %3327, align 4
  %3328 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3325, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %20, %"github.com/goplus/llgo/internal/runtime.String" %3324, %"github.com/goplus/llgo/internal/runtime.String" %3328, ptr %355, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3320)
  br label %_llgo_32

_llgo_149:                                        ; preds = %_llgo_32
  %3329 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %369)
  store ptr %3329, ptr @"[]_llgo_main.T", align 8
  br label %_llgo_150

_llgo_150:                                        ; preds = %_llgo_149, %_llgo_32
  %3330 = load ptr, ptr @"[]_llgo_main.T", align 8
  %3331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3331, i32 0, i32 0
  store ptr @0, ptr %3332, align 8
  %3333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3331, i32 0, i32 1
  store i64 6, ptr %3333, align 4
  %3334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3331, align 8
  %3335 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3334, i64 25, i64 48, i64 0, i64 0)
  %3336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3336, i32 0, i32 0
  store ptr @1, ptr %3337, align 8
  %3338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3336, i32 0, i32 1
  store i64 40, ptr %3338, align 4
  %3339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3336, align 8
  %3340 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3339, i64 25, i64 80, i64 0, i64 20)
  %3341 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3341, i32 0, i32 0
  store ptr @0, ptr %3342, align 8
  %3343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3341, i32 0, i32 1
  store i64 6, ptr %3343, align 4
  %3344 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3341, align 8
  %3345 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3344, i64 25, i64 48, i64 0, i64 0)
  %3346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3346, i32 0, i32 0
  store ptr @89, ptr %3347, align 8
  %3348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3346, i32 0, i32 1
  store i64 1, ptr %3348, align 4
  %3349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3346, align 8
  %3350 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3350, i32 0, i32 0
  store ptr null, ptr %3351, align 8
  %3352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3350, i32 0, i32 1
  store i64 0, ptr %3352, align 4
  %3353 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3350, align 8
  %3354 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3335)
  %3355 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3349, ptr %3354, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %3353, i1 false)
  %3356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3356, i32 0, i32 0
  store ptr @90, ptr %3357, align 8
  %3358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3356, i32 0, i32 1
  store i64 1, ptr %3358, align 4
  %3359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3356, align 8
  %3360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3360, i32 0, i32 0
  store ptr null, ptr %3361, align 8
  %3362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3360, i32 0, i32 1
  store i64 0, ptr %3362, align 4
  %3363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3360, align 8
  %3364 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3340)
  %3365 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3359, ptr %3364, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %3363, i1 false)
  %3366 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3366, i32 0, i32 0
  store ptr @91, ptr %3367, align 8
  %3368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3366, i32 0, i32 1
  store i64 1, ptr %3368, align 4
  %3369 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3366, align 8
  %3370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3370, i32 0, i32 0
  store ptr null, ptr %3371, align 8
  %3372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3370, i32 0, i32 1
  store i64 0, ptr %3372, align 4
  %3373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3370, align 8
  %3374 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %3375 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3369, ptr %3374, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %3373, i1 false)
  %3376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3376, i32 0, i32 0
  store ptr @92, ptr %3377, align 8
  %3378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3376, i32 0, i32 1
  store i64 1, ptr %3378, align 4
  %3379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3376, align 8
  %3380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3380, i32 0, i32 0
  store ptr null, ptr %3381, align 8
  %3382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3380, i32 0, i32 1
  store i64 0, ptr %3382, align 4
  %3383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3380, align 8
  %3384 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %3345)
  %3385 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3379, ptr %3384, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %3383, i1 false)
  %3386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3386, i32 0, i32 0
  store ptr @7, ptr %3387, align 8
  %3388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3386, i32 0, i32 1
  store i64 4, ptr %3388, align 4
  %3389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3386, align 8
  %3390 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %3391 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3390, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %3355, ptr %3391, align 8
  %3392 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3390, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %3365, ptr %3392, align 8
  %3393 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3390, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %3375, ptr %3393, align 8
  %3394 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3390, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %3385, ptr %3394, align 8
  %3395 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3395, i32 0, i32 0
  store ptr %3390, ptr %3396, align 8
  %3397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3395, i32 0, i32 1
  store i64 4, ptr %3397, align 4
  %3398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3395, i32 0, i32 2
  store i64 4, ptr %3398, align 4
  %3399 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3395, align 8
  %3400 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %3389, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %3399)
  store ptr %3400, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  %3401 = load ptr, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  br i1 %6, label %_llgo_151, label %_llgo_152

_llgo_151:                                        ; preds = %_llgo_150
  %3402 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3402, i32 0, i32 0
  store ptr @7, ptr %3403, align 8
  %3404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3402, i32 0, i32 1
  store i64 4, ptr %3404, align 4
  %3405 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3402, align 8
  %3406 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3406, i32 0, i32 0
  store ptr @93, ptr %3407, align 8
  %3408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3406, i32 0, i32 1
  store i64 1, ptr %3408, align 4
  %3409 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3406, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %3405, %"github.com/goplus/llgo/internal/runtime.String" %3409, ptr %3401, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_152

_llgo_152:                                        ; preds = %_llgo_151, %_llgo_150
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).Align"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Imethod).Name"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Kind).String"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.Kind.String"(i64)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*MapType).String"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructField).Exported"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*StructType).String"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Method).Exported"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Method).Name"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*FuncType).String"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*ArrayType).String"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).Len"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Type).String"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
