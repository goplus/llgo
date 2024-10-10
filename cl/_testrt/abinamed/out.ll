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
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig" = linkonce global ptr null, align 8
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
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [9 x i8] c"ArrayType", align 1
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
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4" = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [7 x i8] c"ChanDir", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.ChanDir" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.ChanDir", align 1
@"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo" = linkonce global ptr null, align 8
@28 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@29 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/internal/abi.FuncType", align 1
@"[]*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [2 x i8] c"In", align 1
@32 = private unnamed_addr constant [3 x i8] c"Out", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@33 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@34 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@35 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@36 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/internal/abi.InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Imethod" = linkonce global ptr null, align 8
@37 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.Imethod", align 1
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
@"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
@46 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@47 = private unnamed_addr constant [3 x i8] c"Key", align 1
@48 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@49 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Kind", align 1
@_llgo_uint = linkonce global ptr null, align 8
@50 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@51 = private unnamed_addr constant [7 x i8] c"MapType", align 1
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
@"*_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@62 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@63 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@64 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@65 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@66 = private unnamed_addr constant [10 x i8] c"StructType", align 1
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
@"*_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@76 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
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
<<<<<<< HEAD
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
=======
>>>>>>> 92c452cd (internal/lib/reflect: lookupCache)
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
=======
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
>>>>>>> 92c452cd (internal/lib/reflect: lookupCache)
@87 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
>>>>>>> 186ddfd2 (internal/lib/sync: support sync.Map)
@"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
<<<<<<< HEAD
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
=======
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
>>>>>>> 92c452cd (internal/lib/reflect: lookupCache)
@88 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
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
  %65 = load ptr, ptr @_llgo_Pointer, align 8
  %66 = load ptr, ptr @_llgo_Pointer, align 8
  %67 = load ptr, ptr @_llgo_Pointer, align 8
  %68 = load ptr, ptr @_llgo_bool, align 8
  %69 = load ptr, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
<<<<<<< HEAD
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
=======
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %72 = getelementptr ptr, ptr %71, i64 0
  store ptr %65, ptr %72, align 8
  %73 = getelementptr ptr, ptr %71, i64 1
  store ptr %66, ptr %73, align 8
  %74 = getelementptr ptr, ptr %71, i64 2
  store ptr %67, ptr %74, align 8
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 0
  store ptr %71, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 1
  store i64 3, ptr %77, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 2
  store i64 3, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, align 8
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %81 = getelementptr ptr, ptr %80, i64 0
  store ptr %68, ptr %81, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 0
  store ptr %80, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 1
  store i64 1, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 2
  store i64 1, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %79, %"github.com/goplus/llgo/internal/runtime.Slice" %86, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %87)
  store ptr %87, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
>>>>>>> 92c452cd (internal/lib/reflect: lookupCache)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %88 = load ptr, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  %89 = load ptr, ptr @_llgo_Pointer, align 8
  %90 = load ptr, ptr @_llgo_Pointer, align 8
  %91 = load ptr, ptr @_llgo_Pointer, align 8
  %92 = load ptr, ptr @_llgo_Pointer, align 8
  %93 = load ptr, ptr @_llgo_bool, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr @5, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 1, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 0
  store ptr null, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 1
  store i64 0, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %98, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %103 = getelementptr ptr, ptr %102, i64 0
  store ptr %90, ptr %103, align 8
  %104 = getelementptr ptr, ptr %102, i64 1
  store ptr %91, ptr %104, align 8
  %105 = getelementptr ptr, ptr %102, i64 2
  store ptr %92, ptr %105, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 0
  store ptr %102, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 1
  store i64 3, ptr %108, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 2
  store i64 3, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %112 = getelementptr ptr, ptr %111, i64 0
  store ptr %93, ptr %112, align 8
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 0
  store ptr %111, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 1
  store i64 1, ptr %115, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 2
  store i64 1, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, align 8
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %110, %"github.com/goplus/llgo/internal/runtime.Slice" %117, i1 false)
  %119 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %97, ptr %118, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %101, i1 false)
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 0
  store ptr @6, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 1
  store i64 4, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %120, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr null, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 0, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %129 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %123, ptr %128, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %127, i1 false)
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 0
  store ptr @7, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 1
  store i64 4, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %130, align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %135 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %134, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %119, ptr %135, align 8
  %136 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %134, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %129, ptr %136, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %137, i32 0, i32 0
  store ptr %134, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %137, i32 0, i32 1
  store i64 2, ptr %139, align 4
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %137, i32 0, i32 2
  store i64 2, ptr %140, align 4
  %141 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %137, align 8
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %133, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %141)
  store ptr %142, ptr @"main.struct$p9hq6rduefaRA0UGJ6DazYUtteEOtDFu7UHk5jhDUV4", align 8
  %143 = load ptr, ptr @"main.struct$p9hq6rduefaRA0UGJ6DazYUtteEOtDFu7UHk5jhDUV4", align 8
  %144 = load ptr, ptr @_llgo_byte, align 8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %146, ptr @_llgo_byte, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %147 = load ptr, ptr @"*_llgo_byte", align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %150 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %149)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %150)
  store ptr %150, ptr @"*_llgo_byte", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %151 = load ptr, ptr @"*_llgo_byte", align 8
  %152 = load ptr, ptr @_llgo_string, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %154, ptr @_llgo_string, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %155 = load ptr, ptr @_llgo_string, align 8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @1, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 40, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %159, i64 25, i64 72, i64 0, i64 20)
  %161 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %160)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %163)
  store ptr %163, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %164 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %165 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %165, i32 0, i32 0
  store ptr @2, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %165, i32 0, i32 1
  store i64 41, ptr %167, align 4
  %168 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %165, align 8
  %169 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %168, i64 8, i64 1, i64 0, i64 0)
  %170 = load ptr, ptr @_llgo_Pointer, align 8
  %171 = load ptr, ptr @_llgo_Pointer, align 8
  %172 = load ptr, ptr @_llgo_Pointer, align 8
  %173 = load ptr, ptr @_llgo_bool, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 0
  store ptr @1, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 1
  store i64 40, ptr %176, align 4
  %177 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %174, align 8
  %178 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %177, i64 25, i64 72, i64 0, i64 20)
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 0
  store ptr @8, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 1
  store i64 5, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %179, align 8
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 0
  store ptr null, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 1
  store i64 0, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  %187 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %188 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %182, ptr %187, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %186, i1 false)
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 0
  store ptr @9, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 1
  store i64 8, ptr %191, align 4
  %192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %189, align 8
  %193 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 0
  store ptr null, ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 1
  store i64 0, ptr %195, align 4
  %196 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %193, align 8
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %198 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %192, ptr %197, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %196, i1 false)
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr @10, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 1
  store i64 4, ptr %201, align 4
  %202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %199, align 8
  %203 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %203, i32 0, i32 0
  store ptr null, ptr %204, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %203, i32 0, i32 1
  store i64 0, ptr %205, align 4
  %206 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %203, align 8
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %208 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %202, ptr %207, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %206, i1 false)
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 0
  store ptr @4, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 1
  store i64 5, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %209, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr null, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 0, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  %217 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %212, ptr %169, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %216, i1 false)
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 0
  store ptr @11, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 6, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 0
  store ptr null, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 1
  store i64 0, ptr %224, align 4
  %225 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %222, align 8
  %226 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %227 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %221, ptr %226, i64 21, %"github.com/goplus/llgo/internal/runtime.String" %225, i1 false)
  %228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 0
  store ptr @12, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 1
  store i64 11, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %228, align 8
  %232 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 0
  store ptr null, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 1
  store i64 0, ptr %234, align 4
  %235 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %232, align 8
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %237 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %231, ptr %236, i64 22, %"github.com/goplus/llgo/internal/runtime.String" %235, i1 false)
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 0
  store ptr @13, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 1
  store i64 5, ptr %240, align 4
  %241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %238, align 8
  %242 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 0
  store ptr null, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 1
  store i64 0, ptr %244, align 4
  %245 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %242, align 8
  %246 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %247 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %241, ptr %246, i64 23, %"github.com/goplus/llgo/internal/runtime.String" %245, i1 false)
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 0
  store ptr @14, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 1
  store i64 5, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %248, align 8
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 0
  store ptr null, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 1
  store i64 0, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %252, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr @5, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 1, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr null, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 0, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  %264 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %265 = getelementptr ptr, ptr %264, i64 0
  store ptr %170, ptr %265, align 8
  %266 = getelementptr ptr, ptr %264, i64 1
  store ptr %171, ptr %266, align 8
  %267 = getelementptr ptr, ptr %264, i64 2
  store ptr %172, ptr %267, align 8
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, i32 0, i32 0
  store ptr %264, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, i32 0, i32 1
  store i64 3, ptr %270, align 4
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, i32 0, i32 2
  store i64 3, ptr %271, align 4
  %272 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, align 8
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %274 = getelementptr ptr, ptr %273, i64 0
  store ptr %173, ptr %274, align 8
  %275 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 0
  store ptr %273, ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 1
  store i64 1, ptr %277, align 4
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 2
  store i64 1, ptr %278, align 4
  %279 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, align 8
  %280 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %272, %"github.com/goplus/llgo/internal/runtime.Slice" %279, i1 false)
  %281 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %259, ptr %280, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %263, i1 false)
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 0
  store ptr @6, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 1
  store i64 4, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %282, align 8
  %286 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %286, i32 0, i32 0
  store ptr null, ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %286, i32 0, i32 1
  store i64 0, ptr %288, align 4
  %289 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %286, align 8
  %290 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %291 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %285, ptr %290, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %289, i1 false)
  %292 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 0
  store ptr @7, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 1
  store i64 4, ptr %294, align 4
  %295 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %292, align 8
  %296 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %297 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %296, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %281, ptr %297, align 8
  %298 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %296, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %291, ptr %298, align 8
  %299 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %299, i32 0, i32 0
  store ptr %296, ptr %300, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %299, i32 0, i32 1
  store i64 2, ptr %301, align 4
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %299, i32 0, i32 2
  store i64 2, ptr %302, align 4
  %303 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %299, align 8
  %304 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %295, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %303)
  %305 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %251, ptr %304, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %255, i1 false)
  %306 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 0
  store ptr @15, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %306, i32 0, i32 1
  store i64 6, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %306, align 8
  %310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 0
  store ptr null, ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 1
  store i64 0, ptr %312, align 4
  %313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %310, align 8
  %314 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %315 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %314)
  %316 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %309, ptr %315, i64 40, %"github.com/goplus/llgo/internal/runtime.String" %313, i1 false)
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 0
  store ptr @16, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 1
  store i64 4, ptr %319, align 4
  %320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %317, align 8
  %321 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %321, i32 0, i32 0
  store ptr null, ptr %322, align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %321, i32 0, i32 1
  store i64 0, ptr %323, align 4
  %324 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %321, align 8
  %325 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %326 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %320, ptr %325, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %324, i1 false)
  %327 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 0
  store ptr @17, ptr %328, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 1
  store i64 10, ptr %329, align 4
  %330 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %327, align 8
  %331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 0
  store ptr null, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 1
  store i64 0, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %331, align 8
  %335 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %178)
  %336 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %330, ptr %335, i64 64, %"github.com/goplus/llgo/internal/runtime.String" %334, i1 false)
  %337 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 0
  store ptr @7, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 1
  store i64 4, ptr %339, align 4
  %340 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %337, align 8
  %341 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 616)
  %342 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %188, ptr %342, align 8
  %343 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %198, ptr %343, align 8
  %344 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %208, ptr %344, align 8
  %345 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %217, ptr %345, align 8
  %346 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %227, ptr %346, align 8
  %347 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %237, ptr %347, align 8
  %348 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %247, ptr %348, align 8
  %349 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %305, ptr %349, align 8
  %350 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %316, ptr %350, align 8
  %351 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 9
  store %"github.com/goplus/llgo/internal/abi.StructField" %326, ptr %351, align 8
  %352 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %341, i64 10
  store %"github.com/goplus/llgo/internal/abi.StructField" %336, ptr %352, align 8
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 0
  store ptr %341, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 1
  store i64 11, ptr %355, align 4
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 2
  store i64 11, ptr %356, align 4
  %357 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, align 8
  %358 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %340, i64 72, %"github.com/goplus/llgo/internal/runtime.Slice" %357)
  store ptr %358, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  %359 = load ptr, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br i1 %22, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 0
  store ptr @18, ptr %361, align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 1
  store i64 5, ptr %362, align 4
  %363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %360, align 8
  %364 = load ptr, ptr @_llgo_int, align 8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %_llgo_33, label %_llgo_34

_llgo_32:                                         ; preds = %_llgo_42, %_llgo_30
  %366 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %367 = load ptr, ptr @_llgo_uintptr, align 8
  %368 = load ptr, ptr @_llgo_main.T, align 8
  %369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 0
  store ptr @0, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 1
  store i64 6, ptr %371, align 4
  %372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %369, align 8
  %373 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %372, i64 25, i64 48, i64 0, i64 0)
  %374 = load ptr, ptr @"[]_llgo_main.T", align 8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %_llgo_149, label %_llgo_150

_llgo_33:                                         ; preds = %_llgo_31
  %376 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %376, ptr @_llgo_int, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_31
  %377 = load ptr, ptr @_llgo_int, align 8
  %378 = load ptr, ptr @_llgo_int, align 8
  %379 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %380 = icmp eq ptr %379, null
  br i1 %380, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %381 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %382 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %382, i32 0, i32 0
  store ptr %381, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %382, i32 0, i32 1
  store i64 0, ptr %384, align 4
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %382, i32 0, i32 2
  store i64 0, ptr %385, align 4
  %386 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %382, align 8
  %387 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %388 = getelementptr ptr, ptr %387, i64 0
  store ptr %378, ptr %388, align 8
  %389 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %389, i32 0, i32 0
  store ptr %387, ptr %390, align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %389, i32 0, i32 1
  store i64 1, ptr %391, align 4
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %389, i32 0, i32 2
  store i64 1, ptr %392, align 4
  %393 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %389, align 8
  %394 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %386, %"github.com/goplus/llgo/internal/runtime.Slice" %393, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %394)
  store ptr %394, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %395 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %396 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %396, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %363, ptr %397, align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %396, i32 0, i32 1
  store ptr %395, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %396, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %399, align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %396, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %400, align 8
  %401 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %396, align 8
  %402 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %402, i32 0, i32 0
  store ptr @19, ptr %403, align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %402, i32 0, i32 1
  store i64 9, ptr %404, align 4
  %405 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %402, align 8
  %406 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %406, i32 0, i32 0
  store ptr @20, ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %406, i32 0, i32 1
  store i64 45, ptr %408, align 4
  %409 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %406, align 8
  %410 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %409, i64 25, i64 104, i64 0, i64 18)
  %411 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %410, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %413 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %414 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %415 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %416 = load ptr, ptr @_llgo_uintptr, align 8
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
  %427 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 0
  store ptr @1, ptr %428, align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 1
  store i64 40, ptr %429, align 4
  %430 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %427, align 8
  %431 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %430, i64 25, i64 80, i64 0, i64 20)
  %432 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %433 = icmp eq ptr %432, null
  br i1 %433, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 0
  store ptr @21, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 1
  store i64 4, ptr %436, align 4
  %437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %434, align 8
  %438 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 0
  store ptr null, ptr %439, align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %438, i32 0, i32 1
  store i64 0, ptr %440, align 4
  %441 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %438, align 8
  %442 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %437, ptr %421, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %441, i1 true)
  %443 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %443, i32 0, i32 0
  store ptr @22, ptr %444, align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %443, i32 0, i32 1
  store i64 4, ptr %445, align 4
  %446 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %443, align 8
  %447 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %447, i32 0, i32 0
  store ptr null, ptr %448, align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %447, i32 0, i32 1
  store i64 0, ptr %449, align 4
  %450 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %447, align 8
  %451 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %426)
  %452 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %446, ptr %451, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %450, i1 false)
  %453 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 0
  store ptr @23, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 1
  store i64 5, ptr %455, align 4
  %456 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %453, align 8
  %457 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %458 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %457, i32 0, i32 0
  store ptr null, ptr %458, align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %457, i32 0, i32 1
  store i64 0, ptr %459, align 4
  %460 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %457, align 8
  %461 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %431)
  %462 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %456, ptr %461, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %460, i1 false)
  %463 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %463, i32 0, i32 0
  store ptr @24, ptr %464, align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %463, i32 0, i32 1
  store i64 3, ptr %465, align 4
  %466 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %463, align 8
  %467 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %468 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %467, i32 0, i32 0
  store ptr null, ptr %468, align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %467, i32 0, i32 1
  store i64 0, ptr %469, align 4
  %470 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %467, align 8
  %471 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %472 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %466, ptr %471, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %470, i1 false)
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 0
  store ptr @7, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 1
  store i64 4, ptr %475, align 4
  %476 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %473, align 8
  %477 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %478 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %477, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %442, ptr %478, align 8
  %479 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %477, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %452, ptr %479, align 8
  %480 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %477, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %462, ptr %480, align 8
  %481 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %477, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %472, ptr %481, align 8
  %482 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, i32 0, i32 0
  store ptr %477, ptr %483, align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, i32 0, i32 1
  store i64 4, ptr %484, align 4
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, i32 0, i32 2
  store i64 4, ptr %485, align 4
  %486 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, align 8
  %487 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %476, i64 96, %"github.com/goplus/llgo/internal/runtime.Slice" %486)
  store ptr %487, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %488 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br i1 %412, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %489 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %490 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %489, i32 0, i32 0
  store ptr @18, ptr %490, align 8
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %489, i32 0, i32 1
  store i64 5, ptr %491, align 4
  %492 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %489, align 8
  %493 = load ptr, ptr @_llgo_int, align 8
  %494 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %495 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %495, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %492, ptr %496, align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %495, i32 0, i32 1
  store ptr %494, ptr %497, align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %495, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %495, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %499, align 8
  %500 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %495, align 8
  %501 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 0
  store ptr @19, ptr %502, align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 1
  store i64 9, ptr %503, align 4
  %504 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %501, align 8
  %505 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %505, i32 0, i32 0
  store ptr @20, ptr %506, align 8
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %505, i32 0, i32 1
  store i64 45, ptr %507, align 4
  %508 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %505, align 8
  %509 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %508, i64 25, i64 104, i64 0, i64 18)
  %510 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %511 = icmp eq ptr %510, null
  br i1 %511, label %_llgo_43, label %_llgo_44

_llgo_42:                                         ; preds = %_llgo_62, %_llgo_40
  %512 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %513 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %514 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %514, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %405, ptr %515, align 8
  %516 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %514, i32 0, i32 1
  store ptr %513, ptr %516, align 8
  %517 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %514, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %517, align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %514, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %518, align 8
  %519 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %514, align 8
  %520 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %520, i32 0, i32 0
  store ptr @25, ptr %521, align 8
  %522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %520, i32 0, i32 1
  store i64 7, ptr %522, align 4
  %523 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %520, align 8
  %524 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %525 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %526 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %526, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %523, ptr %527, align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %526, i32 0, i32 1
  store ptr %525, ptr %528, align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %526, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %529, align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %526, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %530, align 8
  %531 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %526, align 8
  %532 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 0
  store ptr @27, ptr %533, align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 1
  store i64 6, ptr %534, align 4
  %535 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %532, align 8
  %536 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %537 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %538 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %538, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %535, ptr %539, align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %538, i32 0, i32 1
  store ptr %537, ptr %540, align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %538, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %541, align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %538, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %542, align 8
  %543 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %538, align 8
  %544 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %545 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %544, i32 0, i32 0
  store ptr @22, ptr %545, align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %544, i32 0, i32 1
  store i64 4, ptr %546, align 4
  %547 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %544, align 8
  %548 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %549 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %550 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %550, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %547, ptr %551, align 8
  %552 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %550, i32 0, i32 1
  store ptr %549, ptr %552, align 8
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %550, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %553, align 8
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %550, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %554, align 8
  %555 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %550, align 8
  %556 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %556, i32 0, i32 0
  store ptr @28, ptr %557, align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %556, i32 0, i32 1
  store i64 10, ptr %558, align 4
  %559 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %556, align 8
  %560 = load ptr, ptr @_llgo_int, align 8
  %561 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %562 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %562, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %559, ptr %563, align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %562, i32 0, i32 1
  store ptr %561, ptr %564, align 8
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %562, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %565, align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %562, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %566, align 8
  %567 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %562, align 8
  %568 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %568, i32 0, i32 0
  store ptr @29, ptr %569, align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %568, i32 0, i32 1
  store i64 8, ptr %570, align 4
  %571 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %568, align 8
  %572 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %573 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %574 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %575 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %574, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %571, ptr %575, align 8
  %576 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %574, i32 0, i32 1
  store ptr %573, ptr %576, align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %574, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %574, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %578, align 8
  %579 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %574, align 8
  %580 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 0
  store ptr @33, ptr %581, align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 1
  store i64 7, ptr %582, align 4
  %583 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %580, align 8
  %584 = load ptr, ptr @_llgo_bool, align 8
  %585 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %586 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %586, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %583, ptr %587, align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %586, i32 0, i32 1
  store ptr %585, ptr %588, align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %586, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %589, align 8
  %590 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %586, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %590, align 8
  %591 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %586, align 8
  %592 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %593 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %592, i32 0, i32 0
  store ptr @34, ptr %593, align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %592, i32 0, i32 1
  store i64 10, ptr %594, align 4
  %595 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %592, align 8
  %596 = load ptr, ptr @_llgo_bool, align 8
  %597 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %598 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %598, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %595, ptr %599, align 8
  %600 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %598, i32 0, i32 1
  store ptr %597, ptr %600, align 8
  %601 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %598, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %601, align 8
  %602 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %598, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %602, align 8
  %603 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %598, align 8
  %604 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %605 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %604, i32 0, i32 0
  store ptr @35, ptr %605, align 8
  %606 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %604, i32 0, i32 1
  store i64 13, ptr %606, align 4
  %607 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %604, align 8
  %608 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %609 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %610 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %610, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %607, ptr %611, align 8
  %612 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %610, i32 0, i32 1
  store ptr %609, ptr %612, align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %610, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %613, align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %610, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %614, align 8
  %615 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %610, align 8
  %616 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %616, i32 0, i32 0
  store ptr @46, ptr %617, align 8
  %618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %616, i32 0, i32 1
  store i64 13, ptr %618, align 4
  %619 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %616, align 8
  %620 = load ptr, ptr @_llgo_bool, align 8
  %621 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %622 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %619, ptr %623, align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 1
  store ptr %621, ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %625, align 8
  %626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %626, align 8
  %627 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %622, align 8
  %628 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 0
  store ptr @47, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 1
  store i64 3, ptr %630, align 4
  %631 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %628, align 8
  %632 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %633 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %634 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %635 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %634, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %631, ptr %635, align 8
  %636 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %634, i32 0, i32 1
  store ptr %633, ptr %636, align 8
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %634, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %637, align 8
  %638 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %634, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %638, align 8
  %639 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %634, align 8
  %640 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %641 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %640, i32 0, i32 0
  store ptr @48, ptr %641, align 8
  %642 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %640, i32 0, i32 1
  store i64 4, ptr %642, align 4
  %643 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %640, align 8
  %644 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %645 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %646 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %643, ptr %647, align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 1
  store ptr %645, ptr %648, align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %649, align 8
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %650, align 8
  %651 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %646, align 8
  %652 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %652, i32 0, i32 0
  store ptr @24, ptr %653, align 8
  %654 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %652, i32 0, i32 1
  store i64 3, ptr %654, align 4
  %655 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %652, align 8
  %656 = load ptr, ptr @_llgo_int, align 8
  %657 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %658 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %655, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 1
  store ptr %657, ptr %660, align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %661, align 8
  %662 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %662, align 8
  %663 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %658, align 8
  %664 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %664, i32 0, i32 0
  store ptr @51, ptr %665, align 8
  %666 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %664, i32 0, i32 1
  store i64 7, ptr %666, align 4
  %667 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %664, align 8
  %668 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %669 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %670 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %671 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %670, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %667, ptr %671, align 8
  %672 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %670, i32 0, i32 1
  store ptr %669, ptr %672, align 8
  %673 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %670, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %673, align 8
  %674 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %670, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %674, align 8
  %675 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %670, align 8
  %676 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %677 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %676, i32 0, i32 0
  store ptr @63, ptr %677, align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %676, i32 0, i32 1
  store i64 8, ptr %678, align 4
  %679 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %676, align 8
  %680 = load ptr, ptr @_llgo_bool, align 8
  %681 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %682 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %683 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %682, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %679, ptr %683, align 8
  %684 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %682, i32 0, i32 1
  store ptr %681, ptr %684, align 8
  %685 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %682, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %685, align 8
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %682, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %686, align 8
  %687 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %682, align 8
  %688 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %689 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %688, i32 0, i32 0
  store ptr @65, ptr %689, align 8
  %690 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %688, i32 0, i32 1
  store i64 4, ptr %690, align 4
  %691 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %688, align 8
  %692 = load ptr, ptr @_llgo_uintptr, align 8
  %693 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %694 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %695 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %694, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %691, ptr %695, align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %694, i32 0, i32 1
  store ptr %693, ptr %696, align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %694, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %697, align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %694, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %698, align 8
  %699 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %694, align 8
  %700 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %701 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %700, i32 0, i32 0
  store ptr @50, ptr %701, align 8
  %702 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %700, i32 0, i32 1
  store i64 6, ptr %702, align 4
  %703 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %700, align 8
  %704 = load ptr, ptr @_llgo_string, align 8
  %705 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %706 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %707 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %706, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %703, ptr %707, align 8
  %708 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %706, i32 0, i32 1
  store ptr %705, ptr %708, align 8
  %709 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %706, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %709, align 8
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %706, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %710, align 8
  %711 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %706, align 8
  %712 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %712, i32 0, i32 0
  store ptr @66, ptr %713, align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %712, i32 0, i32 1
  store i64 10, ptr %714, align 4
  %715 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %712, align 8
  %716 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %717 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %718 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %715, ptr %719, align 8
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 1
  store ptr %717, ptr %720, align 8
  %721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %721, align 8
  %722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %722, align 8
  %723 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %718, align 8
  %724 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %724, i32 0, i32 0
  store ptr @76, ptr %725, align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %724, i32 0, i32 1
  store i64 8, ptr %726, align 4
  %727 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %724, align 8
  %728 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %729 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %730 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %727, ptr %731, align 8
  %732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 1
  store ptr %729, ptr %732, align 8
  %733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %733, align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %734, align 8
  %735 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %730, align 8
  %736 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %737 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %401, ptr %737, align 8
  %738 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %519, ptr %738, align 8
  %739 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %531, ptr %739, align 8
  %740 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %543, ptr %740, align 8
  %741 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %555, ptr %741, align 8
  %742 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %567, ptr %742, align 8
  %743 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %579, ptr %743, align 8
  %744 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %591, ptr %744, align 8
  %745 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %603, ptr %745, align 8
  %746 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %615, ptr %746, align 8
  %747 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %627, ptr %747, align 8
  %748 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %639, ptr %748, align 8
  %749 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %651, ptr %749, align 8
  %750 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %663, ptr %750, align 8
  %751 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %675, ptr %751, align 8
  %752 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %687, ptr %752, align 8
  %753 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %699, ptr %753, align 8
  %754 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %711, ptr %754, align 8
  %755 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %723, ptr %755, align 8
  %756 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %736, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %735, ptr %756, align 8
  %757 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %757, i32 0, i32 0
  store ptr %736, ptr %758, align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %757, i32 0, i32 1
  store i64 20, ptr %759, align 4
  %760 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %757, i32 0, i32 2
  store i64 20, ptr %760, align 4
  %761 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %757, align 8
  %762 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %762, i32 0, i32 0
  store ptr @3, ptr %763, align 8
  %764 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %762, i32 0, i32 1
  store i64 35, ptr %764, align 4
  %765 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %762, align 8
  %766 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %767 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %766, i32 0, i32 0
  store ptr @21, ptr %767, align 8
  %768 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %766, i32 0, i32 1
  store i64 4, ptr %768, align 4
  %769 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %766, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %20, %"github.com/goplus/llgo/internal/runtime.String" %765, %"github.com/goplus/llgo/internal/runtime.String" %769, ptr %359, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %761)
  br label %_llgo_32

_llgo_43:                                         ; preds = %_llgo_41
  %770 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %509)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %770)
  store ptr %770, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_41
  %771 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %772 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %773 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %774 = icmp eq ptr %773, null
  br i1 %774, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %775 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %776 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, i32 0, i32 0
  store ptr %775, ptr %777, align 8
  %778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, i32 0, i32 1
  store i64 0, ptr %778, align 4
  %779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, i32 0, i32 2
  store i64 0, ptr %779, align 4
  %780 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, align 8
  %781 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %782 = getelementptr ptr, ptr %781, i64 0
  store ptr %772, ptr %782, align 8
  %783 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %784 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, i32 0, i32 0
  store ptr %781, ptr %784, align 8
  %785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, i32 0, i32 1
  store i64 1, ptr %785, align 4
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, i32 0, i32 2
  store i64 1, ptr %786, align 4
  %787 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, align 8
  %788 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %780, %"github.com/goplus/llgo/internal/runtime.Slice" %787, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %788)
  store ptr %788, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %789 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %790 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %791 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %504, ptr %791, align 8
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 1
  store ptr %789, ptr %792, align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %793, align 8
  %794 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %794, align 8
  %795 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %790, align 8
  %796 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %796, i32 0, i32 0
  store ptr @25, ptr %797, align 8
  %798 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %796, i32 0, i32 1
  store i64 7, ptr %798, align 4
  %799 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %796, align 8
  %800 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %801 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %800, i32 0, i32 0
  store ptr @26, ptr %801, align 8
  %802 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %800, i32 0, i32 1
  store i64 43, ptr %802, align 4
  %803 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %800, align 8
  %804 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %803, i64 2, i64 8, i64 0, i64 0)
  %805 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %806 = icmp eq ptr %805, null
  br i1 %806, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  store ptr %804, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %807 = load ptr, ptr @_llgo_int, align 8
  br i1 %806, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %808 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %808, i32 0, i32 0
  store ptr @3, ptr %809, align 8
  %810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %808, i32 0, i32 1
  store i64 35, ptr %810, align 4
  %811 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %808, align 8
  %812 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %813 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %812, i32 0, i32 0
  store ptr @25, ptr %813, align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %812, i32 0, i32 1
  store i64 7, ptr %814, align 4
  %815 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %812, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %804, %"github.com/goplus/llgo/internal/runtime.String" %811, %"github.com/goplus/llgo/internal/runtime.String" %815, ptr %807, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %816 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %817 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %818 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %819 = icmp eq ptr %818, null
  br i1 %819, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %820 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %821 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %822 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %821, i32 0, i32 0
  store ptr %820, ptr %822, align 8
  %823 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %821, i32 0, i32 1
  store i64 0, ptr %823, align 4
  %824 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %821, i32 0, i32 2
  store i64 0, ptr %824, align 4
  %825 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %821, align 8
  %826 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %827 = getelementptr ptr, ptr %826, i64 0
  store ptr %817, ptr %827, align 8
  %828 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, i32 0, i32 0
  store ptr %826, ptr %829, align 8
  %830 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, i32 0, i32 1
  store i64 1, ptr %830, align 4
  %831 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, i32 0, i32 2
  store i64 1, ptr %831, align 4
  %832 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, align 8
  %833 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %825, %"github.com/goplus/llgo/internal/runtime.Slice" %832, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %833)
  store ptr %833, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %834 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %835 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %835, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %799, ptr %836, align 8
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %835, i32 0, i32 1
  store ptr %834, ptr %837, align 8
  %838 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %835, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", ptr %838, align 8
  %839 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %835, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", ptr %839, align 8
  %840 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %835, align 8
  %841 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 0
  store ptr @27, ptr %842, align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 1
  store i64 6, ptr %843, align 4
  %844 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %841, align 8
  %845 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %846 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %847 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %848 = icmp eq ptr %847, null
  br i1 %848, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %849 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %850 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %850, i32 0, i32 0
  store ptr %849, ptr %851, align 8
  %852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %850, i32 0, i32 1
  store i64 0, ptr %852, align 4
  %853 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %850, i32 0, i32 2
  store i64 0, ptr %853, align 4
  %854 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %850, align 8
  %855 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %856 = getelementptr ptr, ptr %855, i64 0
  store ptr %846, ptr %856, align 8
  %857 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %857, i32 0, i32 0
  store ptr %855, ptr %858, align 8
  %859 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %857, i32 0, i32 1
  store i64 1, ptr %859, align 4
  %860 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %857, i32 0, i32 2
  store i64 1, ptr %860, align 4
  %861 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %857, align 8
  %862 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %854, %"github.com/goplus/llgo/internal/runtime.Slice" %861, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %862)
  store ptr %862, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %863 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %864 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %865 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %844, ptr %865, align 8
  %866 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 1
  store ptr %863, ptr %866, align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %867, align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %868, align 8
  %869 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %864, align 8
  %870 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %870, i32 0, i32 0
  store ptr @28, ptr %871, align 8
  %872 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %870, i32 0, i32 1
  store i64 10, ptr %872, align 4
  %873 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %870, align 8
  %874 = load ptr, ptr @_llgo_int, align 8
  %875 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %876 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %877 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %876, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %873, ptr %877, align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %876, i32 0, i32 1
  store ptr %875, ptr %878, align 8
  %879 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %876, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %879, align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %876, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %880, align 8
  %881 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %876, align 8
  %882 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %882, i32 0, i32 0
  store ptr @29, ptr %883, align 8
  %884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %882, i32 0, i32 1
  store i64 8, ptr %884, align 4
  %885 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %882, align 8
  %886 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %887 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 0
  store ptr @30, ptr %887, align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 1
  store i64 44, ptr %888, align 4
  %889 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %886, align 8
  %890 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %889, i64 25, i64 128, i64 0, i64 21)
  %891 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %892 = icmp eq ptr %891, null
  br i1 %892, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  store ptr %890, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %893 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %894 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %895 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %895, i32 0, i32 0
  store ptr @1, ptr %896, align 8
  %897 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %895, i32 0, i32 1
  store i64 40, ptr %897, align 4
  %898 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %895, align 8
  %899 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %898, i64 25, i64 80, i64 0, i64 20)
  %900 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %901 = icmp eq ptr %900, null
  br i1 %901, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %902 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %899)
  %903 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %902)
  store ptr %903, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %904 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %905 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %906 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %907 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %907, i32 0, i32 0
  store ptr @1, ptr %908, align 8
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %907, i32 0, i32 1
  store i64 40, ptr %909, align 4
  %910 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %907, align 8
  %911 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %910, i64 25, i64 80, i64 0, i64 20)
  %912 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %913 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %912, i32 0, i32 0
  store ptr @1, ptr %913, align 8
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %912, i32 0, i32 1
  store i64 40, ptr %914, align 4
  %915 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %912, align 8
  %916 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %915, i64 25, i64 80, i64 0, i64 20)
  %917 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %917, i32 0, i32 0
  store ptr @1, ptr %918, align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %917, i32 0, i32 1
  store i64 40, ptr %919, align 4
  %920 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %917, align 8
  %921 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %920, i64 25, i64 80, i64 0, i64 20)
  %922 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %923 = icmp eq ptr %922, null
  br i1 %923, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %924 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %925 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %924, i32 0, i32 0
  store ptr @21, ptr %925, align 8
  %926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %924, i32 0, i32 1
  store i64 4, ptr %926, align 4
  %927 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %924, align 8
  %928 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 0
  store ptr null, ptr %929, align 8
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 1
  store i64 0, ptr %930, align 4
  %931 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %928, align 8
  %932 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %927, ptr %911, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %931, i1 true)
  %933 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %933, i32 0, i32 0
  store ptr @31, ptr %934, align 8
  %935 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %933, i32 0, i32 1
  store i64 2, ptr %935, align 4
  %936 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %933, align 8
  %937 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %938 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %937, i32 0, i32 0
  store ptr null, ptr %938, align 8
  %939 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %937, i32 0, i32 1
  store i64 0, ptr %939, align 4
  %940 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %937, align 8
  %941 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %916)
  %942 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %941)
  %943 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %936, ptr %942, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %940, i1 false)
  %944 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %945 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %944, i32 0, i32 0
  store ptr @32, ptr %945, align 8
  %946 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %944, i32 0, i32 1
  store i64 3, ptr %946, align 4
  %947 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %944, align 8
  %948 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %949 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %948, i32 0, i32 0
  store ptr null, ptr %949, align 8
  %950 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %948, i32 0, i32 1
  store i64 0, ptr %950, align 4
  %951 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %948, align 8
  %952 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %921)
  %953 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %952)
  %954 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %947, ptr %953, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %951, i1 false)
  %955 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %956 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %955, i32 0, i32 0
  store ptr @7, ptr %956, align 8
  %957 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %955, i32 0, i32 1
  store i64 4, ptr %957, align 4
  %958 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %955, align 8
  %959 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %960 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %959, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %932, ptr %960, align 8
  %961 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %959, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %943, ptr %961, align 8
  %962 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %959, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %954, ptr %962, align 8
  %963 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %964 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %963, i32 0, i32 0
  store ptr %959, ptr %964, align 8
  %965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %963, i32 0, i32 1
  store i64 3, ptr %965, align 4
  %966 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %963, i32 0, i32 2
  store i64 3, ptr %966, align 4
  %967 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %963, align 8
  %968 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %958, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %967)
  store ptr %968, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %969 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %892, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %970 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %971 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %970, i32 0, i32 0
  store ptr @18, ptr %971, align 8
  %972 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %970, i32 0, i32 1
  store i64 5, ptr %972, align 4
  %973 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %970, align 8
  %974 = load ptr, ptr @_llgo_int, align 8
  %975 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %976 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %977 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %973, ptr %977, align 8
  %978 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 1
  store ptr %975, ptr %978, align 8
  %979 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %979, align 8
  %980 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %976, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %980, align 8
  %981 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %976, align 8
  %982 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %983 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 0
  store ptr @19, ptr %983, align 8
  %984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 1
  store i64 9, ptr %984, align 4
  %985 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %982, align 8
  %986 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %987 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %988 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %989 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %985, ptr %989, align 8
  %990 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 1
  store ptr %987, ptr %990, align 8
  %991 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %991, align 8
  %992 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %992, align 8
  %993 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %988, align 8
  %994 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %995 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %994, i32 0, i32 0
  store ptr @25, ptr %995, align 8
  %996 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %994, i32 0, i32 1
  store i64 7, ptr %996, align 4
  %997 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %994, align 8
  %998 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %999 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1000 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1001 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1000, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %997, ptr %1001, align 8
  %1002 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1000, i32 0, i32 1
  store ptr %999, ptr %1002, align 8
  %1003 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1000, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %1003, align 8
  %1004 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1000, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %1004, align 8
  %1005 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1000, align 8
  %1006 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1007 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1006, i32 0, i32 0
  store ptr @27, ptr %1007, align 8
  %1008 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1006, i32 0, i32 1
  store i64 6, ptr %1008, align 4
  %1009 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1006, align 8
  %1010 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1011 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1012 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1013 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1009, ptr %1013, align 8
  %1014 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 1
  store ptr %1011, ptr %1014, align 8
  %1015 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %1015, align 8
  %1016 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %1016, align 8
  %1017 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1012, align 8
  %1018 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1019 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, i32 0, i32 0
  store ptr @22, ptr %1019, align 8
  %1020 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, i32 0, i32 1
  store i64 4, ptr %1020, align 4
  %1021 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, align 8
<<<<<<< HEAD
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
=======
  %1022 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1023 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1024 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1025 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1024, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1021, ptr %1025, align 8
  %1026 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1024, i32 0, i32 1
  store ptr %1023, ptr %1026, align 8
  %1027 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1024, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %1027, align 8
  %1028 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1024, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %1028, align 8
  %1029 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1024, align 8
  %1030 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1031 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1030, i32 0, i32 0
  store ptr @28, ptr %1031, align 8
  %1032 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1030, i32 0, i32 1
  store i64 10, ptr %1032, align 4
  %1033 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1030, align 8
  %1034 = load ptr, ptr @_llgo_int, align 8
  %1035 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1036 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1037 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1036, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1033, ptr %1037, align 8
  %1038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1036, i32 0, i32 1
  store ptr %1035, ptr %1038, align 8
  %1039 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1036, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %1039, align 8
  %1040 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1036, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %1040, align 8
  %1041 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1036, align 8
  %1042 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1043 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1042, i32 0, i32 0
  store ptr @29, ptr %1043, align 8
  %1044 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1042, i32 0, i32 1
  store i64 8, ptr %1044, align 4
  %1045 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1042, align 8
  %1046 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1047 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1046, i32 0, i32 0
  store ptr @30, ptr %1047, align 8
  %1048 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1046, i32 0, i32 1
  store i64 44, ptr %1048, align 4
  %1049 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1046, align 8
  %1050 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1049, i64 25, i64 128, i64 0, i64 21)
  %1051 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %_llgo_63, label %_llgo_64

_llgo_62:                                         ; preds = %_llgo_84, %_llgo_60
  %1053 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1054 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1055 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1056 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %885, ptr %1056, align 8
  %1057 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 1
  store ptr %1054, ptr %1057, align 8
  %1058 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %1058, align 8
  %1059 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %1059, align 8
  %1060 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, align 8
  %1061 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1062 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, i32 0, i32 0
  store ptr @33, ptr %1062, align 8
  %1063 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, i32 0, i32 1
  store i64 7, ptr %1063, align 4
  %1064 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, align 8
  %1065 = load ptr, ptr @_llgo_bool, align 8
  %1066 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
>>>>>>> 92c452cd (internal/lib/reflect: lookupCache)
  %1067 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1068 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1064, ptr %1068, align 8
  %1069 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 1
  store ptr %1066, ptr %1069, align 8
  %1070 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %1070, align 8
  %1071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %1071, align 8
  %1072 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, align 8
  %1073 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1074 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1073, i32 0, i32 0
  store ptr @34, ptr %1074, align 8
  %1075 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1073, i32 0, i32 1
  store i64 10, ptr %1075, align 4
  %1076 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1073, align 8
  %1077 = load ptr, ptr @_llgo_bool, align 8
  %1078 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1079 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1080 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1079, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1076, ptr %1080, align 8
  %1081 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1079, i32 0, i32 1
  store ptr %1078, ptr %1081, align 8
  %1082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1079, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %1082, align 8
  %1083 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1079, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %1083, align 8
  %1084 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1079, align 8
  %1085 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1086 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1085, i32 0, i32 0
  store ptr @35, ptr %1086, align 8
  %1087 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1085, i32 0, i32 1
  store i64 13, ptr %1087, align 4
  %1088 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1085, align 8
  %1089 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1090 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1091 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1092 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1091, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1088, ptr %1092, align 8
  %1093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1091, i32 0, i32 1
  store ptr %1090, ptr %1093, align 8
  %1094 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1091, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %1094, align 8
  %1095 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1091, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %1095, align 8
  %1096 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1091, align 8
  %1097 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1098 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1097, i32 0, i32 0
  store ptr @46, ptr %1098, align 8
  %1099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1097, i32 0, i32 1
  store i64 13, ptr %1099, align 4
  %1100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1097, align 8
  %1101 = load ptr, ptr @_llgo_bool, align 8
  %1102 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1103 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1100, ptr %1104, align 8
  %1105 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 1
  store ptr %1102, ptr %1105, align 8
  %1106 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %1106, align 8
  %1107 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %1107, align 8
  %1108 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, align 8
  %1109 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, i32 0, i32 0
  store ptr @47, ptr %1110, align 8
  %1111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, i32 0, i32 1
  store i64 3, ptr %1111, align 4
  %1112 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, align 8
  %1113 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1114 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1115 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1115, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1112, ptr %1116, align 8
  %1117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1115, i32 0, i32 1
  store ptr %1114, ptr %1117, align 8
  %1118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1115, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %1118, align 8
  %1119 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1115, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %1119, align 8
  %1120 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1115, align 8
  %1121 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1121, i32 0, i32 0
  store ptr @48, ptr %1122, align 8
  %1123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1121, i32 0, i32 1
  store i64 4, ptr %1123, align 4
  %1124 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1121, align 8
  %1125 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1126 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1127 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1127, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1124, ptr %1128, align 8
  %1129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1127, i32 0, i32 1
  store ptr %1126, ptr %1129, align 8
  %1130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1127, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %1130, align 8
  %1131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1127, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %1131, align 8
  %1132 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1127, align 8
  %1133 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1133, i32 0, i32 0
  store ptr @51, ptr %1134, align 8
  %1135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1133, i32 0, i32 1
  store i64 7, ptr %1135, align 4
  %1136 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1133, align 8
  %1137 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1138 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1139 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1139, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1136, ptr %1140, align 8
  %1141 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1139, i32 0, i32 1
  store ptr %1138, ptr %1141, align 8
  %1142 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1139, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %1142, align 8
  %1143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1139, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %1143, align 8
  %1144 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1139, align 8
  %1145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1145, i32 0, i32 0
  store ptr @63, ptr %1146, align 8
  %1147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1145, i32 0, i32 1
  store i64 8, ptr %1147, align 4
  %1148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1145, align 8
  %1149 = load ptr, ptr @_llgo_bool, align 8
  %1150 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1151 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1148, ptr %1152, align 8
  %1153 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 1
  store ptr %1150, ptr %1153, align 8
  %1154 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %1154, align 8
  %1155 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %1155, align 8
  %1156 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, align 8
  %1157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1157, i32 0, i32 0
  store ptr @65, ptr %1158, align 8
  %1159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1157, i32 0, i32 1
  store i64 4, ptr %1159, align 4
  %1160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1157, align 8
  %1161 = load ptr, ptr @_llgo_uintptr, align 8
  %1162 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1163 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1163, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1160, ptr %1164, align 8
  %1165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1163, i32 0, i32 1
  store ptr %1162, ptr %1165, align 8
  %1166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1163, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %1166, align 8
  %1167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1163, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %1167, align 8
  %1168 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1163, align 8
  %1169 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1169, i32 0, i32 0
  store ptr @50, ptr %1170, align 8
  %1171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1169, i32 0, i32 1
  store i64 6, ptr %1171, align 4
  %1172 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1169, align 8
  %1173 = load ptr, ptr @_llgo_string, align 8
  %1174 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1175 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1175, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1172, ptr %1176, align 8
  %1177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1175, i32 0, i32 1
  store ptr %1174, ptr %1177, align 8
  %1178 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1175, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %1178, align 8
  %1179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1175, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %1179, align 8
  %1180 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1175, align 8
  %1181 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1181, i32 0, i32 0
  store ptr @66, ptr %1182, align 8
  %1183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1181, i32 0, i32 1
  store i64 10, ptr %1183, align 4
  %1184 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1181, align 8
  %1185 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1186 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1187 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1188 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1187, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1184, ptr %1188, align 8
  %1189 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1187, i32 0, i32 1
  store ptr %1186, ptr %1189, align 8
  %1190 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1187, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %1190, align 8
  %1191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1187, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %1191, align 8
  %1192 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1187, align 8
  %1193 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1193, i32 0, i32 0
  store ptr @76, ptr %1194, align 8
  %1195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1193, i32 0, i32 1
  store i64 8, ptr %1195, align 4
  %1196 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1193, align 8
  %1197 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1198 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1199 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1200 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1199, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1196, ptr %1200, align 8
  %1201 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1199, i32 0, i32 1
  store ptr %1198, ptr %1201, align 8
  %1202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1199, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %1202, align 8
  %1203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1199, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %1203, align 8
  %1204 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1199, align 8
  %1205 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %1206 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %500, ptr %1206, align 8
  %1207 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %795, ptr %1207, align 8
  %1208 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %840, ptr %1208, align 8
  %1209 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %869, ptr %1209, align 8
  %1210 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %881, ptr %1210, align 8
  %1211 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1060, ptr %1211, align 8
  %1212 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1072, ptr %1212, align 8
  %1213 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1084, ptr %1213, align 8
  %1214 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1096, ptr %1214, align 8
  %1215 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1108, ptr %1215, align 8
  %1216 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1120, ptr %1216, align 8
  %1217 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1132, ptr %1217, align 8
  %1218 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1144, ptr %1218, align 8
  %1219 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1156, ptr %1219, align 8
  %1220 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1168, ptr %1220, align 8
  %1221 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1180, ptr %1221, align 8
  %1222 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1192, ptr %1222, align 8
  %1223 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1205, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1204, ptr %1223, align 8
  %1224 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1224, i32 0, i32 0
  store ptr %1205, ptr %1225, align 8
  %1226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1224, i32 0, i32 1
  store i64 18, ptr %1226, align 4
  %1227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1224, i32 0, i32 2
  store i64 18, ptr %1227, align 4
  %1228 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1224, align 8
  %1229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1229, i32 0, i32 0
  store ptr @3, ptr %1230, align 8
  %1231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1229, i32 0, i32 1
  store i64 35, ptr %1231, align 4
  %1232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1229, align 8
  %1233 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1233, i32 0, i32 0
  store ptr @19, ptr %1234, align 8
  %1235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1233, i32 0, i32 1
  store i64 9, ptr %1235, align 4
  %1236 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1233, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %410, %"github.com/goplus/llgo/internal/runtime.String" %1232, %"github.com/goplus/llgo/internal/runtime.String" %1236, ptr %488, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1228)
  br label %_llgo_42

_llgo_63:                                         ; preds = %_llgo_61
  %1237 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1050)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1237)
  store ptr %1237, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_61
  %1238 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1239 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1240 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1241 = icmp eq ptr %1240, null
  br i1 %1241, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %1242 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1243 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1243, i32 0, i32 0
  store ptr %1242, ptr %1244, align 8
  %1245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1243, i32 0, i32 1
  store i64 0, ptr %1245, align 4
  %1246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1243, i32 0, i32 2
  store i64 0, ptr %1246, align 4
  %1247 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1243, align 8
  %1248 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1249 = getelementptr ptr, ptr %1248, i64 0
  store ptr %1239, ptr %1249, align 8
  %1250 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1250, i32 0, i32 0
  store ptr %1248, ptr %1251, align 8
  %1252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1250, i32 0, i32 1
  store i64 1, ptr %1252, align 4
  %1253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1250, i32 0, i32 2
  store i64 1, ptr %1253, align 4
  %1254 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1250, align 8
  %1255 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1247, %"github.com/goplus/llgo/internal/runtime.Slice" %1254, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1255)
  store ptr %1255, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %1256 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1257 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1257, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1045, ptr %1258, align 8
  %1259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1257, i32 0, i32 1
  store ptr %1256, ptr %1259, align 8
  %1260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1257, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %1260, align 8
  %1261 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1257, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %1261, align 8
  %1262 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1257, align 8
  %1263 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1263, i32 0, i32 0
  store ptr @33, ptr %1264, align 8
  %1265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1263, i32 0, i32 1
  store i64 7, ptr %1265, align 4
  %1266 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1263, align 8
  %1267 = load ptr, ptr @_llgo_bool, align 8
  %1268 = load ptr, ptr @_llgo_bool, align 8
  %1269 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %1271 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1272 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1272, i32 0, i32 0
  store ptr %1271, ptr %1273, align 8
  %1274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1272, i32 0, i32 1
  store i64 0, ptr %1274, align 4
  %1275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1272, i32 0, i32 2
  store i64 0, ptr %1275, align 4
  %1276 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1272, align 8
  %1277 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1278 = getelementptr ptr, ptr %1277, i64 0
  store ptr %1268, ptr %1278, align 8
  %1279 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1279, i32 0, i32 0
  store ptr %1277, ptr %1280, align 8
  %1281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1279, i32 0, i32 1
  store i64 1, ptr %1281, align 4
  %1282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1279, i32 0, i32 2
  store i64 1, ptr %1282, align 4
  %1283 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1279, align 8
  %1284 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1276, %"github.com/goplus/llgo/internal/runtime.Slice" %1283, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1284)
  store ptr %1284, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %1285 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1286 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1286, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1266, ptr %1287, align 8
  %1288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1286, i32 0, i32 1
  store ptr %1285, ptr %1288, align 8
  %1289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1286, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %1289, align 8
  %1290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1286, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %1290, align 8
  %1291 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1286, align 8
  %1292 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1292, i32 0, i32 0
  store ptr @34, ptr %1293, align 8
  %1294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1292, i32 0, i32 1
  store i64 10, ptr %1294, align 4
  %1295 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1292, align 8
  %1296 = load ptr, ptr @_llgo_bool, align 8
  %1297 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1298 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1299 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1298, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1295, ptr %1299, align 8
  %1300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1298, i32 0, i32 1
  store ptr %1297, ptr %1300, align 8
  %1301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1298, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %1301, align 8
  %1302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1298, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %1302, align 8
  %1303 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1298, align 8
  %1304 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, i32 0, i32 0
  store ptr @35, ptr %1305, align 8
  %1306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, i32 0, i32 1
  store i64 13, ptr %1306, align 4
  %1307 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, align 8
  %1308 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1308, i32 0, i32 0
  store ptr @36, ptr %1309, align 8
  %1310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1308, i32 0, i32 1
  store i64 49, ptr %1310, align 4
  %1311 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1308, align 8
  %1312 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1311, i64 25, i64 120, i64 0, i64 20)
  %1313 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  store ptr %1312, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %1315 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1316 = load ptr, ptr @_llgo_string, align 8
  %1317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1317, i32 0, i32 0
  store ptr @37, ptr %1318, align 8
  %1319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1317, i32 0, i32 1
  store i64 43, ptr %1319, align 4
  %1320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1317, align 8
  %1321 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1320, i64 25, i64 24, i64 0, i64 3)
  %1322 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %1323 = icmp eq ptr %1322, null
  br i1 %1323, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  store ptr %1321, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %1324 = load ptr, ptr @_llgo_string, align 8
  %1325 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1326 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1326, i32 0, i32 0
  store ptr @30, ptr %1327, align 8
  %1328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1326, i32 0, i32 1
  store i64 44, ptr %1328, align 4
  %1329 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1326, align 8
  %1330 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1329, i64 25, i64 128, i64 0, i64 21)
  %1331 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %1333 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1333, i32 0, i32 0
  store ptr @38, ptr %1334, align 8
  %1335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1333, i32 0, i32 1
  store i64 5, ptr %1335, align 4
  %1336 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1333, align 8
  %1337 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1337, i32 0, i32 0
  store ptr null, ptr %1338, align 8
  %1339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1337, i32 0, i32 1
  store i64 0, ptr %1339, align 4
  %1340 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1337, align 8
  %1341 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1342 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1336, ptr %1341, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1340, i1 false)
  %1343 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1343, i32 0, i32 0
  store ptr @39, ptr %1344, align 8
  %1345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1343, i32 0, i32 1
  store i64 4, ptr %1345, align 4
  %1346 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1343, align 8
  %1347 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1347, i32 0, i32 0
  store ptr null, ptr %1348, align 8
  %1349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1347, i32 0, i32 1
  store i64 0, ptr %1349, align 4
  %1350 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1347, align 8
  %1351 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1330)
  %1352 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1346, ptr %1351, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %1350, i1 false)
  %1353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1353, i32 0, i32 0
  store ptr @7, ptr %1354, align 8
  %1355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1353, i32 0, i32 1
  store i64 4, ptr %1355, align 4
  %1356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1353, align 8
  %1357 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %1358 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1357, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1342, ptr %1358, align 8
  %1359 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1357, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1352, ptr %1359, align 8
  %1360 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1360, i32 0, i32 0
  store ptr %1357, ptr %1361, align 8
  %1362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1360, i32 0, i32 1
  store i64 2, ptr %1362, align 4
  %1363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1360, i32 0, i32 2
  store i64 2, ptr %1363, align 4
  %1364 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1360, align 8
  %1365 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1356, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %1364)
  store ptr %1365, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %1366 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br i1 %1323, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %1367 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1367, i32 0, i32 0
  store ptr @40, ptr %1368, align 8
  %1369 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1367, i32 0, i32 1
  store i64 8, ptr %1369, align 4
  %1370 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1367, align 8
  %1371 = load ptr, ptr @_llgo_bool, align 8
  %1372 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1373 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1374 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1370, ptr %1374, align 8
  %1375 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 1
  store ptr %1372, ptr %1375, align 8
  %1376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", ptr %1376, align 8
  %1377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", ptr %1377, align 8
  %1378 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, align 8
  %1379 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 0
  store ptr @41, ptr %1380, align 8
  %1381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 1
  store i64 4, ptr %1381, align 4
  %1382 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, align 8
  %1383 = load ptr, ptr @_llgo_string, align 8
  %1384 = load ptr, ptr @_llgo_string, align 8
  %1385 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1386 = icmp eq ptr %1385, null
  br i1 %1386, label %_llgo_77, label %_llgo_78

_llgo_76:                                         ; preds = %_llgo_78, %_llgo_74
  %1387 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %1388 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1388, i32 0, i32 0
  store ptr @37, ptr %1389, align 8
  %1390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1388, i32 0, i32 1
  store i64 43, ptr %1390, align 4
  %1391 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1388, align 8
  %1392 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1391, i64 25, i64 24, i64 0, i64 3)
  %1393 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %1394 = icmp eq ptr %1393, null
  br i1 %1394, label %_llgo_79, label %_llgo_80

_llgo_77:                                         ; preds = %_llgo_75
  %1395 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1396 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1396, i32 0, i32 0
  store ptr %1395, ptr %1397, align 8
  %1398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1396, i32 0, i32 1
  store i64 0, ptr %1398, align 4
  %1399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1396, i32 0, i32 2
  store i64 0, ptr %1399, align 4
  %1400 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1396, align 8
  %1401 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1402 = getelementptr ptr, ptr %1401, i64 0
  store ptr %1384, ptr %1402, align 8
  %1403 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1403, i32 0, i32 0
  store ptr %1401, ptr %1404, align 8
  %1405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1403, i32 0, i32 1
  store i64 1, ptr %1405, align 4
  %1406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1403, i32 0, i32 2
  store i64 1, ptr %1406, align 4
  %1407 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1403, align 8
  %1408 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1400, %"github.com/goplus/llgo/internal/runtime.Slice" %1407, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1408)
  store ptr %1408, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_75
  %1409 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1410 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1410, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1382, ptr %1411, align 8
  %1412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1410, i32 0, i32 1
  store ptr %1409, ptr %1412, align 8
  %1413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1410, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", ptr %1413, align 8
  %1414 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1410, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", ptr %1414, align 8
  %1415 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1410, align 8
  %1416 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1416, i32 0, i32 0
  store ptr @42, ptr %1417, align 8
  %1418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1416, i32 0, i32 1
  store i64 7, ptr %1418, align 4
  %1419 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1416, align 8
  %1420 = load ptr, ptr @_llgo_string, align 8
  %1421 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1422 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1419, ptr %1423, align 8
  %1424 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 1
  store ptr %1421, ptr %1424, align 8
  %1425 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", ptr %1425, align 8
  %1426 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", ptr %1426, align 8
  %1427 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, align 8
  %1428 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %1429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1378, ptr %1429, align 8
  %1430 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1415, ptr %1430, align 8
  %1431 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1427, ptr %1431, align 8
  %1432 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1432, i32 0, i32 0
  store ptr %1428, ptr %1433, align 8
  %1434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1432, i32 0, i32 1
  store i64 3, ptr %1434, align 4
  %1435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1432, i32 0, i32 2
  store i64 3, ptr %1435, align 4
  %1436 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1432, align 8
  %1437 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, i32 0, i32 0
  store ptr @3, ptr %1438, align 8
  %1439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, i32 0, i32 1
  store i64 35, ptr %1439, align 4
  %1440 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1437, align 8
  %1441 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1441, i32 0, i32 0
  store ptr @43, ptr %1442, align 8
  %1443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1441, i32 0, i32 1
  store i64 7, ptr %1443, align 4
  %1444 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1441, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1321, %"github.com/goplus/llgo/internal/runtime.String" %1440, %"github.com/goplus/llgo/internal/runtime.String" %1444, ptr %1366, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1436)
  br label %_llgo_76

_llgo_79:                                         ; preds = %_llgo_76
  %1445 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1392)
  store ptr %1445, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_76
  %1446 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %1447 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1447, i32 0, i32 0
  store ptr @1, ptr %1448, align 8
  %1449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1447, i32 0, i32 1
  store i64 40, ptr %1449, align 4
  %1450 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1447, align 8
  %1451 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1450, i64 25, i64 80, i64 0, i64 20)
  %1452 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1452, i32 0, i32 0
  store ptr @37, ptr %1453, align 8
  %1454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1452, i32 0, i32 1
  store i64 43, ptr %1454, align 4
  %1455 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1452, align 8
  %1456 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1455, i64 25, i64 24, i64 0, i64 3)
  %1457 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %1458 = icmp eq ptr %1457, null
  br i1 %1458, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %1459 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1459, i32 0, i32 0
  store ptr @21, ptr %1460, align 8
  %1461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1459, i32 0, i32 1
  store i64 4, ptr %1461, align 4
  %1462 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1459, align 8
  %1463 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1463, i32 0, i32 0
  store ptr null, ptr %1464, align 8
  %1465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1463, i32 0, i32 1
  store i64 0, ptr %1465, align 4
  %1466 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1463, align 8
  %1467 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1462, ptr %1451, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1466, i1 true)
  %1468 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1468, i32 0, i32 0
  store ptr @44, ptr %1469, align 8
  %1470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1468, i32 0, i32 1
  store i64 8, ptr %1470, align 4
  %1471 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1468, align 8
  %1472 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1472, i32 0, i32 0
  store ptr null, ptr %1473, align 8
  %1474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1472, i32 0, i32 1
  store i64 0, ptr %1474, align 4
  %1475 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1472, align 8
  %1476 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1477 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1471, ptr %1476, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1475, i1 false)
  %1478 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1478, i32 0, i32 0
  store ptr @45, ptr %1479, align 8
  %1480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1478, i32 0, i32 1
  store i64 7, ptr %1480, align 4
  %1481 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1478, align 8
  %1482 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1482, i32 0, i32 0
  store ptr null, ptr %1483, align 8
  %1484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1482, i32 0, i32 1
  store i64 0, ptr %1484, align 4
  %1485 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1482, align 8
  %1486 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1456)
  %1487 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1481, ptr %1486, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1485, i1 false)
  %1488 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1488, i32 0, i32 0
  store ptr @7, ptr %1489, align 8
  %1490 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1488, i32 0, i32 1
  store i64 4, ptr %1490, align 4
  %1491 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1488, align 8
  %1492 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1493 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1492, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1467, ptr %1493, align 8
  %1494 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1492, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1477, ptr %1494, align 8
  %1495 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1492, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1487, ptr %1495, align 8
  %1496 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1496, i32 0, i32 0
  store ptr %1492, ptr %1497, align 8
  %1498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1496, i32 0, i32 1
  store i64 3, ptr %1498, align 4
  %1499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1496, i32 0, i32 2
  store i64 3, ptr %1499, align 4
  %1500 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1496, align 8
  %1501 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1491, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1500)
  store ptr %1501, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %1502 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %1314, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %1503 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1503, i32 0, i32 0
  store ptr @18, ptr %1504, align 8
  %1505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1503, i32 0, i32 1
  store i64 5, ptr %1505, align 4
  %1506 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1503, align 8
  %1507 = load ptr, ptr @_llgo_int, align 8
  %1508 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1509 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1510 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1509, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1506, ptr %1510, align 8
  %1511 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1509, i32 0, i32 1
  store ptr %1508, ptr %1511, align 8
  %1512 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1509, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %1512, align 8
  %1513 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1509, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %1513, align 8
  %1514 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1509, align 8
  %1515 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1515, i32 0, i32 0
  store ptr @19, ptr %1516, align 8
  %1517 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1515, i32 0, i32 1
  store i64 9, ptr %1517, align 4
  %1518 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1515, align 8
  %1519 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %1520 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1521 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1522 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1518, ptr %1522, align 8
  %1523 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 1
  store ptr %1520, ptr %1523, align 8
  %1524 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %1524, align 8
  %1525 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %1525, align 8
  %1526 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, align 8
  %1527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, i32 0, i32 0
  store ptr @25, ptr %1528, align 8
  %1529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, i32 0, i32 1
  store i64 7, ptr %1529, align 4
  %1530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, align 8
  %1531 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %1532 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1533 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1534 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1533, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1530, ptr %1534, align 8
  %1535 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1533, i32 0, i32 1
  store ptr %1532, ptr %1535, align 8
  %1536 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1533, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %1536, align 8
  %1537 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1533, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %1537, align 8
  %1538 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1533, align 8
  %1539 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1539, i32 0, i32 0
  store ptr @27, ptr %1540, align 8
  %1541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1539, i32 0, i32 1
  store i64 6, ptr %1541, align 4
  %1542 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1539, align 8
  %1543 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1544 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1545 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1546 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1542, ptr %1546, align 8
  %1547 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 1
  store ptr %1544, ptr %1547, align 8
  %1548 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %1548, align 8
  %1549 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %1549, align 8
  %1550 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1545, align 8
  %1551 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1551, i32 0, i32 0
  store ptr @22, ptr %1552, align 8
  %1553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1551, i32 0, i32 1
  store i64 4, ptr %1553, align 4
  %1554 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1551, align 8
  %1555 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1556 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1557 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1558 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1557, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1554, ptr %1558, align 8
  %1559 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1557, i32 0, i32 1
  store ptr %1556, ptr %1559, align 8
  %1560 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1557, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %1560, align 8
  %1561 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1557, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %1561, align 8
  %1562 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1557, align 8
  %1563 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1563, i32 0, i32 0
  store ptr @28, ptr %1564, align 8
  %1565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1563, i32 0, i32 1
  store i64 10, ptr %1565, align 4
  %1566 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1563, align 8
  %1567 = load ptr, ptr @_llgo_int, align 8
  %1568 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1569 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1570 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1569, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1566, ptr %1570, align 8
  %1571 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1569, i32 0, i32 1
  store ptr %1568, ptr %1571, align 8
  %1572 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1569, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %1572, align 8
  %1573 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1569, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %1573, align 8
  %1574 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1569, align 8
  %1575 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1576 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1575, i32 0, i32 0
  store ptr @29, ptr %1576, align 8
  %1577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1575, i32 0, i32 1
  store i64 8, ptr %1577, align 4
  %1578 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1575, align 8
  %1579 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1580 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1581 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1581, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1578, ptr %1582, align 8
  %1583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1581, i32 0, i32 1
  store ptr %1580, ptr %1583, align 8
  %1584 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1581, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %1584, align 8
  %1585 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1581, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %1585, align 8
  %1586 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1581, align 8
  %1587 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1587, i32 0, i32 0
  store ptr @33, ptr %1588, align 8
  %1589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1587, i32 0, i32 1
  store i64 7, ptr %1589, align 4
  %1590 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1587, align 8
  %1591 = load ptr, ptr @_llgo_bool, align 8
  %1592 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1593 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1594 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1593, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1590, ptr %1594, align 8
  %1595 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1593, i32 0, i32 1
  store ptr %1592, ptr %1595, align 8
  %1596 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1593, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %1596, align 8
  %1597 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1593, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %1597, align 8
  %1598 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1593, align 8
  %1599 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1599, i32 0, i32 0
  store ptr @34, ptr %1600, align 8
  %1601 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1599, i32 0, i32 1
  store i64 10, ptr %1601, align 4
  %1602 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1599, align 8
  %1603 = load ptr, ptr @_llgo_bool, align 8
  %1604 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1605 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1606 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1605, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1602, ptr %1606, align 8
  %1607 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1605, i32 0, i32 1
  store ptr %1604, ptr %1607, align 8
  %1608 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1605, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1608, align 8
  %1609 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1605, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1609, align 8
  %1610 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1605, align 8
  %1611 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1612 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1611, i32 0, i32 0
  store ptr @35, ptr %1612, align 8
  %1613 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1611, i32 0, i32 1
  store i64 13, ptr %1613, align 4
  %1614 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1611, align 8
  %1615 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1616 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1615, i32 0, i32 0
  store ptr @36, ptr %1616, align 8
  %1617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1615, i32 0, i32 1
  store i64 49, ptr %1617, align 4
  %1618 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1615, align 8
  %1619 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1618, i64 25, i64 120, i64 0, i64 20)
  %1620 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1621 = icmp eq ptr %1620, null
  br i1 %1621, label %_llgo_85, label %_llgo_86

_llgo_84:                                         ; preds = %_llgo_104, %_llgo_82
  %1622 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1623 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1624 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1624, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1307, ptr %1625, align 8
  %1626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1624, i32 0, i32 1
  store ptr %1623, ptr %1626, align 8
  %1627 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1624, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %1627, align 8
  %1628 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1624, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %1628, align 8
  %1629 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1624, align 8
  %1630 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1631 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1630, i32 0, i32 0
  store ptr @46, ptr %1631, align 8
  %1632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1630, i32 0, i32 1
  store i64 13, ptr %1632, align 4
  %1633 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1630, align 8
  %1634 = load ptr, ptr @_llgo_bool, align 8
  %1635 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1636 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1637 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1636, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1633, ptr %1637, align 8
  %1638 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1636, i32 0, i32 1
  store ptr %1635, ptr %1638, align 8
  %1639 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1636, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %1639, align 8
  %1640 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1636, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %1640, align 8
  %1641 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1636, align 8
  %1642 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1642, i32 0, i32 0
  store ptr @47, ptr %1643, align 8
  %1644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1642, i32 0, i32 1
  store i64 3, ptr %1644, align 4
  %1645 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1642, align 8
  %1646 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1647 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1648 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1649 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1648, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1645, ptr %1649, align 8
  %1650 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1648, i32 0, i32 1
  store ptr %1647, ptr %1650, align 8
  %1651 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1648, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %1651, align 8
  %1652 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1648, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %1652, align 8
  %1653 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1648, align 8
  %1654 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1655 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1654, i32 0, i32 0
  store ptr @48, ptr %1655, align 8
  %1656 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1654, i32 0, i32 1
  store i64 4, ptr %1656, align 4
  %1657 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1654, align 8
  %1658 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1659 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1660 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1661 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1660, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1657, ptr %1661, align 8
  %1662 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1660, i32 0, i32 1
  store ptr %1659, ptr %1662, align 8
  %1663 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1660, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %1663, align 8
  %1664 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1660, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %1664, align 8
  %1665 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1660, align 8
  %1666 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1667 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1666, i32 0, i32 0
  store ptr @24, ptr %1667, align 8
  %1668 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1666, i32 0, i32 1
  store i64 3, ptr %1668, align 4
  %1669 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1666, align 8
  %1670 = load ptr, ptr @_llgo_int, align 8
  %1671 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1672 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1673 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1672, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1669, ptr %1673, align 8
  %1674 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1672, i32 0, i32 1
  store ptr %1671, ptr %1674, align 8
  %1675 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1672, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %1675, align 8
  %1676 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1672, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %1676, align 8
  %1677 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1672, align 8
  %1678 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1679 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1678, i32 0, i32 0
  store ptr @51, ptr %1679, align 8
  %1680 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1678, i32 0, i32 1
  store i64 7, ptr %1680, align 4
  %1681 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1678, align 8
  %1682 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1683 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1684 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1685 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1681, ptr %1685, align 8
  %1686 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 1
  store ptr %1683, ptr %1686, align 8
  %1687 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %1687, align 8
  %1688 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %1688, align 8
  %1689 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, align 8
  %1690 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1691 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1690, i32 0, i32 0
  store ptr @63, ptr %1691, align 8
  %1692 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1690, i32 0, i32 1
  store i64 8, ptr %1692, align 4
  %1693 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1690, align 8
  %1694 = load ptr, ptr @_llgo_bool, align 8
  %1695 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1696 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1697 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1696, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1693, ptr %1697, align 8
  %1698 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1696, i32 0, i32 1
  store ptr %1695, ptr %1698, align 8
  %1699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1696, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %1699, align 8
  %1700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1696, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %1700, align 8
  %1701 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1696, align 8
  %1702 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1703 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1702, i32 0, i32 0
  store ptr @65, ptr %1703, align 8
  %1704 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1702, i32 0, i32 1
  store i64 4, ptr %1704, align 4
  %1705 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1702, align 8
  %1706 = load ptr, ptr @_llgo_uintptr, align 8
  %1707 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1708 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1709 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1708, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1705, ptr %1709, align 8
  %1710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1708, i32 0, i32 1
  store ptr %1707, ptr %1710, align 8
  %1711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1708, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %1711, align 8
  %1712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1708, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %1712, align 8
  %1713 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1708, align 8
  %1714 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1715 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1714, i32 0, i32 0
  store ptr @50, ptr %1715, align 8
  %1716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1714, i32 0, i32 1
  store i64 6, ptr %1716, align 4
  %1717 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1714, align 8
  %1718 = load ptr, ptr @_llgo_string, align 8
  %1719 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1720 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1717, ptr %1721, align 8
  %1722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 1
  store ptr %1719, ptr %1722, align 8
  %1723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %1723, align 8
  %1724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %1724, align 8
  %1725 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, align 8
  %1726 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, i32 0, i32 0
  store ptr @66, ptr %1727, align 8
  %1728 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, i32 0, i32 1
  store i64 10, ptr %1728, align 4
  %1729 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, align 8
  %1730 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1731 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1732 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1732, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1729, ptr %1733, align 8
  %1734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1732, i32 0, i32 1
  store ptr %1731, ptr %1734, align 8
  %1735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1732, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %1735, align 8
  %1736 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1732, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %1736, align 8
  %1737 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1732, align 8
  %1738 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1739 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1738, i32 0, i32 0
  store ptr @76, ptr %1739, align 8
  %1740 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1738, i32 0, i32 1
  store i64 8, ptr %1740, align 4
  %1741 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1738, align 8
  %1742 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1743 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1744 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1745 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1744, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1741, ptr %1745, align 8
  %1746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1744, i32 0, i32 1
  store ptr %1743, ptr %1746, align 8
  %1747 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1744, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %1747, align 8
  %1748 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1744, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %1748, align 8
  %1749 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1744, align 8
  %1750 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1751 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1750, i32 0, i32 0
  store ptr @88, ptr %1751, align 8
  %1752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1750, i32 0, i32 1
  store i64 8, ptr %1752, align 4
  %1753 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1750, align 8
  %1754 = load ptr, ptr @_llgo_bool, align 8
  %1755 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1756 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1753, ptr %1757, align 8
  %1758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 1
  store ptr %1755, ptr %1758, align 8
  %1759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %1759, align 8
  %1760 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %1760, align 8
  %1761 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1756, align 8
  %1762 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 840)
  %1763 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %981, ptr %1763, align 8
  %1764 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %993, ptr %1764, align 8
  %1765 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1005, ptr %1765, align 8
  %1766 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1017, ptr %1766, align 8
  %1767 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1029, ptr %1767, align 8
  %1768 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1041, ptr %1768, align 8
  %1769 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1262, ptr %1769, align 8
  %1770 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1291, ptr %1770, align 8
  %1771 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1303, ptr %1771, align 8
  %1772 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1629, ptr %1772, align 8
  %1773 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1641, ptr %1773, align 8
  %1774 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1653, ptr %1774, align 8
  %1775 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1665, ptr %1775, align 8
  %1776 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1677, ptr %1776, align 8
  %1777 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1689, ptr %1777, align 8
  %1778 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1701, ptr %1778, align 8
  %1779 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1713, ptr %1779, align 8
  %1780 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1725, ptr %1780, align 8
  %1781 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1737, ptr %1781, align 8
  %1782 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1749, ptr %1782, align 8
  %1783 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1762, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1761, ptr %1783, align 8
  %1784 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1784, i32 0, i32 0
  store ptr %1762, ptr %1785, align 8
  %1786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1784, i32 0, i32 1
  store i64 21, ptr %1786, align 4
  %1787 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1784, i32 0, i32 2
  store i64 21, ptr %1787, align 4
  %1788 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1784, align 8
  %1789 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1790 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1789, i32 0, i32 0
  store ptr @3, ptr %1790, align 8
  %1791 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1789, i32 0, i32 1
  store i64 35, ptr %1791, align 4
  %1792 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1789, align 8
  %1793 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1794 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1793, i32 0, i32 0
  store ptr @29, ptr %1794, align 8
  %1795 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1793, i32 0, i32 1
  store i64 8, ptr %1795, align 4
  %1796 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1793, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %890, %"github.com/goplus/llgo/internal/runtime.String" %1792, %"github.com/goplus/llgo/internal/runtime.String" %1796, ptr %969, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1788)
  br label %_llgo_62

_llgo_85:                                         ; preds = %_llgo_83
  %1797 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1619)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1797)
  store ptr %1797, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_83
  %1798 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1799 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1800 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1801 = icmp eq ptr %1800, null
  br i1 %1801, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %1802 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1803 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1803, i32 0, i32 0
  store ptr %1802, ptr %1804, align 8
  %1805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1803, i32 0, i32 1
  store i64 0, ptr %1805, align 4
  %1806 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1803, i32 0, i32 2
  store i64 0, ptr %1806, align 4
  %1807 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1803, align 8
  %1808 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1809 = getelementptr ptr, ptr %1808, i64 0
  store ptr %1799, ptr %1809, align 8
  %1810 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1811 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1810, i32 0, i32 0
  store ptr %1808, ptr %1811, align 8
  %1812 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1810, i32 0, i32 1
  store i64 1, ptr %1812, align 4
  %1813 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1810, i32 0, i32 2
  store i64 1, ptr %1813, align 4
  %1814 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1810, align 8
  %1815 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1807, %"github.com/goplus/llgo/internal/runtime.Slice" %1814, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1815)
  store ptr %1815, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %1816 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1817 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1818 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1817, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1614, ptr %1818, align 8
  %1819 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1817, i32 0, i32 1
  store ptr %1816, ptr %1819, align 8
  %1820 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1817, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %1820, align 8
  %1821 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1817, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %1821, align 8
  %1822 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1817, align 8
  %1823 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1824 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1823, i32 0, i32 0
  store ptr @46, ptr %1824, align 8
  %1825 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1823, i32 0, i32 1
  store i64 13, ptr %1825, align 4
  %1826 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1823, align 8
  %1827 = load ptr, ptr @_llgo_bool, align 8
  %1828 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1829 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1830 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1829, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1826, ptr %1830, align 8
  %1831 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1829, i32 0, i32 1
  store ptr %1828, ptr %1831, align 8
  %1832 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1829, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %1832, align 8
  %1833 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1829, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %1833, align 8
  %1834 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1829, align 8
  %1835 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1835, i32 0, i32 0
  store ptr @47, ptr %1836, align 8
  %1837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1835, i32 0, i32 1
  store i64 3, ptr %1837, align 4
  %1838 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1835, align 8
  %1839 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1840 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1841 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1842 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1838, ptr %1842, align 8
  %1843 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 1
  store ptr %1840, ptr %1843, align 8
  %1844 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %1844, align 8
  %1845 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %1845, align 8
  %1846 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1841, align 8
  %1847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, i32 0, i32 0
  store ptr @48, ptr %1848, align 8
  %1849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, i32 0, i32 1
  store i64 4, ptr %1849, align 4
  %1850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, align 8
  %1851 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1851, i32 0, i32 0
  store ptr @49, ptr %1852, align 8
  %1853 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1851, i32 0, i32 1
  store i64 40, ptr %1853, align 4
  %1854 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1851, align 8
  %1855 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1854, i64 7, i64 8, i64 1, i64 1)
  %1856 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1857 = icmp eq ptr %1856, null
  br i1 %1857, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  store ptr %1855, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %1858 = load ptr, ptr @_llgo_uint, align 8
  %1859 = icmp eq ptr %1858, null
  br i1 %1859, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %1860 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %1860, ptr @_llgo_uint, align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %1861 = load ptr, ptr @_llgo_uint, align 8
  br i1 %1857, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %1862 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1863 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1862, i32 0, i32 0
  store ptr @50, ptr %1863, align 8
  %1864 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1862, i32 0, i32 1
  store i64 6, ptr %1864, align 4
  %1865 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1862, align 8
  %1866 = load ptr, ptr @_llgo_string, align 8
  %1867 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1868 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1869 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1868, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1865, ptr %1869, align 8
  %1870 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1868, i32 0, i32 1
  store ptr %1867, ptr %1870, align 8
  %1871 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1868, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1871, align 8
  %1872 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1868, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1872, align 8
  %1873 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1868, align 8
  %1874 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1875 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1874, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1865, ptr %1875, align 8
  %1876 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1874, i32 0, i32 1
  store ptr %1867, ptr %1876, align 8
  %1877 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1874, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1877, align 8
  %1878 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1874, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.Kind.String", ptr %1878, align 8
  %1879 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1874, align 8
  %1880 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1881 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1880, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1879, ptr %1881, align 8
  %1882 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1883 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1882, i32 0, i32 0
  store ptr %1880, ptr %1883, align 8
  %1884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1882, i32 0, i32 1
  store i64 1, ptr %1884, align 4
  %1885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1882, i32 0, i32 2
  store i64 1, ptr %1885, align 4
  %1886 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1882, align 8
  %1887 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1888 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1887, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1873, ptr %1888, align 8
  %1889 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1889, i32 0, i32 0
  store ptr %1887, ptr %1890, align 8
  %1891 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1889, i32 0, i32 1
  store i64 1, ptr %1891, align 4
  %1892 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1889, i32 0, i32 2
  store i64 1, ptr %1892, align 4
  %1893 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1889, align 8
  %1894 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1894, i32 0, i32 0
  store ptr @3, ptr %1895, align 8
  %1896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1894, i32 0, i32 1
  store i64 35, ptr %1896, align 4
  %1897 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1894, align 8
  %1898 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1899 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1898, i32 0, i32 0
  store ptr @48, ptr %1899, align 8
  %1900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1898, i32 0, i32 1
  store i64 4, ptr %1900, align 4
  %1901 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1898, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1855, %"github.com/goplus/llgo/internal/runtime.String" %1897, %"github.com/goplus/llgo/internal/runtime.String" %1901, ptr %1861, %"github.com/goplus/llgo/internal/runtime.Slice" %1886, %"github.com/goplus/llgo/internal/runtime.Slice" %1893)
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %1902 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1903 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1904 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1905 = icmp eq ptr %1904, null
  br i1 %1905, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %1906 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1907 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1907, i32 0, i32 0
  store ptr %1906, ptr %1908, align 8
  %1909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1907, i32 0, i32 1
  store i64 0, ptr %1909, align 4
  %1910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1907, i32 0, i32 2
  store i64 0, ptr %1910, align 4
  %1911 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1907, align 8
  %1912 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1913 = getelementptr ptr, ptr %1912, i64 0
  store ptr %1903, ptr %1913, align 8
  %1914 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1915 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1914, i32 0, i32 0
  store ptr %1912, ptr %1915, align 8
  %1916 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1914, i32 0, i32 1
  store i64 1, ptr %1916, align 4
  %1917 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1914, i32 0, i32 2
  store i64 1, ptr %1917, align 4
  %1918 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1914, align 8
  %1919 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1911, %"github.com/goplus/llgo/internal/runtime.Slice" %1918, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1919)
  store ptr %1919, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %1920 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1921 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1922 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1921, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1850, ptr %1922, align 8
  %1923 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1921, i32 0, i32 1
  store ptr %1920, ptr %1923, align 8
  %1924 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1921, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1924, align 8
  %1925 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1921, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1925, align 8
  %1926 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1921, align 8
  %1927 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1928 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1927, i32 0, i32 0
  store ptr @24, ptr %1928, align 8
  %1929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1927, i32 0, i32 1
  store i64 3, ptr %1929, align 4
  %1930 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1927, align 8
  %1931 = load ptr, ptr @_llgo_int, align 8
  %1932 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1933 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1934 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1930, ptr %1934, align 8
  %1935 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 1
  store ptr %1932, ptr %1935, align 8
  %1936 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1936, align 8
  %1937 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1937, align 8
  %1938 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, align 8
  %1939 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1940 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1939, i32 0, i32 0
  store ptr @51, ptr %1940, align 8
  %1941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1939, i32 0, i32 1
  store i64 7, ptr %1941, align 4
  %1942 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1939, align 8
  %1943 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1944 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1943, i32 0, i32 0
  store ptr @52, ptr %1944, align 8
  %1945 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1943, i32 0, i32 1
  store i64 43, ptr %1945, align 4
  %1946 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1943, align 8
  %1947 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1946, i64 25, i64 136, i64 0, i64 23)
  %1948 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1949 = icmp eq ptr %1948, null
  br i1 %1949, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  store ptr %1947, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %1950 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1951 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1952 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1953 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1954 = load ptr, ptr @_llgo_Pointer, align 8
  %1955 = load ptr, ptr @_llgo_Pointer, align 8
  %1956 = load ptr, ptr @_llgo_uintptr, align 8
  %1957 = load ptr, ptr @_llgo_uintptr, align 8
  %1958 = load ptr, ptr @_llgo_Pointer, align 8
  %1959 = load ptr, ptr @_llgo_Pointer, align 8
  %1960 = load ptr, ptr @_llgo_uintptr, align 8
  %1961 = load ptr, ptr @_llgo_uintptr, align 8
  %1962 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %1963 = icmp eq ptr %1962, null
  br i1 %1963, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %1964 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1965 = getelementptr ptr, ptr %1964, i64 0
  store ptr %1958, ptr %1965, align 8
  %1966 = getelementptr ptr, ptr %1964, i64 1
  store ptr %1959, ptr %1966, align 8
  %1967 = getelementptr ptr, ptr %1964, i64 2
  store ptr %1960, ptr %1967, align 8
  %1968 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1969 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1968, i32 0, i32 0
  store ptr %1964, ptr %1969, align 8
  %1970 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1968, i32 0, i32 1
  store i64 3, ptr %1970, align 4
  %1971 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1968, i32 0, i32 2
  store i64 3, ptr %1971, align 4
  %1972 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1968, align 8
  %1973 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1974 = getelementptr ptr, ptr %1973, i64 0
  store ptr %1961, ptr %1974, align 8
  %1975 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1976 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1975, i32 0, i32 0
  store ptr %1973, ptr %1976, align 8
  %1977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1975, i32 0, i32 1
  store i64 1, ptr %1977, align 4
  %1978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1975, i32 0, i32 2
  store i64 1, ptr %1978, align 4
  %1979 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1975, align 8
  %1980 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1972, %"github.com/goplus/llgo/internal/runtime.Slice" %1979, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1980)
  store ptr %1980, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %1981 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %1982 = load ptr, ptr @_llgo_Pointer, align 8
  %1983 = load ptr, ptr @_llgo_Pointer, align 8
  %1984 = load ptr, ptr @_llgo_Pointer, align 8
  %1985 = load ptr, ptr @_llgo_uintptr, align 8
  %1986 = load ptr, ptr @_llgo_uintptr, align 8
  %1987 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1988 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, i32 0, i32 0
  store ptr @5, ptr %1988, align 8
  %1989 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, i32 0, i32 1
  store i64 1, ptr %1989, align 4
  %1990 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, align 8
  %1991 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1992 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1991, i32 0, i32 0
  store ptr null, ptr %1992, align 8
  %1993 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1991, i32 0, i32 1
  store i64 0, ptr %1993, align 4
  %1994 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1991, align 8
  %1995 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1996 = getelementptr ptr, ptr %1995, i64 0
  store ptr %1983, ptr %1996, align 8
  %1997 = getelementptr ptr, ptr %1995, i64 1
  store ptr %1984, ptr %1997, align 8
  %1998 = getelementptr ptr, ptr %1995, i64 2
  store ptr %1985, ptr %1998, align 8
  %1999 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2000 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1999, i32 0, i32 0
  store ptr %1995, ptr %2000, align 8
  %2001 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1999, i32 0, i32 1
  store i64 3, ptr %2001, align 4
  %2002 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1999, i32 0, i32 2
  store i64 3, ptr %2002, align 4
  %2003 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1999, align 8
  %2004 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2005 = getelementptr ptr, ptr %2004, i64 0
  store ptr %1986, ptr %2005, align 8
  %2006 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2007 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2006, i32 0, i32 0
  store ptr %2004, ptr %2007, align 8
  %2008 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2006, i32 0, i32 1
  store i64 1, ptr %2008, align 4
  %2009 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2006, i32 0, i32 2
  store i64 1, ptr %2009, align 4
  %2010 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2006, align 8
  %2011 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2003, %"github.com/goplus/llgo/internal/runtime.Slice" %2010, i1 false)
  %2012 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1990, ptr %2011, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1994, i1 false)
  %2013 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2014 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2013, i32 0, i32 0
  store ptr @6, ptr %2014, align 8
  %2015 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2013, i32 0, i32 1
  store i64 4, ptr %2015, align 4
  %2016 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2013, align 8
  %2017 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2018 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2017, i32 0, i32 0
  store ptr null, ptr %2018, align 8
  %2019 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2017, i32 0, i32 1
  store i64 0, ptr %2019, align 4
  %2020 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2017, align 8
  %2021 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %2022 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2016, ptr %2021, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %2020, i1 false)
  %2023 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2024 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2023, i32 0, i32 0
  store ptr @7, ptr %2024, align 8
  %2025 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2023, i32 0, i32 1
  store i64 4, ptr %2025, align 4
  %2026 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2023, align 8
  %2027 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %2028 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2027, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2012, ptr %2028, align 8
  %2029 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2027, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2022, ptr %2029, align 8
  %2030 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2031 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2030, i32 0, i32 0
  store ptr %2027, ptr %2031, align 8
  %2032 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2030, i32 0, i32 1
  store i64 2, ptr %2032, align 4
  %2033 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2030, i32 0, i32 2
  store i64 2, ptr %2033, align 4
  %2034 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2030, align 8
  %2035 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2026, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %2034)
  store ptr %2035, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %2036 = load ptr, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %2037 = load ptr, ptr @_llgo_uint8, align 8
  %2038 = load ptr, ptr @_llgo_uint8, align 8
  %2039 = load ptr, ptr @_llgo_uint16, align 8
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %2041 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  store ptr %2041, ptr @_llgo_uint16, align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %2042 = load ptr, ptr @_llgo_uint16, align 8
  %2043 = load ptr, ptr @_llgo_uint32, align 8
  %2044 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2045 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2044, i32 0, i32 0
  store ptr @1, ptr %2045, align 8
  %2046 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2044, i32 0, i32 1
  store i64 40, ptr %2046, align 4
  %2047 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2044, align 8
  %2048 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2047, i64 25, i64 80, i64 0, i64 20)
  %2049 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2050 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2049, i32 0, i32 0
  store ptr @1, ptr %2050, align 8
  %2051 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2049, i32 0, i32 1
  store i64 40, ptr %2051, align 4
  %2052 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2049, align 8
  %2053 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2052, i64 25, i64 80, i64 0, i64 20)
  %2054 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2055 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2054, i32 0, i32 0
  store ptr @1, ptr %2055, align 8
  %2056 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2054, i32 0, i32 1
  store i64 40, ptr %2056, align 4
  %2057 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2054, align 8
  %2058 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2057, i64 25, i64 80, i64 0, i64 20)
  %2059 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2060 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2059, i32 0, i32 0
  store ptr @1, ptr %2060, align 8
  %2061 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2059, i32 0, i32 1
  store i64 40, ptr %2061, align 4
  %2062 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2059, align 8
  %2063 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2062, i64 25, i64 80, i64 0, i64 20)
  %2064 = load ptr, ptr @_llgo_Pointer, align 8
  %2065 = load ptr, ptr @_llgo_Pointer, align 8
  %2066 = load ptr, ptr @_llgo_uintptr, align 8
  %2067 = load ptr, ptr @_llgo_uintptr, align 8
  %2068 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2069 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2068, i32 0, i32 0
  store ptr @21, ptr %2069, align 8
  %2070 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2068, i32 0, i32 1
  store i64 4, ptr %2070, align 4
  %2071 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2068, align 8
  %2072 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2073 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2072, i32 0, i32 0
  store ptr null, ptr %2073, align 8
  %2074 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2072, i32 0, i32 1
  store i64 0, ptr %2074, align 4
  %2075 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2072, align 8
  %2076 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2071, ptr %2048, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2075, i1 true)
  %2077 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2078 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2077, i32 0, i32 0
  store ptr @47, ptr %2078, align 8
  %2079 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2077, i32 0, i32 1
  store i64 3, ptr %2079, align 4
  %2080 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2077, align 8
  %2081 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2082 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2081, i32 0, i32 0
  store ptr null, ptr %2082, align 8
  %2083 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2081, i32 0, i32 1
  store i64 0, ptr %2083, align 4
  %2084 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2081, align 8
  %2085 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2053)
  %2086 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2080, ptr %2085, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %2084, i1 false)
  %2087 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2088 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2087, i32 0, i32 0
  store ptr @22, ptr %2088, align 8
  %2089 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2087, i32 0, i32 1
  store i64 4, ptr %2089, align 4
  %2090 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2087, align 8
  %2091 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2092 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2091, i32 0, i32 0
  store ptr null, ptr %2092, align 8
  %2093 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2091, i32 0, i32 1
  store i64 0, ptr %2093, align 4
  %2094 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2091, align 8
  %2095 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2058)
  %2096 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2090, ptr %2095, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %2094, i1 false)
  %2097 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2098 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2097, i32 0, i32 0
  store ptr @53, ptr %2098, align 8
  %2099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2097, i32 0, i32 1
  store i64 6, ptr %2099, align 4
  %2100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2097, align 8
  %2101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2101, i32 0, i32 0
  store ptr null, ptr %2102, align 8
  %2103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2101, i32 0, i32 1
  store i64 0, ptr %2103, align 4
  %2104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2101, align 8
  %2105 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2063)
  %2106 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2100, ptr %2105, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %2104, i1 false)
  %2107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, i32 0, i32 0
  store ptr @54, ptr %2108, align 8
  %2109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, i32 0, i32 1
  store i64 6, ptr %2109, align 4
  %2110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, align 8
  %2111 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2111, i32 0, i32 0
  store ptr null, ptr %2112, align 8
  %2113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2111, i32 0, i32 1
  store i64 0, ptr %2113, align 4
  %2114 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2111, align 8
  %2115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2115, i32 0, i32 0
  store ptr @5, ptr %2116, align 8
  %2117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2115, i32 0, i32 1
  store i64 1, ptr %2117, align 4
  %2118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2115, align 8
  %2119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2119, i32 0, i32 0
  store ptr null, ptr %2120, align 8
  %2121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2119, i32 0, i32 1
  store i64 0, ptr %2121, align 4
  %2122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2119, align 8
  %2123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %2124 = getelementptr ptr, ptr %2123, i64 0
  store ptr %2064, ptr %2124, align 8
  %2125 = getelementptr ptr, ptr %2123, i64 1
  store ptr %2065, ptr %2125, align 8
  %2126 = getelementptr ptr, ptr %2123, i64 2
  store ptr %2066, ptr %2126, align 8
  %2127 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2127, i32 0, i32 0
  store ptr %2123, ptr %2128, align 8
  %2129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2127, i32 0, i32 1
  store i64 3, ptr %2129, align 4
  %2130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2127, i32 0, i32 2
  store i64 3, ptr %2130, align 4
  %2131 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2127, align 8
  %2132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2133 = getelementptr ptr, ptr %2132, i64 0
  store ptr %2067, ptr %2133, align 8
  %2134 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2134, i32 0, i32 0
  store ptr %2132, ptr %2135, align 8
  %2136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2134, i32 0, i32 1
  store i64 1, ptr %2136, align 4
  %2137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2134, i32 0, i32 2
  store i64 1, ptr %2137, align 4
  %2138 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2134, align 8
  %2139 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2131, %"github.com/goplus/llgo/internal/runtime.Slice" %2138, i1 false)
  %2140 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2118, ptr %2139, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2122, i1 false)
  %2141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2141, i32 0, i32 0
  store ptr @6, ptr %2142, align 8
  %2143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2141, i32 0, i32 1
  store i64 4, ptr %2143, align 4
  %2144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2141, align 8
  %2145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2145, i32 0, i32 0
  store ptr null, ptr %2146, align 8
  %2147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2145, i32 0, i32 1
  store i64 0, ptr %2147, align 4
  %2148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2145, align 8
  %2149 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %2150 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2144, ptr %2149, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %2148, i1 false)
  %2151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 0
  store ptr @7, ptr %2152, align 8
  %2153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 1
  store i64 4, ptr %2153, align 4
  %2154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, align 8
  %2155 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %2156 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2155, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2140, ptr %2156, align 8
  %2157 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2155, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2150, ptr %2157, align 8
  %2158 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2158, i32 0, i32 0
  store ptr %2155, ptr %2159, align 8
  %2160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2158, i32 0, i32 1
  store i64 2, ptr %2160, align 4
  %2161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2158, i32 0, i32 2
  store i64 2, ptr %2161, align 4
  %2162 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2158, align 8
  %2163 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2154, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %2162)
  %2164 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2110, ptr %2163, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %2114, i1 false)
  %2165 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2165, i32 0, i32 0
  store ptr @55, ptr %2166, align 8
  %2167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2165, i32 0, i32 1
  store i64 7, ptr %2167, align 4
  %2168 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2165, align 8
  %2169 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2169, i32 0, i32 0
  store ptr null, ptr %2170, align 8
  %2171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2169, i32 0, i32 1
  store i64 0, ptr %2171, align 4
  %2172 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2169, align 8
  %2173 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %2174 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2168, ptr %2173, i64 112, %"github.com/goplus/llgo/internal/runtime.String" %2172, i1 false)
  %2175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2175, i32 0, i32 0
  store ptr @56, ptr %2176, align 8
  %2177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2175, i32 0, i32 1
  store i64 9, ptr %2177, align 4
  %2178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2175, align 8
  %2179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2179, i32 0, i32 0
  store ptr null, ptr %2180, align 8
  %2181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2179, i32 0, i32 1
  store i64 0, ptr %2181, align 4
  %2182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2179, align 8
  %2183 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %2184 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2178, ptr %2183, i64 113, %"github.com/goplus/llgo/internal/runtime.String" %2182, i1 false)
  %2185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2185, i32 0, i32 0
  store ptr @57, ptr %2186, align 8
  %2187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2185, i32 0, i32 1
  store i64 10, ptr %2187, align 4
  %2188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2185, align 8
  %2189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2189, i32 0, i32 0
  store ptr null, ptr %2190, align 8
  %2191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2189, i32 0, i32 1
  store i64 0, ptr %2191, align 4
  %2192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2189, align 8
  %2193 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %2194 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2188, ptr %2193, i64 114, %"github.com/goplus/llgo/internal/runtime.String" %2192, i1 false)
  %2195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 0
  store ptr @58, ptr %2196, align 8
  %2197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 1
  store i64 5, ptr %2197, align 4
  %2198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, align 8
  %2199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2199, i32 0, i32 0
  store ptr null, ptr %2200, align 8
  %2201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2199, i32 0, i32 1
  store i64 0, ptr %2201, align 4
  %2202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2199, align 8
  %2203 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %2204 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2198, ptr %2203, i64 116, %"github.com/goplus/llgo/internal/runtime.String" %2202, i1 false)
  %2205 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2205, i32 0, i32 0
  store ptr @7, ptr %2206, align 8
  %2207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2205, i32 0, i32 1
  store i64 4, ptr %2207, align 4
  %2208 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2205, align 8
  %2209 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %2210 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2076, ptr %2210, align 8
  %2211 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2086, ptr %2211, align 8
  %2212 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2096, ptr %2212, align 8
  %2213 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %2106, ptr %2213, align 8
  %2214 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %2164, ptr %2214, align 8
  %2215 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %2174, ptr %2215, align 8
  %2216 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %2184, ptr %2216, align 8
  %2217 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %2194, ptr %2217, align 8
  %2218 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2209, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %2204, ptr %2218, align 8
  %2219 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2219, i32 0, i32 0
  store ptr %2209, ptr %2220, align 8
  %2221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2219, i32 0, i32 1
  store i64 9, ptr %2221, align 4
  %2222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2219, i32 0, i32 2
  store i64 9, ptr %2222, align 4
  %2223 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2219, align 8
  %2224 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2208, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %2223)
  store ptr %2224, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %2225 = load ptr, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %1949, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %2226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2226, i32 0, i32 0
  store ptr @18, ptr %2227, align 8
  %2228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2226, i32 0, i32 1
  store i64 5, ptr %2228, align 4
  %2229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2226, align 8
  %2230 = load ptr, ptr @_llgo_int, align 8
  %2231 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2232 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2233 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2232, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2229, ptr %2233, align 8
  %2234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2232, i32 0, i32 1
  store ptr %2231, ptr %2234, align 8
  %2235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2232, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %2235, align 8
  %2236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2232, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %2236, align 8
  %2237 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2232, align 8
  %2238 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2238, i32 0, i32 0
  store ptr @19, ptr %2239, align 8
  %2240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2238, i32 0, i32 1
  store i64 9, ptr %2240, align 4
  %2241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2238, align 8
  %2242 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %2243 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2244 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2245 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2241, ptr %2245, align 8
  %2246 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 1
  store ptr %2243, ptr %2246, align 8
  %2247 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %2247, align 8
  %2248 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %2248, align 8
  %2249 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, align 8
  %2250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 0
  store ptr @25, ptr %2251, align 8
  %2252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 1
  store i64 7, ptr %2252, align 4
  %2253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, align 8
  %2254 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %2255 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %2256 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2256, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2253, ptr %2257, align 8
  %2258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2256, i32 0, i32 1
  store ptr %2255, ptr %2258, align 8
  %2259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2256, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %2259, align 8
  %2260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2256, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %2260, align 8
  %2261 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2256, align 8
  %2262 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2262, i32 0, i32 0
  store ptr @27, ptr %2263, align 8
  %2264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2262, i32 0, i32 1
  store i64 6, ptr %2264, align 4
  %2265 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2262, align 8
  %2266 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %2267 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2268 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2268, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2265, ptr %2269, align 8
  %2270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2268, i32 0, i32 1
  store ptr %2267, ptr %2270, align 8
  %2271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2268, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %2271, align 8
  %2272 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2268, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %2272, align 8
  %2273 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2268, align 8
  %2274 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2274, i32 0, i32 0
  store ptr @28, ptr %2275, align 8
  %2276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2274, i32 0, i32 1
  store i64 10, ptr %2276, align 4
  %2277 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2274, align 8
  %2278 = load ptr, ptr @_llgo_int, align 8
  %2279 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2280 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2280, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2277, ptr %2281, align 8
  %2282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2280, i32 0, i32 1
  store ptr %2279, ptr %2282, align 8
  %2283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2280, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %2283, align 8
  %2284 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2280, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %2284, align 8
  %2285 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2280, align 8
  %2286 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2286, i32 0, i32 0
  store ptr @29, ptr %2287, align 8
  %2288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2286, i32 0, i32 1
  store i64 8, ptr %2288, align 4
  %2289 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2286, align 8
  %2290 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %2291 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2292 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2289, ptr %2293, align 8
  %2294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 1
  store ptr %2291, ptr %2294, align 8
  %2295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %2295, align 8
  %2296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %2296, align 8
  %2297 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, align 8
  %2298 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, i32 0, i32 0
  store ptr @33, ptr %2299, align 8
  %2300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, i32 0, i32 1
  store i64 7, ptr %2300, align 4
  %2301 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, align 8
  %2302 = load ptr, ptr @_llgo_bool, align 8
  %2303 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2304 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2304, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2301, ptr %2305, align 8
  %2306 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2304, i32 0, i32 1
  store ptr %2303, ptr %2306, align 8
  %2307 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2304, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %2307, align 8
  %2308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2304, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %2308, align 8
  %2309 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2304, align 8
  %2310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2310, i32 0, i32 0
  store ptr @59, ptr %2311, align 8
  %2312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2310, i32 0, i32 1
  store i64 14, ptr %2312, align 4
  %2313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2310, align 8
  %2314 = load ptr, ptr @_llgo_bool, align 8
  %2315 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2316 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2317 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2313, ptr %2317, align 8
  %2318 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 1
  store ptr %2315, ptr %2318, align 8
  %2319 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %2319, align 8
  %2320 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %2320, align 8
  %2321 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2316, align 8
  %2322 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2322, i32 0, i32 0
  store ptr @34, ptr %2323, align 8
  %2324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2322, i32 0, i32 1
  store i64 10, ptr %2324, align 4
  %2325 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2322, align 8
  %2326 = load ptr, ptr @_llgo_bool, align 8
  %2327 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2328 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2329 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2328, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2325, ptr %2329, align 8
  %2330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2328, i32 0, i32 1
  store ptr %2327, ptr %2330, align 8
  %2331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2328, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %2331, align 8
  %2332 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2328, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %2332, align 8
  %2333 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2328, align 8
  %2334 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2334, i32 0, i32 0
  store ptr @60, ptr %2335, align 8
  %2336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2334, i32 0, i32 1
  store i64 12, ptr %2336, align 4
  %2337 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2334, align 8
  %2338 = load ptr, ptr @_llgo_bool, align 8
  %2339 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2340 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2341 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2340, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2337, ptr %2341, align 8
  %2342 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2340, i32 0, i32 1
  store ptr %2339, ptr %2342, align 8
  %2343 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2340, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %2343, align 8
  %2344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2340, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %2344, align 8
  %2345 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2340, align 8
  %2346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2346, i32 0, i32 0
  store ptr @61, ptr %2347, align 8
  %2348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2346, i32 0, i32 1
  store i64 11, ptr %2348, align 4
  %2349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2346, align 8
  %2350 = load ptr, ptr @_llgo_bool, align 8
  %2351 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2352 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2353 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2352, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2349, ptr %2353, align 8
  %2354 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2352, i32 0, i32 1
  store ptr %2351, ptr %2354, align 8
  %2355 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2352, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %2355, align 8
  %2356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2352, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %2356, align 8
  %2357 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2352, align 8
  %2358 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2358, i32 0, i32 0
  store ptr @35, ptr %2359, align 8
  %2360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2358, i32 0, i32 1
  store i64 13, ptr %2360, align 4
  %2361 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2358, align 8
  %2362 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %2363 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2364 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2365 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2364, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2361, ptr %2365, align 8
  %2366 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2364, i32 0, i32 1
  store ptr %2363, ptr %2366, align 8
  %2367 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2364, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %2367, align 8
  %2368 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2364, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %2368, align 8
  %2369 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2364, align 8
  %2370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2370, i32 0, i32 0
  store ptr @46, ptr %2371, align 8
  %2372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2370, i32 0, i32 1
  store i64 13, ptr %2372, align 4
  %2373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2370, align 8
  %2374 = load ptr, ptr @_llgo_bool, align 8
  %2375 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2376 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2373, ptr %2377, align 8
  %2378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 1
  store ptr %2375, ptr %2378, align 8
  %2379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %2379, align 8
  %2380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %2380, align 8
  %2381 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, align 8
  %2382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, i32 0, i32 0
  store ptr @48, ptr %2383, align 8
  %2384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, i32 0, i32 1
  store i64 4, ptr %2384, align 4
  %2385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, align 8
  %2386 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %2387 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2388 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2388, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2385, ptr %2389, align 8
  %2390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2388, i32 0, i32 1
  store ptr %2387, ptr %2390, align 8
  %2391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2388, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %2391, align 8
  %2392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2388, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %2392, align 8
  %2393 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2388, align 8
  %2394 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2394, i32 0, i32 0
  store ptr @24, ptr %2395, align 8
  %2396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2394, i32 0, i32 1
  store i64 3, ptr %2396, align 4
  %2397 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2394, align 8
  %2398 = load ptr, ptr @_llgo_int, align 8
  %2399 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2400 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2400, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2397, ptr %2401, align 8
  %2402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2400, i32 0, i32 1
  store ptr %2399, ptr %2402, align 8
  %2403 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2400, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %2403, align 8
  %2404 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2400, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %2404, align 8
  %2405 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2400, align 8
  %2406 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2406, i32 0, i32 0
  store ptr @51, ptr %2407, align 8
  %2408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2406, i32 0, i32 1
  store i64 7, ptr %2408, align 4
  %2409 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2406, align 8
  %2410 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2410, i32 0, i32 0
  store ptr @52, ptr %2411, align 8
  %2412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2410, i32 0, i32 1
  store i64 43, ptr %2412, align 4
  %2413 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2410, align 8
  %2414 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2413, i64 25, i64 136, i64 0, i64 23)
  %2415 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2416 = icmp eq ptr %2415, null
  br i1 %2416, label %_llgo_105, label %_llgo_106

_llgo_104:                                        ; preds = %_llgo_124, %_llgo_102
  %2417 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2418 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2419 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2420 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2419, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1942, ptr %2420, align 8
  %2421 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2419, i32 0, i32 1
  store ptr %2418, ptr %2421, align 8
  %2422 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2419, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2422, align 8
  %2423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2419, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2423, align 8
  %2424 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2419, align 8
  %2425 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2425, i32 0, i32 0
  store ptr @63, ptr %2426, align 8
  %2427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2425, i32 0, i32 1
  store i64 8, ptr %2427, align 4
  %2428 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2425, align 8
  %2429 = load ptr, ptr @_llgo_bool, align 8
  %2430 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2431 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2432 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2431, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2428, ptr %2432, align 8
  %2433 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2431, i32 0, i32 1
  store ptr %2430, ptr %2433, align 8
  %2434 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2431, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2434, align 8
  %2435 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2431, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2435, align 8
  %2436 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2431, align 8
  %2437 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2437, i32 0, i32 0
  store ptr @65, ptr %2438, align 8
  %2439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2437, i32 0, i32 1
  store i64 4, ptr %2439, align 4
  %2440 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2437, align 8
  %2441 = load ptr, ptr @_llgo_uintptr, align 8
  %2442 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2443 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2444 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2443, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2440, ptr %2444, align 8
  %2445 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2443, i32 0, i32 1
  store ptr %2442, ptr %2445, align 8
  %2446 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2443, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2446, align 8
  %2447 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2443, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2447, align 8
  %2448 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2443, align 8
  %2449 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2449, i32 0, i32 0
  store ptr @50, ptr %2450, align 8
  %2451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2449, i32 0, i32 1
  store i64 6, ptr %2451, align 4
  %2452 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2449, align 8
  %2453 = load ptr, ptr @_llgo_string, align 8
  %2454 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2455 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2456 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2455, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2452, ptr %2456, align 8
  %2457 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2455, i32 0, i32 1
  store ptr %2454, ptr %2457, align 8
  %2458 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2455, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2458, align 8
  %2459 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2455, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2459, align 8
  %2460 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2455, align 8
  %2461 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2461, i32 0, i32 0
  store ptr @66, ptr %2462, align 8
  %2463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2461, i32 0, i32 1
  store i64 10, ptr %2463, align 4
  %2464 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2461, align 8
  %2465 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %2466 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2467 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2468 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2467, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2464, ptr %2468, align 8
  %2469 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2467, i32 0, i32 1
  store ptr %2466, ptr %2469, align 8
  %2470 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2467, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2470, align 8
  %2471 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2467, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2471, align 8
  %2472 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2467, align 8
  %2473 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2473, i32 0, i32 0
  store ptr @76, ptr %2474, align 8
  %2475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2473, i32 0, i32 1
  store i64 8, ptr %2475, align 4
  %2476 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2473, align 8
  %2477 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %2478 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2479 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2480 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2476, ptr %2480, align 8
  %2481 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 1
  store ptr %2478, ptr %2481, align 8
  %2482 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2482, align 8
  %2483 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2483, align 8
  %2484 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2479, align 8
  %2485 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %2486 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1514, ptr %2486, align 8
  %2487 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1526, ptr %2487, align 8
  %2488 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1538, ptr %2488, align 8
  %2489 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1550, ptr %2489, align 8
  %2490 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1562, ptr %2490, align 8
  %2491 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1574, ptr %2491, align 8
  %2492 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1586, ptr %2492, align 8
  %2493 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1598, ptr %2493, align 8
  %2494 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1610, ptr %2494, align 8
  %2495 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1822, ptr %2495, align 8
  %2496 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1834, ptr %2496, align 8
  %2497 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1846, ptr %2497, align 8
  %2498 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1926, ptr %2498, align 8
  %2499 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1938, ptr %2499, align 8
  %2500 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2424, ptr %2500, align 8
  %2501 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2436, ptr %2501, align 8
  %2502 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2448, ptr %2502, align 8
  %2503 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2460, ptr %2503, align 8
  %2504 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2485, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2472, ptr %2504, align 8
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
  store ptr @35, ptr %2516, align 8
  %2517 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2515, i32 0, i32 1
  store i64 13, ptr %2517, align 4
  %2518 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2515, align 8
<<<<<<< HEAD
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
=======
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1312, %"github.com/goplus/llgo/internal/runtime.String" %2514, %"github.com/goplus/llgo/internal/runtime.String" %2518, ptr %1502, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2510)
  br label %_llgo_84
>>>>>>> 92c452cd (internal/lib/reflect: lookupCache)

_llgo_105:                                        ; preds = %_llgo_103
  %2519 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2414)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2519)
  store ptr %2519, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_103
  %2520 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2521 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2522 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2523 = icmp eq ptr %2522, null
  br i1 %2523, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  %2524 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2525 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2525, i32 0, i32 0
  store ptr %2524, ptr %2526, align 8
  %2527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2525, i32 0, i32 1
  store i64 0, ptr %2527, align 4
  %2528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2525, i32 0, i32 2
  store i64 0, ptr %2528, align 4
  %2529 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2525, align 8
  %2530 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2531 = getelementptr ptr, ptr %2530, i64 0
  store ptr %2521, ptr %2531, align 8
  %2532 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2532, i32 0, i32 0
  store ptr %2530, ptr %2533, align 8
  %2534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2532, i32 0, i32 1
  store i64 1, ptr %2534, align 4
  %2535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2532, i32 0, i32 2
  store i64 1, ptr %2535, align 4
  %2536 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2532, align 8
  %2537 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2529, %"github.com/goplus/llgo/internal/runtime.Slice" %2536, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2537)
  store ptr %2537, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %2538 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2539 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2540 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2539, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2409, ptr %2540, align 8
  %2541 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2539, i32 0, i32 1
  store ptr %2538, ptr %2541, align 8
  %2542 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2539, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %2542, align 8
  %2543 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2539, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %2543, align 8
  %2544 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2539, align 8
  %2545 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2545, i32 0, i32 0
  store ptr @62, ptr %2546, align 8
  %2547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2545, i32 0, i32 1
  store i64 13, ptr %2547, align 4
  %2548 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2545, align 8
  %2549 = load ptr, ptr @_llgo_bool, align 8
  %2550 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2551 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2552 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2551, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2548, ptr %2552, align 8
  %2553 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2551, i32 0, i32 1
  store ptr %2550, ptr %2553, align 8
  %2554 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2551, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %2554, align 8
  %2555 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2551, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %2555, align 8
  %2556 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2551, align 8
  %2557 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2557, i32 0, i32 0
  store ptr @63, ptr %2558, align 8
  %2559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2557, i32 0, i32 1
  store i64 8, ptr %2559, align 4
  %2560 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2557, align 8
  %2561 = load ptr, ptr @_llgo_bool, align 8
  %2562 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2563 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2564 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2560, ptr %2564, align 8
  %2565 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 1
  store ptr %2562, ptr %2565, align 8
  %2566 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %2566, align 8
  %2567 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %2567, align 8
  %2568 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, align 8
  %2569 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2569, i32 0, i32 0
  store ptr @64, ptr %2570, align 8
  %2571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2569, i32 0, i32 1
  store i64 12, ptr %2571, align 4
  %2572 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2569, align 8
  %2573 = load ptr, ptr @_llgo_bool, align 8
  %2574 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2575 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2576 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2575, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2572, ptr %2576, align 8
  %2577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2575, i32 0, i32 1
  store ptr %2574, ptr %2577, align 8
  %2578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2575, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %2578, align 8
  %2579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2575, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %2579, align 8
  %2580 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2575, align 8
  %2581 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2581, i32 0, i32 0
  store ptr @65, ptr %2582, align 8
  %2583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2581, i32 0, i32 1
  store i64 4, ptr %2583, align 4
  %2584 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2581, align 8
  %2585 = load ptr, ptr @_llgo_uintptr, align 8
  %2586 = load ptr, ptr @_llgo_uintptr, align 8
  %2587 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2588 = icmp eq ptr %2587, null
  br i1 %2588, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %2589 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2590 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2591 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2590, i32 0, i32 0
  store ptr %2589, ptr %2591, align 8
  %2592 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2590, i32 0, i32 1
  store i64 0, ptr %2592, align 4
  %2593 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2590, i32 0, i32 2
  store i64 0, ptr %2593, align 4
  %2594 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2590, align 8
  %2595 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2596 = getelementptr ptr, ptr %2595, i64 0
  store ptr %2586, ptr %2596, align 8
  %2597 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, i32 0, i32 0
  store ptr %2595, ptr %2598, align 8
  %2599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, i32 0, i32 1
  store i64 1, ptr %2599, align 4
  %2600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, i32 0, i32 2
  store i64 1, ptr %2600, align 4
  %2601 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2597, align 8
  %2602 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2594, %"github.com/goplus/llgo/internal/runtime.Slice" %2601, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2602)
  store ptr %2602, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %2603 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2604 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2605 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2604, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2584, ptr %2605, align 8
  %2606 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2604, i32 0, i32 1
  store ptr %2603, ptr %2606, align 8
  %2607 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2604, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %2607, align 8
  %2608 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2604, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %2608, align 8
  %2609 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2604, align 8
  %2610 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2610, i32 0, i32 0
  store ptr @50, ptr %2611, align 8
  %2612 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2610, i32 0, i32 1
  store i64 6, ptr %2612, align 4
  %2613 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2610, align 8
  %2614 = load ptr, ptr @_llgo_string, align 8
  %2615 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2616 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2617 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2616, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2613, ptr %2617, align 8
  %2618 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2616, i32 0, i32 1
  store ptr %2615, ptr %2618, align 8
  %2619 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2616, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %2619, align 8
  %2620 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2616, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %2620, align 8
  %2621 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2616, align 8
  %2622 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2623 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2622, i32 0, i32 0
  store ptr @66, ptr %2623, align 8
  %2624 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2622, i32 0, i32 1
  store i64 10, ptr %2624, align 4
  %2625 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2622, align 8
  %2626 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2627 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2626, i32 0, i32 0
  store ptr @67, ptr %2627, align 8
  %2628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2626, i32 0, i32 1
  store i64 46, ptr %2628, align 4
  %2629 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2626, align 8
  %2630 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2629, i64 25, i64 120, i64 0, i64 20)
  %2631 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %2632 = icmp eq ptr %2631, null
  br i1 %2632, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  store ptr %2630, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %2633 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %2634 = load ptr, ptr @_llgo_string, align 8
  %2635 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2636 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2635, i32 0, i32 0
  store ptr @68, ptr %2636, align 8
  %2637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2635, i32 0, i32 1
  store i64 47, ptr %2637, align 4
  %2638 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2635, align 8
  %2639 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2638, i64 25, i64 56, i64 0, i64 2)
  %2640 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %2641 = icmp eq ptr %2640, null
  br i1 %2641, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  store ptr %2639, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %2642 = load ptr, ptr @_llgo_string, align 8
  %2643 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %2644 = load ptr, ptr @_llgo_uintptr, align 8
  %2645 = load ptr, ptr @_llgo_string, align 8
  %2646 = load ptr, ptr @_llgo_bool, align 8
  %2647 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2647, i32 0, i32 0
  store ptr @1, ptr %2648, align 8
  %2649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2647, i32 0, i32 1
  store i64 40, ptr %2649, align 4
  %2650 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2647, align 8
  %2651 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2650, i64 25, i64 80, i64 0, i64 20)
  %2652 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  %2653 = icmp eq ptr %2652, null
  br i1 %2653, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %2654 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2655 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2654, i32 0, i32 0
  store ptr @38, ptr %2655, align 8
  %2656 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2654, i32 0, i32 1
  store i64 5, ptr %2656, align 4
  %2657 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2654, align 8
  %2658 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2658, i32 0, i32 0
  store ptr null, ptr %2659, align 8
  %2660 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2658, i32 0, i32 1
  store i64 0, ptr %2660, align 4
  %2661 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2658, align 8
  %2662 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2663 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2657, ptr %2662, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2661, i1 false)
  %2664 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2664, i32 0, i32 0
  store ptr @69, ptr %2665, align 8
  %2666 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2664, i32 0, i32 1
  store i64 3, ptr %2666, align 4
  %2667 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2664, align 8
  %2668 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2669 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2668, i32 0, i32 0
  store ptr null, ptr %2669, align 8
  %2670 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2668, i32 0, i32 1
  store i64 0, ptr %2670, align 4
  %2671 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2668, align 8
  %2672 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2651)
  %2673 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2667, ptr %2672, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %2671, i1 false)
  %2674 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2674, i32 0, i32 0
  store ptr @70, ptr %2675, align 8
  %2676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2674, i32 0, i32 1
  store i64 6, ptr %2676, align 4
  %2677 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2674, align 8
  %2678 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2679 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2678, i32 0, i32 0
  store ptr null, ptr %2679, align 8
  %2680 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2678, i32 0, i32 1
  store i64 0, ptr %2680, align 4
  %2681 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2678, align 8
  %2682 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %2683 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2677, ptr %2682, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %2681, i1 false)
  %2684 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2684, i32 0, i32 0
  store ptr @71, ptr %2685, align 8
  %2686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2684, i32 0, i32 1
  store i64 4, ptr %2686, align 4
  %2687 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2684, align 8
  %2688 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2689 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2688, i32 0, i32 0
  store ptr null, ptr %2689, align 8
  %2690 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2688, i32 0, i32 1
  store i64 0, ptr %2690, align 4
  %2691 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2688, align 8
  %2692 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2693 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2687, ptr %2692, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %2691, i1 false)
  %2694 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2694, i32 0, i32 0
  store ptr @72, ptr %2695, align 8
  %2696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2694, i32 0, i32 1
  store i64 9, ptr %2696, align 4
  %2697 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2694, align 8
  %2698 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2699 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2698, i32 0, i32 0
  store ptr null, ptr %2699, align 8
  %2700 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2698, i32 0, i32 1
  store i64 0, ptr %2700, align 4
  %2701 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2698, align 8
  %2702 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  %2703 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2697, ptr %2702, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %2701, i1 false)
  %2704 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2704, i32 0, i32 0
  store ptr @7, ptr %2705, align 8
  %2706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2704, i32 0, i32 1
  store i64 4, ptr %2706, align 4
  %2707 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2704, align 8
  %2708 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 280)
  %2709 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2708, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2663, ptr %2709, align 8
  %2710 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2708, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2673, ptr %2710, align 8
  %2711 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2708, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2683, ptr %2711, align 8
  %2712 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2708, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %2693, ptr %2712, align 8
  %2713 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2708, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %2703, ptr %2713, align 8
  %2714 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2715 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2714, i32 0, i32 0
  store ptr %2708, ptr %2715, align 8
  %2716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2714, i32 0, i32 1
  store i64 5, ptr %2716, align 4
  %2717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2714, i32 0, i32 2
  store i64 5, ptr %2717, align 4
  %2718 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2714, align 8
  %2719 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2707, i64 56, %"github.com/goplus/llgo/internal/runtime.Slice" %2718)
  store ptr %2719, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115, %_llgo_114
  %2720 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br i1 %2641, label %_llgo_117, label %_llgo_118

_llgo_117:                                        ; preds = %_llgo_116
  %2721 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2722 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2721, i32 0, i32 0
  store ptr @73, ptr %2722, align 8
  %2723 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2721, i32 0, i32 1
  store i64 8, ptr %2723, align 4
  %2724 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2721, align 8
  %2725 = load ptr, ptr @_llgo_bool, align 8
  %2726 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2727 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2728 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2727, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2724, ptr %2728, align 8
  %2729 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2727, i32 0, i32 1
  store ptr %2726, ptr %2729, align 8
  %2730 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2727, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", ptr %2730, align 8
  %2731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2727, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", ptr %2731, align 8
  %2732 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2727, align 8
  %2733 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2734 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2733, i32 0, i32 0
  store ptr @40, ptr %2734, align 8
  %2735 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2733, i32 0, i32 1
  store i64 8, ptr %2735, align 4
  %2736 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2733, align 8
  %2737 = load ptr, ptr @_llgo_bool, align 8
  %2738 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2739 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2740 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2739, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2736, ptr %2740, align 8
  %2741 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2739, i32 0, i32 1
  store ptr %2738, ptr %2741, align 8
  %2742 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2739, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", ptr %2742, align 8
  %2743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2739, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", ptr %2743, align 8
  %2744 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2739, align 8
  %2745 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %2746 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2732, ptr %2746, align 8
  %2747 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2744, ptr %2747, align 8
  %2748 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2748, i32 0, i32 0
  store ptr %2745, ptr %2749, align 8
  %2750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2748, i32 0, i32 1
  store i64 2, ptr %2750, align 4
  %2751 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2748, i32 0, i32 2
  store i64 2, ptr %2751, align 4
  %2752 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2748, align 8
  %2753 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2754 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2753, i32 0, i32 0
  store ptr @3, ptr %2754, align 8
  %2755 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2753, i32 0, i32 1
  store i64 35, ptr %2755, align 4
  %2756 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2753, align 8
  %2757 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2757, i32 0, i32 0
  store ptr @74, ptr %2758, align 8
  %2759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2757, i32 0, i32 1
  store i64 11, ptr %2759, align 4
  %2760 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2757, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2639, %"github.com/goplus/llgo/internal/runtime.String" %2756, %"github.com/goplus/llgo/internal/runtime.String" %2760, ptr %2720, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2752)
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_116
  %2761 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %2762 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, i32 0, i32 0
  store ptr @68, ptr %2763, align 8
  %2764 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, i32 0, i32 1
  store i64 47, ptr %2764, align 4
  %2765 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, align 8
  %2766 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2765, i64 25, i64 56, i64 0, i64 2)
  %2767 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %2768 = icmp eq ptr %2767, null
  br i1 %2768, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %2769 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %2766)
  store ptr %2769, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %2770 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %2771 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2771, i32 0, i32 0
  store ptr @1, ptr %2772, align 8
  %2773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2771, i32 0, i32 1
  store i64 40, ptr %2773, align 4
  %2774 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2771, align 8
  %2775 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2774, i64 25, i64 80, i64 0, i64 20)
  %2776 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2776, i32 0, i32 0
  store ptr @68, ptr %2777, align 8
  %2778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2776, i32 0, i32 1
  store i64 47, ptr %2778, align 4
  %2779 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2776, align 8
  %2780 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2779, i64 25, i64 56, i64 0, i64 2)
  %2781 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %2782 = icmp eq ptr %2781, null
  br i1 %2782, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  %2783 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2784 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2783, i32 0, i32 0
  store ptr @21, ptr %2784, align 8
  %2785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2783, i32 0, i32 1
  store i64 4, ptr %2785, align 4
  %2786 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2783, align 8
  %2787 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2787, i32 0, i32 0
  store ptr null, ptr %2788, align 8
  %2789 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2787, i32 0, i32 1
  store i64 0, ptr %2789, align 4
  %2790 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2787, align 8
  %2791 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2786, ptr %2775, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2790, i1 true)
  %2792 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2792, i32 0, i32 0
  store ptr @44, ptr %2793, align 8
  %2794 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2792, i32 0, i32 1
  store i64 8, ptr %2794, align 4
  %2795 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2792, align 8
  %2796 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2796, i32 0, i32 0
  store ptr null, ptr %2797, align 8
  %2798 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2796, i32 0, i32 1
  store i64 0, ptr %2798, align 4
  %2799 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2796, align 8
  %2800 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2801 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2795, ptr %2800, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %2799, i1 false)
  %2802 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2803 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2802, i32 0, i32 0
  store ptr @75, ptr %2803, align 8
  %2804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2802, i32 0, i32 1
  store i64 6, ptr %2804, align 4
  %2805 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2802, align 8
  %2806 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, i32 0, i32 0
  store ptr null, ptr %2807, align 8
  %2808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, i32 0, i32 1
  store i64 0, ptr %2808, align 4
  %2809 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, align 8
  %2810 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %2780)
  %2811 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2805, ptr %2810, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %2809, i1 false)
  %2812 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2813 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2812, i32 0, i32 0
  store ptr @7, ptr %2813, align 8
  %2814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2812, i32 0, i32 1
  store i64 4, ptr %2814, align 4
  %2815 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2812, align 8
  %2816 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %2817 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2816, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2791, ptr %2817, align 8
  %2818 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2816, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2801, ptr %2818, align 8
  %2819 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2816, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2811, ptr %2819, align 8
  %2820 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2820, i32 0, i32 0
  store ptr %2816, ptr %2821, align 8
  %2822 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2820, i32 0, i32 1
  store i64 3, ptr %2822, align 4
  %2823 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2820, i32 0, i32 2
  store i64 3, ptr %2823, align 4
  %2824 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2820, align 8
  %2825 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2815, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %2824)
  store ptr %2825, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %2826 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %2632, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %2827 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2827, i32 0, i32 0
  store ptr @18, ptr %2828, align 8
  %2829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2827, i32 0, i32 1
  store i64 5, ptr %2829, align 4
  %2830 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2827, align 8
  %2831 = load ptr, ptr @_llgo_int, align 8
  %2832 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2833 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2834 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2830, ptr %2834, align 8
  %2835 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 1
  store ptr %2832, ptr %2835, align 8
  %2836 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %2836, align 8
  %2837 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %2837, align 8
  %2838 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2833, align 8
  %2839 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2839, i32 0, i32 0
  store ptr @19, ptr %2840, align 8
  %2841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2839, i32 0, i32 1
  store i64 9, ptr %2841, align 4
  %2842 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2839, align 8
  %2843 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %2844 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2845 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2846 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2845, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2842, ptr %2846, align 8
  %2847 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2845, i32 0, i32 1
  store ptr %2844, ptr %2847, align 8
  %2848 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2845, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %2848, align 8
  %2849 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2845, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %2849, align 8
  %2850 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2845, align 8
  %2851 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2851, i32 0, i32 0
  store ptr @25, ptr %2852, align 8
  %2853 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2851, i32 0, i32 1
  store i64 7, ptr %2853, align 4
  %2854 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2851, align 8
  %2855 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %2856 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %2857 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2858 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2857, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2854, ptr %2858, align 8
  %2859 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2857, i32 0, i32 1
  store ptr %2856, ptr %2859, align 8
  %2860 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2857, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %2860, align 8
  %2861 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2857, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %2861, align 8
  %2862 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2857, align 8
  %2863 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2864 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2863, i32 0, i32 0
  store ptr @27, ptr %2864, align 8
  %2865 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2863, i32 0, i32 1
  store i64 6, ptr %2865, align 4
  %2866 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2863, align 8
  %2867 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %2868 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2869 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2870 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2869, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2866, ptr %2870, align 8
  %2871 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2869, i32 0, i32 1
  store ptr %2868, ptr %2871, align 8
  %2872 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2869, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %2872, align 8
  %2873 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2869, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %2873, align 8
  %2874 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2869, align 8
  %2875 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2875, i32 0, i32 0
  store ptr @22, ptr %2876, align 8
  %2877 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2875, i32 0, i32 1
  store i64 4, ptr %2877, align 4
  %2878 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2875, align 8
  %2879 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %2880 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2881 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2882 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2881, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2878, ptr %2882, align 8
  %2883 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2881, i32 0, i32 1
  store ptr %2880, ptr %2883, align 8
  %2884 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2881, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %2884, align 8
  %2885 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2881, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %2885, align 8
  %2886 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2881, align 8
  %2887 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2887, i32 0, i32 0
  store ptr @28, ptr %2888, align 8
  %2889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2887, i32 0, i32 1
  store i64 10, ptr %2889, align 4
  %2890 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2887, align 8
  %2891 = load ptr, ptr @_llgo_int, align 8
  %2892 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2893 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2894 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2893, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2890, ptr %2894, align 8
  %2895 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2893, i32 0, i32 1
  store ptr %2892, ptr %2895, align 8
  %2896 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2893, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %2896, align 8
  %2897 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2893, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %2897, align 8
  %2898 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2893, align 8
  %2899 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2899, i32 0, i32 0
  store ptr @29, ptr %2900, align 8
  %2901 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2899, i32 0, i32 1
  store i64 8, ptr %2901, align 4
  %2902 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2899, align 8
  %2903 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %2904 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2905 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2906 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2905, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2902, ptr %2906, align 8
  %2907 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2905, i32 0, i32 1
  store ptr %2904, ptr %2907, align 8
  %2908 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2905, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %2908, align 8
  %2909 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2905, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %2909, align 8
  %2910 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2905, align 8
  %2911 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2911, i32 0, i32 0
  store ptr @33, ptr %2912, align 8
  %2913 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2911, i32 0, i32 1
  store i64 7, ptr %2913, align 4
  %2914 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2911, align 8
  %2915 = load ptr, ptr @_llgo_bool, align 8
  %2916 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2917 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2918 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2917, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2914, ptr %2918, align 8
  %2919 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2917, i32 0, i32 1
  store ptr %2916, ptr %2919, align 8
  %2920 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2917, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %2920, align 8
  %2921 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2917, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %2921, align 8
  %2922 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2917, align 8
  %2923 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2924 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2923, i32 0, i32 0
  store ptr @34, ptr %2924, align 8
  %2925 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2923, i32 0, i32 1
  store i64 10, ptr %2925, align 4
  %2926 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2923, align 8
  %2927 = load ptr, ptr @_llgo_bool, align 8
  %2928 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2929 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2930 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2929, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2926, ptr %2930, align 8
  %2931 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2929, i32 0, i32 1
  store ptr %2928, ptr %2931, align 8
  %2932 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2929, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %2932, align 8
  %2933 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2929, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %2933, align 8
  %2934 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2929, align 8
  %2935 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2936 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2935, i32 0, i32 0
  store ptr @35, ptr %2936, align 8
  %2937 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2935, i32 0, i32 1
  store i64 13, ptr %2937, align 4
  %2938 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2935, align 8
  %2939 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %2940 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2941 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2942 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2941, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2938, ptr %2942, align 8
  %2943 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2941, i32 0, i32 1
  store ptr %2940, ptr %2943, align 8
  %2944 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2941, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %2944, align 8
  %2945 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2941, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %2945, align 8
  %2946 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2941, align 8
  %2947 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2948 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2947, i32 0, i32 0
  store ptr @46, ptr %2948, align 8
  %2949 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2947, i32 0, i32 1
  store i64 13, ptr %2949, align 4
  %2950 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2947, align 8
  %2951 = load ptr, ptr @_llgo_bool, align 8
  %2952 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2953 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2954 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2953, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2950, ptr %2954, align 8
  %2955 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2953, i32 0, i32 1
  store ptr %2952, ptr %2955, align 8
  %2956 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2953, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %2956, align 8
  %2957 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2953, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %2957, align 8
  %2958 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2953, align 8
  %2959 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2960 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2959, i32 0, i32 0
  store ptr @47, ptr %2960, align 8
  %2961 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2959, i32 0, i32 1
  store i64 3, ptr %2961, align 4
  %2962 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2959, align 8
  %2963 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %2964 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2965 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2966 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2965, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2962, ptr %2966, align 8
  %2967 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2965, i32 0, i32 1
  store ptr %2964, ptr %2967, align 8
  %2968 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2965, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %2968, align 8
  %2969 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2965, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %2969, align 8
  %2970 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2965, align 8
  %2971 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2972 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2971, i32 0, i32 0
  store ptr @48, ptr %2972, align 8
  %2973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2971, i32 0, i32 1
  store i64 4, ptr %2973, align 4
  %2974 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2971, align 8
  %2975 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %2976 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2977 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2978 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2977, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2974, ptr %2978, align 8
  %2979 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2977, i32 0, i32 1
  store ptr %2976, ptr %2979, align 8
  %2980 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2977, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %2980, align 8
  %2981 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2977, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %2981, align 8
  %2982 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2977, align 8
  %2983 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2983, i32 0, i32 0
  store ptr @24, ptr %2984, align 8
  %2985 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2983, i32 0, i32 1
  store i64 3, ptr %2985, align 4
  %2986 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2983, align 8
  %2987 = load ptr, ptr @_llgo_int, align 8
  %2988 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2989 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2990 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2989, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2986, ptr %2990, align 8
  %2991 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2989, i32 0, i32 1
  store ptr %2988, ptr %2991, align 8
  %2992 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2989, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %2992, align 8
  %2993 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2989, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %2993, align 8
  %2994 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2989, align 8
  %2995 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2996 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2995, i32 0, i32 0
  store ptr @51, ptr %2996, align 8
  %2997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2995, i32 0, i32 1
  store i64 7, ptr %2997, align 4
  %2998 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2995, align 8
  %2999 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %3000 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %3001 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3002 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2998, ptr %3002, align 8
  %3003 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 1
  store ptr %3000, ptr %3003, align 8
  %3004 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %3004, align 8
  %3005 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %3005, align 8
  %3006 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3001, align 8
  %3007 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3008 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3007, i32 0, i32 0
  store ptr @63, ptr %3008, align 8
  %3009 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3007, i32 0, i32 1
  store i64 8, ptr %3009, align 4
  %3010 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3007, align 8
  %3011 = load ptr, ptr @_llgo_bool, align 8
  %3012 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3013 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3014 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3013, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3010, ptr %3014, align 8
  %3015 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3013, i32 0, i32 1
  store ptr %3012, ptr %3015, align 8
  %3016 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3013, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %3016, align 8
  %3017 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3013, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %3017, align 8
  %3018 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3013, align 8
  %3019 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3020 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3019, i32 0, i32 0
  store ptr @65, ptr %3020, align 8
  %3021 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3019, i32 0, i32 1
  store i64 4, ptr %3021, align 4
  %3022 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3019, align 8
  %3023 = load ptr, ptr @_llgo_uintptr, align 8
  %3024 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %3025 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3026 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3025, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3022, ptr %3026, align 8
  %3027 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3025, i32 0, i32 1
  store ptr %3024, ptr %3027, align 8
  %3028 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3025, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %3028, align 8
  %3029 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3025, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %3029, align 8
  %3030 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3025, align 8
  %3031 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3032 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3031, i32 0, i32 0
  store ptr @50, ptr %3032, align 8
  %3033 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3031, i32 0, i32 1
  store i64 6, ptr %3033, align 4
  %3034 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3031, align 8
  %3035 = load ptr, ptr @_llgo_string, align 8
  %3036 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %3037 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3037, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3034, ptr %3038, align 8
  %3039 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3037, i32 0, i32 1
  store ptr %3036, ptr %3039, align 8
  %3040 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3037, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %3040, align 8
  %3041 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3037, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %3041, align 8
  %3042 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3037, align 8
  %3043 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3044 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3043, i32 0, i32 0
  store ptr @66, ptr %3044, align 8
  %3045 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3043, i32 0, i32 1
  store i64 10, ptr %3045, align 4
  %3046 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3043, align 8
  %3047 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3048 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3047, i32 0, i32 0
  store ptr @67, ptr %3048, align 8
  %3049 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3047, i32 0, i32 1
  store i64 46, ptr %3049, align 4
  %3050 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3047, align 8
  %3051 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3050, i64 25, i64 120, i64 0, i64 20)
  %3052 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %3053 = icmp eq ptr %3052, null
  br i1 %3053, label %_llgo_125, label %_llgo_126

_llgo_124:                                        ; preds = %_llgo_148, %_llgo_122
  %3054 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %3055 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %3056 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3057 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3056, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2625, ptr %3057, align 8
  %3058 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3056, i32 0, i32 1
  store ptr %3055, ptr %3058, align 8
  %3059 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3056, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %3059, align 8
  %3060 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3056, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %3060, align 8
  %3061 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3056, align 8
  %3062 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3063 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3062, i32 0, i32 0
  store ptr @76, ptr %3063, align 8
  %3064 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3062, i32 0, i32 1
  store i64 8, ptr %3064, align 4
  %3065 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3062, align 8
  %3066 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %3067 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %3068 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3069 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3068, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3065, ptr %3069, align 8
  %3070 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3068, i32 0, i32 1
  store ptr %3067, ptr %3070, align 8
  %3071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3068, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %3071, align 8
  %3072 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3068, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %3072, align 8
  %3073 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3068, align 8
  %3074 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %3075 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2237, ptr %3075, align 8
  %3076 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2249, ptr %3076, align 8
  %3077 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2261, ptr %3077, align 8
  %3078 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2273, ptr %3078, align 8
  %3079 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2285, ptr %3079, align 8
  %3080 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2297, ptr %3080, align 8
  %3081 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2309, ptr %3081, align 8
  %3082 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2321, ptr %3082, align 8
  %3083 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2333, ptr %3083, align 8
  %3084 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2345, ptr %3084, align 8
  %3085 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2357, ptr %3085, align 8
  %3086 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2369, ptr %3086, align 8
  %3087 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2381, ptr %3087, align 8
  %3088 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2393, ptr %3088, align 8
  %3089 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2405, ptr %3089, align 8
  %3090 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2544, ptr %3090, align 8
  %3091 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2556, ptr %3091, align 8
  %3092 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2568, ptr %3092, align 8
  %3093 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2580, ptr %3093, align 8
  %3094 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2609, ptr %3094, align 8
  %3095 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2621, ptr %3095, align 8
  %3096 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %3061, ptr %3096, align 8
  %3097 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3074, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %3073, ptr %3097, align 8
  %3098 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3098, i32 0, i32 0
  store ptr %3074, ptr %3099, align 8
  %3100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3098, i32 0, i32 1
  store i64 23, ptr %3100, align 4
  %3101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3098, i32 0, i32 2
  store i64 23, ptr %3101, align 4
  %3102 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3098, align 8
  %3103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3103, i32 0, i32 0
  store ptr @3, ptr %3104, align 8
  %3105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3103, i32 0, i32 1
  store i64 35, ptr %3105, align 4
  %3106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3103, align 8
  %3107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3107, i32 0, i32 0
  store ptr @51, ptr %3108, align 8
  %3109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3107, i32 0, i32 1
  store i64 7, ptr %3109, align 4
  %3110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3107, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1947, %"github.com/goplus/llgo/internal/runtime.String" %3106, %"github.com/goplus/llgo/internal/runtime.String" %3110, ptr %2225, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3102)
  br label %_llgo_104

_llgo_125:                                        ; preds = %_llgo_123
  %3111 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3051)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3111)
  store ptr %3111, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_123
  %3112 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %3113 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %3114 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %3115 = icmp eq ptr %3114, null
  br i1 %3115, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %3116 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %3117 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3117, i32 0, i32 0
  store ptr %3116, ptr %3118, align 8
  %3119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3117, i32 0, i32 1
  store i64 0, ptr %3119, align 4
  %3120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3117, i32 0, i32 2
  store i64 0, ptr %3120, align 4
  %3121 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3117, align 8
  %3122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %3123 = getelementptr ptr, ptr %3122, i64 0
  store ptr %3113, ptr %3123, align 8
  %3124 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3124, i32 0, i32 0
  store ptr %3122, ptr %3125, align 8
  %3126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3124, i32 0, i32 1
  store i64 1, ptr %3126, align 4
  %3127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3124, i32 0, i32 2
  store i64 1, ptr %3127, align 4
  %3128 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3124, align 8
  %3129 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %3121, %"github.com/goplus/llgo/internal/runtime.Slice" %3128, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3129)
  store ptr %3129, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %3130 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %3131 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3131, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3046, ptr %3132, align 8
  %3133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3131, i32 0, i32 1
  store ptr %3130, ptr %3133, align 8
  %3134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3131, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %3134, align 8
  %3135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3131, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %3135, align 8
  %3136 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3131, align 8
  %3137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3137, i32 0, i32 0
  store ptr @76, ptr %3138, align 8
  %3139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3137, i32 0, i32 1
  store i64 8, ptr %3139, align 4
  %3140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3137, align 8
  %3141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3141, i32 0, i32 0
  store ptr @77, ptr %3142, align 8
  %3143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3141, i32 0, i32 1
  store i64 48, ptr %3143, align 4
  %3144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3141, align 8
  %3145 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3144, i64 25, i64 24, i64 0, i64 2)
  %3146 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %3147 = icmp eq ptr %3146, null
  br i1 %3147, label %_llgo_129, label %_llgo_130

_llgo_129:                                        ; preds = %_llgo_128
  store ptr %3145, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_128
  %3148 = load ptr, ptr @_llgo_string, align 8
  %3149 = load ptr, ptr @_llgo_uint16, align 8
  %3150 = load ptr, ptr @_llgo_uint16, align 8
  %3151 = load ptr, ptr @_llgo_uint32, align 8
  %3152 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %3153 = icmp eq ptr %3152, null
  br i1 %3153, label %_llgo_131, label %_llgo_132

_llgo_131:                                        ; preds = %_llgo_130
  %3154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3154, i32 0, i32 0
  store ptr @44, ptr %3155, align 8
  %3156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3154, i32 0, i32 1
  store i64 8, ptr %3156, align 4
  %3157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3154, align 8
  %3158 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3158, i32 0, i32 0
  store ptr null, ptr %3159, align 8
  %3160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3158, i32 0, i32 1
  store i64 0, ptr %3160, align 4
  %3161 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3158, align 8
  %3162 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %3163 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3157, ptr %3162, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %3161, i1 false)
  %3164 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3164, i32 0, i32 0
  store ptr @78, ptr %3165, align 8
  %3166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3164, i32 0, i32 1
  store i64 6, ptr %3166, align 4
  %3167 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3164, align 8
  %3168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3168, i32 0, i32 0
  store ptr null, ptr %3169, align 8
  %3170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3168, i32 0, i32 1
  store i64 0, ptr %3170, align 4
  %3171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3168, align 8
  %3172 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %3173 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3167, ptr %3172, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %3171, i1 false)
  %3174 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3174, i32 0, i32 0
  store ptr @79, ptr %3175, align 8
  %3176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3174, i32 0, i32 1
  store i64 6, ptr %3176, align 4
  %3177 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3174, align 8
  %3178 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3178, i32 0, i32 0
  store ptr null, ptr %3179, align 8
  %3180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3178, i32 0, i32 1
  store i64 0, ptr %3180, align 4
  %3181 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3178, align 8
  %3182 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %3183 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3177, ptr %3182, i64 18, %"github.com/goplus/llgo/internal/runtime.String" %3181, i1 false)
  %3184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3184, i32 0, i32 0
  store ptr @80, ptr %3185, align 8
  %3186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3184, i32 0, i32 1
  store i64 4, ptr %3186, align 4
  %3187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3184, align 8
  %3188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3188, i32 0, i32 0
  store ptr null, ptr %3189, align 8
  %3190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3188, i32 0, i32 1
  store i64 0, ptr %3190, align 4
  %3191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3188, align 8
  %3192 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %3193 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3187, ptr %3192, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %3191, i1 false)
  %3194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3194, i32 0, i32 0
  store ptr @7, ptr %3195, align 8
  %3196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3194, i32 0, i32 1
  store i64 4, ptr %3196, align 4
  %3197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3194, align 8
  %3198 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %3199 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3198, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %3163, ptr %3199, align 8
  %3200 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3198, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %3173, ptr %3200, align 8
  %3201 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3198, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %3183, ptr %3201, align 8
  %3202 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3198, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %3193, ptr %3202, align 8
  %3203 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3203, i32 0, i32 0
  store ptr %3198, ptr %3204, align 8
  %3205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3203, i32 0, i32 1
  store i64 4, ptr %3205, align 4
  %3206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3203, i32 0, i32 2
  store i64 4, ptr %3206, align 4
  %3207 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3203, align 8
  %3208 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %3197, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %3207)
  store ptr %3208, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_130
  %3209 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %3147, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  %3210 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3210, i32 0, i32 0
  store ptr @81, ptr %3211, align 8
  %3212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3210, i32 0, i32 1
  store i64 15, ptr %3212, align 4
  %3213 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3210, align 8
  %3214 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3214, i32 0, i32 0
  store ptr @82, ptr %3215, align 8
  %3216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3214, i32 0, i32 1
  store i64 42, ptr %3216, align 4
  %3217 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3214, align 8
  %3218 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3217, i64 25, i64 40, i64 0, i64 3)
  %3219 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3220 = icmp eq ptr %3219, null
  br i1 %3220, label %_llgo_135, label %_llgo_136

_llgo_134:                                        ; preds = %_llgo_144, %_llgo_132
  %3221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3221, i32 0, i32 0
  store ptr @77, ptr %3222, align 8
  %3223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3221, i32 0, i32 1
  store i64 48, ptr %3223, align 4
  %3224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3221, align 8
  %3225 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3224, i64 25, i64 24, i64 0, i64 2)
  %3226 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %3227 = icmp eq ptr %3226, null
  br i1 %3227, label %_llgo_145, label %_llgo_146

_llgo_135:                                        ; preds = %_llgo_133
  store ptr %3218, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_133
  %3228 = load ptr, ptr @_llgo_string, align 8
  %3229 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %3230 = load ptr, ptr @_llgo_Pointer, align 8
  %3231 = load ptr, ptr @_llgo_Pointer, align 8
  %3232 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3232, i32 0, i32 0
  store ptr @30, ptr %3233, align 8
  %3234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3232, i32 0, i32 1
  store i64 44, ptr %3234, align 4
  %3235 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3232, align 8
  %3236 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3235, i64 25, i64 128, i64 0, i64 21)
  %3237 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  %3238 = icmp eq ptr %3237, null
  br i1 %3238, label %_llgo_137, label %_llgo_138

_llgo_137:                                        ; preds = %_llgo_136
  %3239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3239, i32 0, i32 0
  store ptr @38, ptr %3240, align 8
  %3241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3239, i32 0, i32 1
  store i64 5, ptr %3241, align 4
  %3242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3239, align 8
  %3243 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3243, i32 0, i32 0
  store ptr null, ptr %3244, align 8
  %3245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3243, i32 0, i32 1
  store i64 0, ptr %3245, align 4
  %3246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3243, align 8
  %3247 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %3248 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3242, ptr %3247, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %3246, i1 false)
  %3249 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3249, i32 0, i32 0
  store ptr @83, ptr %3250, align 8
  %3251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3249, i32 0, i32 1
  store i64 5, ptr %3251, align 4
  %3252 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3249, align 8
  %3253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3253, i32 0, i32 0
  store ptr null, ptr %3254, align 8
  %3255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3253, i32 0, i32 1
  store i64 0, ptr %3255, align 4
  %3256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3253, align 8
  %3257 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3236)
  %3258 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3252, ptr %3257, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %3256, i1 false)
  %3259 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3259, i32 0, i32 0
  store ptr @84, ptr %3260, align 8
  %3261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3259, i32 0, i32 1
  store i64 4, ptr %3261, align 4
  %3262 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3259, align 8
  %3263 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3263, i32 0, i32 0
  store ptr null, ptr %3264, align 8
  %3265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3263, i32 0, i32 1
  store i64 0, ptr %3265, align 4
  %3266 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3263, align 8
  %3267 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %3268 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3262, ptr %3267, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %3266, i1 false)
  %3269 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3269, i32 0, i32 0
  store ptr @85, ptr %3270, align 8
  %3271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3269, i32 0, i32 1
  store i64 4, ptr %3271, align 4
  %3272 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3269, align 8
  %3273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3273, i32 0, i32 0
  store ptr null, ptr %3274, align 8
  %3275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3273, i32 0, i32 1
  store i64 0, ptr %3275, align 4
  %3276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3273, align 8
  %3277 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %3278 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3272, ptr %3277, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %3276, i1 false)
  %3279 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3279, i32 0, i32 0
  store ptr @7, ptr %3280, align 8
  %3281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3279, i32 0, i32 1
  store i64 4, ptr %3281, align 4
  %3282 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3279, align 8
  %3283 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %3284 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3283, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %3248, ptr %3284, align 8
  %3285 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3283, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %3258, ptr %3285, align 8
  %3286 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3283, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %3268, ptr %3286, align 8
  %3287 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3283, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %3278, ptr %3287, align 8
  %3288 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3288, i32 0, i32 0
  store ptr %3283, ptr %3289, align 8
  %3290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3288, i32 0, i32 1
  store i64 4, ptr %3290, align 4
  %3291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3288, i32 0, i32 2
  store i64 4, ptr %3291, align 4
  %3292 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3288, align 8
  %3293 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %3282, i64 40, %"github.com/goplus/llgo/internal/runtime.Slice" %3292)
  store ptr %3293, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_136
  %3294 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br i1 %3220, label %_llgo_139, label %_llgo_140

_llgo_139:                                        ; preds = %_llgo_138
  %3295 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3295, i32 0, i32 0
  store ptr @40, ptr %3296, align 8
  %3297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3295, i32 0, i32 1
  store i64 8, ptr %3297, align 4
  %3298 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3295, align 8
  %3299 = load ptr, ptr @_llgo_bool, align 8
  %3300 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3301 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3301, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3298, ptr %3302, align 8
  %3303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3301, i32 0, i32 1
  store ptr %3300, ptr %3303, align 8
  %3304 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3301, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", ptr %3304, align 8
  %3305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3301, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", ptr %3305, align 8
  %3306 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3301, align 8
  %3307 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3307, i32 0, i32 0
  store ptr @41, ptr %3308, align 8
  %3309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3307, i32 0, i32 1
  store i64 4, ptr %3309, align 4
  %3310 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3307, align 8
  %3311 = load ptr, ptr @_llgo_string, align 8
  %3312 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %3313 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3313, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3310, ptr %3314, align 8
  %3315 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3313, i32 0, i32 1
  store ptr %3312, ptr %3315, align 8
  %3316 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3313, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", ptr %3316, align 8
  %3317 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3313, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", ptr %3317, align 8
  %3318 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3313, align 8
  %3319 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3319, i32 0, i32 0
  store ptr @42, ptr %3320, align 8
  %3321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3319, i32 0, i32 1
  store i64 7, ptr %3321, align 4
  %3322 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3319, align 8
  %3323 = load ptr, ptr @_llgo_string, align 8
  %3324 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %3325 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3326 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3325, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3322, ptr %3326, align 8
  %3327 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3325, i32 0, i32 1
  store ptr %3324, ptr %3327, align 8
  %3328 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3325, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", ptr %3328, align 8
  %3329 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3325, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", ptr %3329, align 8
  %3330 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3325, align 8
  %3331 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %3332 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3331, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %3306, ptr %3332, align 8
  %3333 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3331, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %3318, ptr %3333, align 8
  %3334 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3331, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %3330, ptr %3334, align 8
  %3335 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3335, i32 0, i32 0
  store ptr %3331, ptr %3336, align 8
  %3337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3335, i32 0, i32 1
  store i64 3, ptr %3337, align 4
  %3338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3335, i32 0, i32 2
  store i64 3, ptr %3338, align 4
  %3339 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3335, align 8
  %3340 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3340, i32 0, i32 0
  store ptr @3, ptr %3341, align 8
  %3342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3340, i32 0, i32 1
  store i64 35, ptr %3342, align 4
  %3343 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3340, align 8
  %3344 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3344, i32 0, i32 0
  store ptr @86, ptr %3345, align 8
  %3346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3344, i32 0, i32 1
  store i64 6, ptr %3346, align 4
  %3347 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3344, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %3218, %"github.com/goplus/llgo/internal/runtime.String" %3343, %"github.com/goplus/llgo/internal/runtime.String" %3347, ptr %3294, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3339)
  br label %_llgo_140

_llgo_140:                                        ; preds = %_llgo_139, %_llgo_138
  %3348 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3349, i32 0, i32 0
  store ptr @82, ptr %3350, align 8
  %3351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3349, i32 0, i32 1
  store i64 42, ptr %3351, align 4
  %3352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3349, align 8
  %3353 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3352, i64 25, i64 40, i64 0, i64 3)
  %3354 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3355 = icmp eq ptr %3354, null
  br i1 %3355, label %_llgo_141, label %_llgo_142

_llgo_141:                                        ; preds = %_llgo_140
  %3356 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %3353)
  store ptr %3356, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_142

_llgo_142:                                        ; preds = %_llgo_141, %_llgo_140
  %3357 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3358 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3359 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3360 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %3361 = icmp eq ptr %3360, null
  br i1 %3361, label %_llgo_143, label %_llgo_144

_llgo_143:                                        ; preds = %_llgo_142
  %3362 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %3363 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3363, i32 0, i32 0
  store ptr %3362, ptr %3364, align 8
  %3365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3363, i32 0, i32 1
  store i64 0, ptr %3365, align 4
  %3366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3363, i32 0, i32 2
  store i64 0, ptr %3366, align 4
  %3367 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3363, align 8
  %3368 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %3369 = getelementptr ptr, ptr %3368, i64 0
  store ptr %3359, ptr %3369, align 8
  %3370 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3370, i32 0, i32 0
  store ptr %3368, ptr %3371, align 8
  %3372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3370, i32 0, i32 1
  store i64 1, ptr %3372, align 4
  %3373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3370, i32 0, i32 2
  store i64 1, ptr %3373, align 4
  %3374 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3370, align 8
  %3375 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %3367, %"github.com/goplus/llgo/internal/runtime.Slice" %3374, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3375)
  store ptr %3375, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143, %_llgo_142
  %3376 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %3377 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3377, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3213, ptr %3378, align 8
  %3379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3377, i32 0, i32 1
  store ptr %3376, ptr %3379, align 8
  %3380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3377, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %3380, align 8
  %3381 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3377, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %3381, align 8
  %3382 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3377, align 8
  %3383 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3383, i32 0, i32 0
  store ptr @45, ptr %3384, align 8
  %3385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3383, i32 0, i32 1
  store i64 7, ptr %3385, align 4
  %3386 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3383, align 8
  %3387 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3388 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %3389 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %3390 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3390, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3386, ptr %3391, align 8
  %3392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3390, i32 0, i32 1
  store ptr %3389, ptr %3392, align 8
  %3393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3390, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %3393, align 8
  %3394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3390, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %3394, align 8
  %3395 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3390, align 8
  %3396 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %3397 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3396, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %3382, ptr %3397, align 8
  %3398 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3396, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %3395, ptr %3398, align 8
  %3399 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3399, i32 0, i32 0
  store ptr %3396, ptr %3400, align 8
  %3401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3399, i32 0, i32 1
  store i64 2, ptr %3401, align 4
  %3402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3399, i32 0, i32 2
  store i64 2, ptr %3402, align 4
  %3403 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3399, align 8
  %3404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3404, i32 0, i32 0
  store ptr @3, ptr %3405, align 8
  %3406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3404, i32 0, i32 1
  store i64 35, ptr %3406, align 4
  %3407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3404, align 8
  %3408 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3408, i32 0, i32 0
  store ptr @87, ptr %3409, align 8
  %3410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3408, i32 0, i32 1
  store i64 12, ptr %3410, align 4
  %3411 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3408, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %3145, %"github.com/goplus/llgo/internal/runtime.String" %3407, %"github.com/goplus/llgo/internal/runtime.String" %3411, ptr %3209, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3403)
  br label %_llgo_134

_llgo_145:                                        ; preds = %_llgo_134
  %3412 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3225)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3412)
  store ptr %3412, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_146

_llgo_146:                                        ; preds = %_llgo_145, %_llgo_134
  %3413 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %3414 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %3415 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %3416 = icmp eq ptr %3415, null
  br i1 %3416, label %_llgo_147, label %_llgo_148

_llgo_147:                                        ; preds = %_llgo_146
  %3417 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %3418 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3418, i32 0, i32 0
  store ptr %3417, ptr %3419, align 8
  %3420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3418, i32 0, i32 1
  store i64 0, ptr %3420, align 4
  %3421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3418, i32 0, i32 2
  store i64 0, ptr %3421, align 4
  %3422 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3418, align 8
  %3423 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %3424 = getelementptr ptr, ptr %3423, i64 0
  store ptr %3414, ptr %3424, align 8
  %3425 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3425, i32 0, i32 0
  store ptr %3423, ptr %3426, align 8
  %3427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3425, i32 0, i32 1
  store i64 1, ptr %3427, align 4
  %3428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3425, i32 0, i32 2
  store i64 1, ptr %3428, align 4
  %3429 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3425, align 8
  %3430 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %3422, %"github.com/goplus/llgo/internal/runtime.Slice" %3429, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3430)
  store ptr %3430, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_148

_llgo_148:                                        ; preds = %_llgo_147, %_llgo_146
  %3431 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %3432 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3433 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3432, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3140, ptr %3433, align 8
  %3434 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3432, i32 0, i32 1
  store ptr %3431, ptr %3434, align 8
  %3435 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3432, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %3435, align 8
  %3436 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3432, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %3436, align 8
  %3437 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3432, align 8
  %3438 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %3439 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2838, ptr %3439, align 8
  %3440 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2850, ptr %3440, align 8
  %3441 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2862, ptr %3441, align 8
  %3442 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2874, ptr %3442, align 8
  %3443 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2886, ptr %3443, align 8
  %3444 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2898, ptr %3444, align 8
  %3445 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2910, ptr %3445, align 8
  %3446 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2922, ptr %3446, align 8
  %3447 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2934, ptr %3447, align 8
  %3448 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2946, ptr %3448, align 8
  %3449 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2958, ptr %3449, align 8
  %3450 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2970, ptr %3450, align 8
  %3451 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2982, ptr %3451, align 8
  %3452 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2994, ptr %3452, align 8
  %3453 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %3006, ptr %3453, align 8
  %3454 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %3018, ptr %3454, align 8
  %3455 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %3030, ptr %3455, align 8
  %3456 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %3042, ptr %3456, align 8
  %3457 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %3136, ptr %3457, align 8
  %3458 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3438, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %3437, ptr %3458, align 8
  %3459 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3459, i32 0, i32 0
  store ptr %3438, ptr %3460, align 8
  %3461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3459, i32 0, i32 1
  store i64 20, ptr %3461, align 4
  %3462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3459, i32 0, i32 2
  store i64 20, ptr %3462, align 4
  %3463 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3459, align 8
  %3464 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3464, i32 0, i32 0
  store ptr @3, ptr %3465, align 8
  %3466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3464, i32 0, i32 1
  store i64 35, ptr %3466, align 4
  %3467 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3464, align 8
  %3468 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3468, i32 0, i32 0
  store ptr @66, ptr %3469, align 8
  %3470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3468, i32 0, i32 1
  store i64 10, ptr %3470, align 4
  %3471 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3468, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2630, %"github.com/goplus/llgo/internal/runtime.String" %3467, %"github.com/goplus/llgo/internal/runtime.String" %3471, ptr %2826, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3463)
  br label %_llgo_124

_llgo_149:                                        ; preds = %_llgo_32
  %3472 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %373)
  store ptr %3472, ptr @"[]_llgo_main.T", align 8
  br label %_llgo_150

_llgo_150:                                        ; preds = %_llgo_149, %_llgo_32
  %3473 = load ptr, ptr @"[]_llgo_main.T", align 8
  %3474 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3474, i32 0, i32 0
  store ptr @0, ptr %3475, align 8
  %3476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3474, i32 0, i32 1
  store i64 6, ptr %3476, align 4
  %3477 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3474, align 8
  %3478 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3477, i64 25, i64 48, i64 0, i64 0)
  %3479 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3479, i32 0, i32 0
  store ptr @1, ptr %3480, align 8
  %3481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3479, i32 0, i32 1
  store i64 40, ptr %3481, align 4
  %3482 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3479, align 8
  %3483 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3482, i64 25, i64 80, i64 0, i64 20)
  %3484 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3484, i32 0, i32 0
  store ptr @0, ptr %3485, align 8
  %3486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3484, i32 0, i32 1
  store i64 6, ptr %3486, align 4
  %3487 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3484, align 8
  %3488 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3487, i64 25, i64 48, i64 0, i64 0)
  %3489 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3490 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3489, i32 0, i32 0
  store ptr @89, ptr %3490, align 8
  %3491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3489, i32 0, i32 1
  store i64 1, ptr %3491, align 4
  %3492 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3489, align 8
  %3493 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3493, i32 0, i32 0
  store ptr null, ptr %3494, align 8
  %3495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3493, i32 0, i32 1
  store i64 0, ptr %3495, align 4
  %3496 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3493, align 8
  %3497 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3478)
  %3498 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3492, ptr %3497, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %3496, i1 false)
  %3499 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3500 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3499, i32 0, i32 0
  store ptr @90, ptr %3500, align 8
  %3501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3499, i32 0, i32 1
  store i64 1, ptr %3501, align 4
  %3502 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3499, align 8
  %3503 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3503, i32 0, i32 0
  store ptr null, ptr %3504, align 8
  %3505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3503, i32 0, i32 1
  store i64 0, ptr %3505, align 4
  %3506 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3503, align 8
  %3507 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3483)
  %3508 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3502, ptr %3507, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %3506, i1 false)
  %3509 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3510 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3509, i32 0, i32 0
  store ptr @91, ptr %3510, align 8
  %3511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3509, i32 0, i32 1
  store i64 1, ptr %3511, align 4
  %3512 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3509, align 8
  %3513 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3513, i32 0, i32 0
  store ptr null, ptr %3514, align 8
  %3515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3513, i32 0, i32 1
  store i64 0, ptr %3515, align 4
  %3516 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3513, align 8
  %3517 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %3518 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3512, ptr %3517, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %3516, i1 false)
  %3519 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3519, i32 0, i32 0
  store ptr @92, ptr %3520, align 8
  %3521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3519, i32 0, i32 1
  store i64 1, ptr %3521, align 4
  %3522 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3519, align 8
  %3523 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3523, i32 0, i32 0
  store ptr null, ptr %3524, align 8
  %3525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3523, i32 0, i32 1
  store i64 0, ptr %3525, align 4
  %3526 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3523, align 8
  %3527 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %3488)
  %3528 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3522, ptr %3527, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %3526, i1 false)
  %3529 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3529, i32 0, i32 0
  store ptr @7, ptr %3530, align 8
  %3531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3529, i32 0, i32 1
  store i64 4, ptr %3531, align 4
  %3532 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3529, align 8
  %3533 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %3534 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3533, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %3498, ptr %3534, align 8
  %3535 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3533, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %3508, ptr %3535, align 8
  %3536 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3533, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %3518, ptr %3536, align 8
  %3537 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3533, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %3528, ptr %3537, align 8
  %3538 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3538, i32 0, i32 0
  store ptr %3533, ptr %3539, align 8
  %3540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3538, i32 0, i32 1
  store i64 4, ptr %3540, align 4
  %3541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3538, i32 0, i32 2
  store i64 4, ptr %3541, align 4
  %3542 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3538, align 8
  %3543 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %3532, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %3542)
  store ptr %3543, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  %3544 = load ptr, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  br i1 %6, label %_llgo_151, label %_llgo_152

_llgo_151:                                        ; preds = %_llgo_150
  %3545 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3545, i32 0, i32 0
  store ptr @7, ptr %3546, align 8
  %3547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3545, i32 0, i32 1
  store i64 4, ptr %3547, align 4
  %3548 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3545, align 8
  %3549 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3549, i32 0, i32 0
  store ptr @93, ptr %3550, align 8
  %3551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3549, i32 0, i32 1
  store i64 1, ptr %3551, align 4
  %3552 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3549, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %3548, %"github.com/goplus/llgo/internal/runtime.String" %3552, ptr %3544, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
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
