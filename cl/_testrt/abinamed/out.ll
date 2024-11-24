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
@28 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/internal/abi.Method", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/internal/abi.FuncType", align 1
@"[]*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [2 x i8] c"In", align 1
@32 = private unnamed_addr constant [3 x i8] c"Out", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
@33 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@34 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@35 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@36 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@37 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@38 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/internal/abi.InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Imethod" = linkonce global ptr null, align 8
@39 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.Imethod", align 1
@"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw" = linkonce global ptr null, align 8
@40 = private unnamed_addr constant [5 x i8] c"Name_", align 1
@41 = private unnamed_addr constant [4 x i8] c"Typ_", align 1
@42 = private unnamed_addr constant [8 x i8] c"Exported", align 1
@43 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@44 = private unnamed_addr constant [7 x i8] c"PkgPath", align 1
@45 = private unnamed_addr constant [7 x i8] c"Imethod", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod" = linkonce global ptr null, align 8
@"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4" = linkonce global ptr null, align 8
@46 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@47 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
@48 = private unnamed_addr constant [9 x i8] c"IsClosure", align 1
@49 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@50 = private unnamed_addr constant [3 x i8] c"Key", align 1
@51 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@52 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Kind", align 1
@_llgo_uint = linkonce global ptr null, align 8
@53 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@54 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@55 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.MapType", align 1
@"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY" = linkonce global ptr null, align 8
@"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg" = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM" = linkonce global ptr null, align 8
@56 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@57 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@58 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@59 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@60 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@61 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@62 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@63 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@64 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@65 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@66 = private unnamed_addr constant [9 x i8] c"NumMethod", align 1
@67 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@68 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@69 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@70 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@71 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/internal/abi.StructType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@72 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/internal/abi.StructField", align 1
@"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig" = linkonce global ptr null, align 8
@73 = private unnamed_addr constant [3 x i8] c"Typ", align 1
@74 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@75 = private unnamed_addr constant [4 x i8] c"Tag_", align 1
@76 = private unnamed_addr constant [9 x i8] c"Embedded_", align 1
@77 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@78 = private unnamed_addr constant [11 x i8] c"StructField", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0" = linkonce global ptr null, align 8
@79 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@80 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@81 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/internal/abi.UncommonType", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
@82 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@83 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@84 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@85 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
@86 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0" = linkonce global ptr null, align 8
@87 = private unnamed_addr constant [5 x i8] c"Mtyp_", align 1
@88 = private unnamed_addr constant [4 x i8] c"Ifn_", align 1
@89 = private unnamed_addr constant [4 x i8] c"Tfn_", align 1
@90 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"[]_llgo_main.T" = linkonce global ptr null, align 8
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = linkonce global ptr null, align 8
@91 = private unnamed_addr constant [1 x i8] c"p", align 1
@92 = private unnamed_addr constant [1 x i8] c"t", align 1
@93 = private unnamed_addr constant [1 x i8] c"n", align 1
@94 = private unnamed_addr constant [1 x i8] c"a", align 1
@95 = private unnamed_addr constant [1 x i8] c"T", align 1
@96 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@97 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@98 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@99 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@100 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@101 = private unnamed_addr constant [13 x i8] c"error field 3", align 1

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
  %4 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %4, ptr %3, 1
  %6 = call ptr @main.toEface(%"github.com/goplus/llgo/internal/runtime.eface" %5)
  %7 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 72)
  store %"github.com/goplus/llgo/internal/abi.Type" zeroinitializer, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, ptr %8, 1
  %11 = call ptr @main.toEface(%"github.com/goplus/llgo/internal/runtime.eface" %10)
  %12 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %14 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %18 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %20 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %24 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %24, i8 0, i64 56, i1 false)
  %25 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %26)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %27, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, align 8
  %30 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %29, 0
  %31 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %29, 1
  %32 = icmp sge i64 0, %31
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %30, i64 0
  %34 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %33, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %34, ptr %24, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %24, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %38, i32 0, i32 10
  %40 = load ptr, ptr %39, align 8
  %41 = icmp ne ptr %36, %40
  br i1 %41, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %42 = load ptr, ptr @_llgo_string, align 8
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @96, i64 13 }, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %44, ptr %43, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %45)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %24, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %47)
  %49 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8
  %51 = icmp ne ptr %48, %50
  br i1 %51, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %52 = load ptr, ptr @_llgo_string, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @97, i64 18 }, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %52, 0
  %55 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %54, ptr %53, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %55)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %56 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %56, i8 0, i64 56, i1 false)
  %57 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %58)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %59, i32 0, i32 2
  %61 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, align 8
  %62 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %61, 0
  %63 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %61, 1
  %64 = icmp sge i64 1, %63
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %64)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %62, i64 1
  %66 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %65, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %66, ptr %56, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %56, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %70, i32 0, i32 10
  %72 = load ptr, ptr %71, align 8
  %73 = icmp ne ptr %68, %72
  br i1 %73, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %74 = load ptr, ptr @_llgo_string, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @98, i64 13 }, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %74, 0
  %77 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %76, ptr %75, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %77)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %56, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8
  %80 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %79)
  %81 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %82 = load ptr, ptr %81, align 8
  %83 = icmp ne ptr %80, %82
  br i1 %83, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %84 = load ptr, ptr @_llgo_string, align 8
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @99, i64 18 }, ptr %85, align 8
  %86 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %84, 0
  %87 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %86, ptr %85, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %87)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %88 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %88, i8 0, i64 56, i1 false)
  %89 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %90 = load ptr, ptr %89, align 8
  %91 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %90)
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %91, i32 0, i32 2
  %93 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, align 8
  %94 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %93, 0
  %95 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %93, 1
  %96 = icmp sge i64 2, %95
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %96)
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %94, i64 2
  %98 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %97, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %98, ptr %88, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %88, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %102 = load ptr, ptr %101, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %102)
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %103, i32 0, i32 2
  %105 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, align 8
  %106 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %105, 0
  %107 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %105, 1
  %108 = icmp sge i64 0, %107
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %108)
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %106, i64 0
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8
  %112 = icmp ne ptr %100, %111
  br i1 %112, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %113 = load ptr, ptr @_llgo_string, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @100, i64 13 }, ptr %114, align 8
  %115 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %113, 0
  %116 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %115, ptr %114, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %116)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %117 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  call void @llvm.memset(ptr %117, i8 0, i64 56, i1 false)
  %118 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %119 = load ptr, ptr %118, align 8
  %120 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %119)
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %120, i32 0, i32 2
  %122 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %121, align 8
  %123 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %122, 0
  %124 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %122, 1
  %125 = icmp sge i64 3, %124
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %125)
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %123, i64 3
  %127 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %126, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %127, ptr %117, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %117, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %129)
  %131 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %132 = load ptr, ptr %131, align 8
  %133 = icmp ne ptr %130, %132
  br i1 %133, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %134 = load ptr, ptr @_llgo_string, align 8
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @101, i64 13 }, ptr %135, align 8
  %136 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %134, 0
  %137 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %136, ptr %135, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %137)
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 6 }, i64 25, i64 48, i64 0, i64 0)
  %1 = load ptr, ptr @_llgo_main.T, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_main.T, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 6 }, i64 25, i64 48, i64 0, i64 0)
  %5 = load ptr, ptr @"*_llgo_main.T", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %7)
  store ptr %7, ptr @"*_llgo_main.T", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @"*_llgo_main.T", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %10 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %9, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %12 = load ptr, ptr @_llgo_uintptr, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %14, ptr @_llgo_uintptr, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %15 = load ptr, ptr @_llgo_uintptr, align 8
  %16 = load ptr, ptr @_llgo_uint32, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  store ptr %18, ptr @_llgo_uint32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %19 = load ptr, ptr @_llgo_uint32, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 41 }, i64 8, i64 1, i64 0, i64 0)
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.TFlag", align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %20, ptr @"_llgo_github.com/goplus/llgo/internal/abi.TFlag", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %23 = load ptr, ptr @_llgo_uint8, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %25, ptr @_llgo_uint8, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %26 = load ptr, ptr @_llgo_uint8, align 8
  br i1 %22, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %20, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, ptr %26, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %27 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.TFlag", align 8
  %28 = load ptr, ptr @_llgo_Pointer, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %30)
  store ptr %30, ptr @_llgo_Pointer, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %31 = load ptr, ptr @_llgo_Pointer, align 8
  %32 = load ptr, ptr @_llgo_bool, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  store ptr %34, ptr @_llgo_bool, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %35 = load ptr, ptr @_llgo_bool, align 8
  %36 = load ptr, ptr @_llgo_Pointer, align 8
  %37 = load ptr, ptr @_llgo_Pointer, align 8
  %38 = load ptr, ptr @_llgo_Pointer, align 8
  %39 = load ptr, ptr @_llgo_bool, align 8
  %40 = load ptr, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %43 = getelementptr ptr, ptr %42, i64 0
  store ptr %36, ptr %43, align 8
  %44 = getelementptr ptr, ptr %42, i64 1
  store ptr %37, ptr %44, align 8
  %45 = getelementptr ptr, ptr %42, i64 2
  store ptr %38, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %42, 0
  %47 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %46, i64 3, 1
  %48 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %47, i64 3, 2
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %50 = getelementptr ptr, ptr %49, i64 0
  store ptr %39, ptr %50, align 8
  %51 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %49, 0
  %52 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %51, i64 1, 1
  %53 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %52, i64 1, 2
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %48, %"github.com/goplus/llgo/internal/runtime.Slice" %53, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %54)
  store ptr %54, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %55 = load ptr, ptr @"_llgo_func$QUW0mAalenD4Bc6QsairPZ_HOMzGmcNs0GCyMzTNFig", align 8
  %56 = load ptr, ptr @_llgo_Pointer, align 8
  %57 = load ptr, ptr @_llgo_Pointer, align 8
  %58 = load ptr, ptr @_llgo_Pointer, align 8
  %59 = load ptr, ptr @_llgo_bool, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %61 = getelementptr ptr, ptr %60, i64 0
  store ptr %56, ptr %61, align 8
  %62 = getelementptr ptr, ptr %60, i64 1
  store ptr %57, ptr %62, align 8
  %63 = getelementptr ptr, ptr %60, i64 2
  store ptr %58, ptr %63, align 8
  %64 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %60, 0
  %65 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %64, i64 3, 1
  %66 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %65, i64 3, 2
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %68 = getelementptr ptr, ptr %67, i64 0
  store ptr %59, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %67, 0
  %70 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %69, i64 1, 1
  %71 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %70, i64 1, 2
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %66, %"github.com/goplus/llgo/internal/runtime.Slice" %71, i1 false)
  %73 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %72, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %75 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %74, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %77 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %76, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %73, ptr %77, align 8
  %78 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %76, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %75, ptr %78, align 8
  %79 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %76, 0
  %80 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %79, i64 2, 1
  %81 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %80, i64 2, 2
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %81)
  store ptr %82, ptr @"main.struct$p9hq6rduefaRA0UGJ6DazYUtteEOtDFu7UHk5jhDUV4", align 8
  %83 = load ptr, ptr @"main.struct$p9hq6rduefaRA0UGJ6DazYUtteEOtDFu7UHk5jhDUV4", align 8
  %84 = load ptr, ptr @_llgo_byte, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %86, ptr @_llgo_byte, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %87 = load ptr, ptr @_llgo_byte, align 8
  %88 = load ptr, ptr @"*_llgo_byte", align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %90)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %91)
  store ptr %91, ptr @"*_llgo_byte", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %92 = load ptr, ptr @"*_llgo_byte", align 8
  %93 = load ptr, ptr @_llgo_string, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %95, ptr @_llgo_string, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %96 = load ptr, ptr @_llgo_string, align 8
  %97 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 72, i64 0, i64 23)
  %99 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %98)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %101)
  store ptr %101, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %102 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 41 }, i64 8, i64 1, i64 0, i64 0)
  %104 = load ptr, ptr @_llgo_Pointer, align 8
  %105 = load ptr, ptr @_llgo_Pointer, align 8
  %106 = load ptr, ptr @_llgo_Pointer, align 8
  %107 = load ptr, ptr @_llgo_bool, align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 72, i64 0, i64 23)
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %110 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 5 }, ptr %109, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %112 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 8 }, ptr %111, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %113 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %114 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 4 }, ptr %113, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %115 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, ptr %103, i64 20, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %117 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 6 }, ptr %116, i64 21, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %119 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 11 }, ptr %118, i64 22, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %121 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 5 }, ptr %120, i64 23, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %123 = getelementptr ptr, ptr %122, i64 0
  store ptr %104, ptr %123, align 8
  %124 = getelementptr ptr, ptr %122, i64 1
  store ptr %105, ptr %124, align 8
  %125 = getelementptr ptr, ptr %122, i64 2
  store ptr %106, ptr %125, align 8
  %126 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %122, 0
  %127 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %126, i64 3, 1
  %128 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %127, i64 3, 2
  %129 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %130 = getelementptr ptr, ptr %129, i64 0
  store ptr %107, ptr %130, align 8
  %131 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %129, 0
  %132 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %131, i64 1, 1
  %133 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %132, i64 1, 2
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %128, %"github.com/goplus/llgo/internal/runtime.Slice" %133, i1 false)
  %135 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %134, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %136 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %137 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %136, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %139 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %138, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %135, ptr %139, align 8
  %140 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %138, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %137, ptr %140, align 8
  %141 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %138, 0
  %142 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %141, i64 2, 1
  %143 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %142, i64 2, 2
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %143)
  %145 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @14, i64 5 }, ptr %144, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %146)
  %148 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @15, i64 6 }, ptr %147, i64 40, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %150 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @16, i64 4 }, ptr %149, i64 48, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %108)
  %152 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 10 }, ptr %151, i64 64, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 616)
  %154 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %110, ptr %154, align 8
  %155 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %112, ptr %155, align 8
  %156 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %114, ptr %156, align 8
  %157 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %115, ptr %157, align 8
  %158 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %117, ptr %158, align 8
  %159 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %119, ptr %159, align 8
  %160 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %121, ptr %160, align 8
  %161 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %145, ptr %161, align 8
  %162 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %148, ptr %162, align 8
  %163 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 9
  store %"github.com/goplus/llgo/internal/abi.StructField" %150, ptr %163, align 8
  %164 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %153, i64 10
  store %"github.com/goplus/llgo/internal/abi.StructField" %152, ptr %164, align 8
  %165 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %153, 0
  %166 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %165, i64 11, 1
  %167 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %166, i64 11, 2
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 72, %"github.com/goplus/llgo/internal/runtime.Slice" %167)
  store ptr %168, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  %169 = load ptr, ptr @"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br i1 %11, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %170 = load ptr, ptr @_llgo_int, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %_llgo_33, label %_llgo_34

_llgo_32:                                         ; preds = %_llgo_42, %_llgo_30
  %172 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %173 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 6 }, i64 25, i64 48, i64 0, i64 0)
  %175 = load ptr, ptr @"[]_llgo_main.T", align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %_llgo_149, label %_llgo_150

_llgo_33:                                         ; preds = %_llgo_31
  %177 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %177, ptr @_llgo_int, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_31
  %178 = load ptr, ptr @_llgo_int, align 8
  %179 = load ptr, ptr @_llgo_int, align 8
  %180 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %183 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %182, 0
  %184 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %183, i64 0, 1
  %185 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %184, i64 0, 2
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %187 = getelementptr ptr, ptr %186, i64 0
  store ptr %179, ptr %187, align 8
  %188 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %186, 0
  %189 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %188, i64 1, 1
  %190 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %189, i64 1, 2
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %185, %"github.com/goplus/llgo/internal/runtime.Slice" %190, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %191)
  store ptr %191, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %192 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %193 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %192, 1
  %194 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %193, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", 2
  %195 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %194, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", 3
  %196 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @20, i64 45 }, i64 25, i64 104, i64 0, i64 21)
  %197 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %196, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %199 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %200 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %203 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %204 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %205 = icmp eq ptr %204, null
  br i1 %205, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %206 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 4 }, ptr %201, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %202)
  %208 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 4 }, ptr %207, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %209 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %203)
  %210 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 5 }, ptr %209, i64 80, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %212 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 3 }, ptr %211, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %213 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %214 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %213, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %206, ptr %214, align 8
  %215 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %213, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %208, ptr %215, align 8
  %216 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %213, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %210, ptr %216, align 8
  %217 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %213, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %212, ptr %217, align 8
  %218 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %213, 0
  %219 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %218, i64 4, 1
  %220 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %219, i64 4, 2
  %221 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 96, %"github.com/goplus/llgo/internal/runtime.Slice" %220)
  store ptr %221, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %222 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br i1 %198, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %223 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %224 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %223, 1
  %225 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %224, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", 2
  %226 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %225, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", 3
  %227 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @20, i64 45 }, i64 25, i64 104, i64 0, i64 21)
  %228 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %_llgo_43, label %_llgo_44

_llgo_42:                                         ; preds = %_llgo_148, %_llgo_40
  %230 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %231 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %232 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %233 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %232, 1
  %234 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %233, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", 2
  %235 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %234, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", 3
  %236 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %237 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %236, 1
  %238 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %237, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", 2
  %239 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %238, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", 3
  %240 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %241 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %242 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %241, 1
  %243 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %242, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", 2
  %244 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %243, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", 3
  %245 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %246 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %247 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %246, 1
  %248 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %247, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", 2
  %249 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %248, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", 3
  %250 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %251 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %252 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %251, 1
  %253 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %252, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", 2
  %254 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %253, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", 3
  %255 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %256 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %255, 1
  %257 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %256, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", 2
  %258 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %257, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", 3
  %259 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %260 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %261 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %260, 1
  %262 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %261, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", 2
  %263 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %262, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", 3
  %264 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %265 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %264, 1
  %266 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %265, ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", 2
  %267 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %266, ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", 3
  %268 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %269 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %268, 1
  %270 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %269, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", 2
  %271 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %270, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", 3
  %272 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %273 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %274 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %273, 1
  %275 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %274, ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", 2
  %276 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %275, ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", 3
  %277 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %278 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @48, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %277, 1
  %279 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %278, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsClosure", 2
  %280 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %279, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsClosure", 3
  %281 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %282 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @49, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %281, 1
  %283 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %282, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", 2
  %284 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %283, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", 3
  %285 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %286 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %287 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @50, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %286, 1
  %288 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %287, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", 2
  %289 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %288, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", 3
  %290 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %291 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %290, 1
  %292 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %291, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", 2
  %293 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %292, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", 3
  %294 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %295 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %294, 1
  %296 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %295, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", 2
  %297 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %296, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", 3
  %298 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %299 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %300 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %299, 1
  %301 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %300, ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", 2
  %302 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %301, ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", 3
  %303 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %304 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @66, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %303, 1
  %305 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %304, ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", 2
  %306 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %305, ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", 3
  %307 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %308 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %307, 1
  %309 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %308, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", 2
  %310 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %309, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", 3
  %311 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %312 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %311, 1
  %313 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %312, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", 2
  %314 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %313, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", 3
  %315 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %316 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %315, 1
  %317 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %316, ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", 2
  %318 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %317, ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", 3
  %319 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %320 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %321 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %320, 1
  %322 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %321, ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", 2
  %323 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %322, ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", 3
  %324 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %325 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @80, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %324, 1
  %326 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %325, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", 2
  %327 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %326, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", 3
  %328 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %329 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %195, ptr %329, align 8
  %330 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %235, ptr %330, align 8
  %331 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %239, ptr %331, align 8
  %332 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %244, ptr %332, align 8
  %333 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %249, ptr %333, align 8
  %334 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %254, ptr %334, align 8
  %335 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %258, ptr %335, align 8
  %336 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %263, ptr %336, align 8
  %337 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %267, ptr %337, align 8
  %338 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %271, ptr %338, align 8
  %339 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %276, ptr %339, align 8
  %340 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %280, ptr %340, align 8
  %341 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %284, ptr %341, align 8
  %342 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %289, ptr %342, align 8
  %343 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %293, ptr %343, align 8
  %344 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %297, ptr %344, align 8
  %345 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %302, ptr %345, align 8
  %346 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %306, ptr %346, align 8
  %347 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %310, ptr %347, align 8
  %348 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %314, ptr %348, align 8
  %349 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %318, ptr %349, align 8
  %350 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %323, ptr %350, align 8
  %351 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %327, ptr %351, align 8
  %352 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %328, 0
  %353 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %352, i64 23, 1
  %354 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %353, i64 23, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %9, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 4 }, ptr %169, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %354)
  br label %_llgo_32

_llgo_43:                                         ; preds = %_llgo_41
  %355 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %227)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %355)
  store ptr %355, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_41
  %356 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %357 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %358 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %359 = icmp eq ptr %358, null
  br i1 %359, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %360 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %361 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %360, 0
  %362 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %361, i64 0, 1
  %363 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %362, i64 0, 2
  %364 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %365 = getelementptr ptr, ptr %364, i64 0
  store ptr %357, ptr %365, align 8
  %366 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %364, 0
  %367 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %366, i64 1, 1
  %368 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %367, i64 1, 2
  %369 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %363, %"github.com/goplus/llgo/internal/runtime.Slice" %368, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %369)
  store ptr %369, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %370 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %371 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %370, 1
  %372 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %371, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", 2
  %373 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %372, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", 3
  %374 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 43 }, i64 2, i64 8, i64 0, i64 0)
  %375 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %376 = icmp eq ptr %375, null
  br i1 %376, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  store ptr %374, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %377 = load ptr, ptr @_llgo_int, align 8
  br i1 %376, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %374, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 7 }, ptr %377, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %378 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %379 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %380 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %381 = icmp eq ptr %380, null
  br i1 %381, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %382 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %383 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %382, 0
  %384 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %383, i64 0, 1
  %385 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %384, i64 0, 2
  %386 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %387 = getelementptr ptr, ptr %386, i64 0
  store ptr %379, ptr %387, align 8
  %388 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %386, 0
  %389 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %388, i64 1, 1
  %390 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %389, i64 1, 2
  %391 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %385, %"github.com/goplus/llgo/internal/runtime.Slice" %390, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %391)
  store ptr %391, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %392 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %393 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %392, 1
  %394 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %393, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", 2
  %395 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %394, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", 3
  %396 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %397 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %398 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %399 = icmp eq ptr %398, null
  br i1 %399, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %400 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %401 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %400, 0
  %402 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %401, i64 0, 1
  %403 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %402, i64 0, 2
  %404 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %405 = getelementptr ptr, ptr %404, i64 0
  store ptr %397, ptr %405, align 8
  %406 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %404, 0
  %407 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %406, i64 1, 1
  %408 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %407, i64 1, 2
  %409 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %403, %"github.com/goplus/llgo/internal/runtime.Slice" %408, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %409)
  store ptr %409, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %410 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %411 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %410, 1
  %412 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %411, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", 2
  %413 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %412, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", 3
  %414 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 42 }, i64 25, i64 40, i64 0, i64 3)
  %415 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %416 = icmp eq ptr %415, null
  br i1 %416, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  store ptr %414, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %417 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 44 }, i64 25, i64 128, i64 0, i64 24)
  %418 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %419 = icmp eq ptr %418, null
  br i1 %419, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  store ptr %417, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %420 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %421 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %422 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %423 = icmp eq ptr %422, null
  br i1 %423, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %424 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %421)
  %425 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %424)
  store ptr %425, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %426 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %427 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %428 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %429 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %430 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %431 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %432 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %433 = icmp eq ptr %432, null
  br i1 %433, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %434 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 4 }, ptr %429, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %435 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %430)
  %436 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %435)
  %437 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 2 }, ptr %436, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %438 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %431)
  %439 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %438)
  %440 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 3 }, ptr %439, i64 96, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %441 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %442 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %441, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %434, ptr %442, align 8
  %443 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %441, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %437, ptr %443, align 8
  %444 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %441, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %440, ptr %444, align 8
  %445 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %441, 0
  %446 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %445, i64 3, 1
  %447 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %446, i64 3, 2
  %448 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %447)
  store ptr %448, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %449 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %419, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %450 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %451 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %450, 1
  %452 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %451, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", 2
  %453 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %452, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", 3
  %454 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %455 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %456 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %455, 1
  %457 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %456, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", 2
  %458 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %457, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", 3
  %459 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %460 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %459, 1
  %461 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %460, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", 2
  %462 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %461, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", 3
  %463 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %464 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %465 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %464, 1
  %466 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %465, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", 2
  %467 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %466, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", 3
  %468 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %469 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %470 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %469, 1
  %471 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %470, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", 2
  %472 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %471, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", 3
  %473 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 42 }, i64 25, i64 40, i64 0, i64 3)
  %474 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %475 = icmp eq ptr %474, null
  br i1 %475, label %_llgo_65, label %_llgo_66

_llgo_64:                                         ; preds = %_llgo_90, %_llgo_62
  %476 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %477 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %478 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 44 }, i64 25, i64 128, i64 0, i64 24)
  %479 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  %480 = icmp eq ptr %479, null
  br i1 %480, label %_llgo_145, label %_llgo_146

_llgo_65:                                         ; preds = %_llgo_63
  %481 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %473)
  store ptr %481, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_63
  %482 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %483 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %484 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %485 = icmp eq ptr %484, null
  br i1 %485, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %486 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %487 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %486, 0
  %488 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %487, i64 0, 1
  %489 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %488, i64 0, 2
  %490 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %491 = getelementptr ptr, ptr %490, i64 0
  store ptr %483, ptr %491, align 8
  %492 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %490, 0
  %493 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %492, i64 1, 1
  %494 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %493, i64 1, 2
  %495 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %489, %"github.com/goplus/llgo/internal/runtime.Slice" %494, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %495)
  store ptr %495, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %496 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %497 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %496, 1
  %498 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %497, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", 2
  %499 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %498, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", 3
  %500 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %501 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %500, 1
  %502 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %501, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", 2
  %503 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %502, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", 3
  %504 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 44 }, i64 25, i64 128, i64 0, i64 24)
  %505 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %506 = icmp eq ptr %505, null
  br i1 %506, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %507 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %504)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %507)
  store ptr %507, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %508 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %509 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %510 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %511 = icmp eq ptr %510, null
  br i1 %511, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  %512 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %513 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %512, 0
  %514 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %513, i64 0, 1
  %515 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %514, i64 0, 2
  %516 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %517 = getelementptr ptr, ptr %516, i64 0
  store ptr %509, ptr %517, align 8
  %518 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %516, 0
  %519 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %518, i64 1, 1
  %520 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %519, i64 1, 2
  %521 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %515, %"github.com/goplus/llgo/internal/runtime.Slice" %520, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %521)
  store ptr %521, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %522 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %523 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %522, 1
  %524 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %523, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", 2
  %525 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %524, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", 3
  %526 = load ptr, ptr @_llgo_bool, align 8
  %527 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %528 = icmp eq ptr %527, null
  br i1 %528, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %529 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %530 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %529, 0
  %531 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %530, i64 0, 1
  %532 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %531, i64 0, 2
  %533 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %534 = getelementptr ptr, ptr %533, i64 0
  store ptr %526, ptr %534, align 8
  %535 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %533, 0
  %536 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %535, i64 1, 1
  %537 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %536, i64 1, 2
  %538 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %532, %"github.com/goplus/llgo/internal/runtime.Slice" %537, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %538)
  store ptr %538, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %539 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %540 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %539, 1
  %541 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %540, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", 2
  %542 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %541, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", 3
  %543 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %544 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %543, 1
  %545 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %544, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", 2
  %546 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %545, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", 3
  %547 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @38, i64 49 }, i64 25, i64 120, i64 0, i64 23)
  %548 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %549 = icmp eq ptr %548, null
  br i1 %549, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  store ptr %547, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %550 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @39, i64 43 }, i64 25, i64 24, i64 0, i64 3)
  %551 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %552 = icmp eq ptr %551, null
  br i1 %552, label %_llgo_77, label %_llgo_78

_llgo_77:                                         ; preds = %_llgo_76
  store ptr %550, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_76
  %553 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %554 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 44 }, i64 25, i64 128, i64 0, i64 24)
  %555 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  %556 = icmp eq ptr %555, null
  br i1 %556, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %557 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %558 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @40, i64 5 }, ptr %557, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %559 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %554)
  %560 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 4 }, ptr %559, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %561 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %562 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %561, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %558, ptr %562, align 8
  %563 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %561, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %560, ptr %563, align 8
  %564 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %561, 0
  %565 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %564, i64 2, 1
  %566 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %565, i64 2, 2
  %567 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %566)
  store ptr %567, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %568 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br i1 %552, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %569 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %570 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %569, 1
  %571 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %570, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", 2
  %572 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %571, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", 3
  %573 = load ptr, ptr @_llgo_string, align 8
  %574 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %575 = icmp eq ptr %574, null
  br i1 %575, label %_llgo_83, label %_llgo_84

_llgo_82:                                         ; preds = %_llgo_84, %_llgo_80
  %576 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %577 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @39, i64 43 }, i64 25, i64 24, i64 0, i64 3)
  %578 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %579 = icmp eq ptr %578, null
  br i1 %579, label %_llgo_85, label %_llgo_86

_llgo_83:                                         ; preds = %_llgo_81
  %580 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %581 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %580, 0
  %582 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %581, i64 0, 1
  %583 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %582, i64 0, 2
  %584 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %585 = getelementptr ptr, ptr %584, i64 0
  store ptr %573, ptr %585, align 8
  %586 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %584, 0
  %587 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %586, i64 1, 1
  %588 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %587, i64 1, 2
  %589 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %583, %"github.com/goplus/llgo/internal/runtime.Slice" %588, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %589)
  store ptr %589, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_81
  %590 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %591 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %590, 1
  %592 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %591, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", 2
  %593 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %592, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", 3
  %594 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %595 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %594, 1
  %596 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %595, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", 2
  %597 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %596, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", 3
  %598 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %599 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %598, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %572, ptr %599, align 8
  %600 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %598, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %593, ptr %600, align 8
  %601 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %598, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %597, ptr %601, align 8
  %602 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %598, 0
  %603 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %602, i64 3, 1
  %604 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %603, i64 3, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %550, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 7 }, ptr %568, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %604)
  br label %_llgo_82

_llgo_85:                                         ; preds = %_llgo_82
  %605 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %577)
  store ptr %605, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_82
  %606 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %607 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %608 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @39, i64 43 }, i64 25, i64 24, i64 0, i64 3)
  %609 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %610 = icmp eq ptr %609, null
  br i1 %610, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %611 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 4 }, ptr %607, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %612 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %613 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 8 }, ptr %612, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %614 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %608)
  %615 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @47, i64 7 }, ptr %614, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %616 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %617 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %616, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %611, ptr %617, align 8
  %618 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %616, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %613, ptr %618, align 8
  %619 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %616, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %615, ptr %619, align 8
  %620 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %616, 0
  %621 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %620, i64 3, 1
  %622 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %621, i64 3, 2
  %623 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %622)
  store ptr %623, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %624 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %549, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %625 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %626 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %625, 1
  %627 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %626, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", 2
  %628 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %627, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", 3
  %629 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %630 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %631 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %630, 1
  %632 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %631, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", 2
  %633 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %632, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", 3
  %634 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %635 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %634, 1
  %636 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %635, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", 2
  %637 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %636, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", 3
  %638 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %639 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %640 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %639, 1
  %641 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %640, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", 2
  %642 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %641, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", 3
  %643 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %644 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %645 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %644, 1
  %646 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %645, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", 2
  %647 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %646, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", 3
  %648 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %649 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %650 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %649, 1
  %651 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %650, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", 2
  %652 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %651, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", 3
  %653 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %654 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %653, 1
  %655 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %654, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", 2
  %656 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %655, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", 3
  %657 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %658 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %659 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %658, 1
  %660 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %659, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", 2
  %661 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %660, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", 3
  %662 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %663 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %662, 1
  %664 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %663, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", 2
  %665 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %664, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", 3
  %666 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %667 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %666, 1
  %668 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %667, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", 2
  %669 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %668, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", 3
  %670 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @38, i64 49 }, i64 25, i64 120, i64 0, i64 23)
  %671 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %672 = icmp eq ptr %671, null
  br i1 %672, label %_llgo_91, label %_llgo_92

_llgo_90:                                         ; preds = %_llgo_110, %_llgo_88
  %673 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %674 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %675 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %676 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %675, 1
  %677 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %676, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", 2
  %678 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %677, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", 3
  %679 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %680 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @48, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %679, 1
  %681 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %680, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsClosure", 2
  %682 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %681, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsClosure", 3
  %683 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %684 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @49, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %683, 1
  %685 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %684, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", 2
  %686 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %685, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", 3
  %687 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %688 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %689 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @50, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %688, 1
  %690 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %689, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", 2
  %691 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %690, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", 3
  %692 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %693 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %692, 1
  %694 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %693, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", 2
  %695 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %694, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", 3
  %696 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %697 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %696, 1
  %698 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %697, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", 2
  %699 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %698, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", 3
  %700 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %701 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %702 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %701, 1
  %703 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %702, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", 2
  %704 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %703, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", 3
  %705 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %706 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @66, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %705, 1
  %707 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %706, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", 2
  %708 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %707, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", 3
  %709 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %710 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %709, 1
  %711 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %710, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", 2
  %712 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %711, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", 3
  %713 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %714 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %713, 1
  %715 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %714, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", 2
  %716 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %715, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", 3
  %717 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %718 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %717, 1
  %719 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %718, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", 2
  %720 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %719, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", 3
  %721 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %722 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %723 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %722, 1
  %724 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %723, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", 2
  %725 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %724, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", 3
  %726 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %727 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @80, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %726, 1
  %728 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %727, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", 2
  %729 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %728, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", 3
  %730 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %731 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @86, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %730, 1
  %732 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %731, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", 2
  %733 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %732, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", 3
  %734 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 960)
  %735 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %453, ptr %735, align 8
  %736 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %458, ptr %736, align 8
  %737 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %462, ptr %737, align 8
  %738 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %467, ptr %738, align 8
  %739 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %472, ptr %739, align 8
  %740 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %499, ptr %740, align 8
  %741 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %503, ptr %741, align 8
  %742 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %525, ptr %742, align 8
  %743 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %542, ptr %743, align 8
  %744 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %546, ptr %744, align 8
  %745 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %678, ptr %745, align 8
  %746 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %682, ptr %746, align 8
  %747 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %686, ptr %747, align 8
  %748 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %691, ptr %748, align 8
  %749 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %695, ptr %749, align 8
  %750 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %699, ptr %750, align 8
  %751 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %704, ptr %751, align 8
  %752 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %708, ptr %752, align 8
  %753 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %712, ptr %753, align 8
  %754 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %716, ptr %754, align 8
  %755 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %720, ptr %755, align 8
  %756 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %725, ptr %756, align 8
  %757 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %729, ptr %757, align 8
  %758 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i64 23
  store %"github.com/goplus/llgo/internal/abi.Method" %733, ptr %758, align 8
  %759 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %734, 0
  %760 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %759, i64 24, 1
  %761 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %760, i64 24, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %417, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 8 }, ptr %449, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %761)
  br label %_llgo_64

_llgo_91:                                         ; preds = %_llgo_89
  %762 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %670)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %762)
  store ptr %762, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_89
  %763 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %764 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %765 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %766 = icmp eq ptr %765, null
  br i1 %766, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %767 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %768 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %767, 0
  %769 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %768, i64 0, 1
  %770 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %769, i64 0, 2
  %771 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %772 = getelementptr ptr, ptr %771, i64 0
  store ptr %764, ptr %772, align 8
  %773 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %771, 0
  %774 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %773, i64 1, 1
  %775 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %774, i64 1, 2
  %776 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %770, %"github.com/goplus/llgo/internal/runtime.Slice" %775, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %776)
  store ptr %776, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %777 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %778 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %777, 1
  %779 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %778, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", 2
  %780 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %779, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", 3
  %781 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %782 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @48, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %781, 1
  %783 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %782, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsClosure", 2
  %784 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %783, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsClosure", 3
  %785 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %786 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @49, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %785, 1
  %787 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %786, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", 2
  %788 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %787, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", 3
  %789 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %790 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %791 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @50, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %790, 1
  %792 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %791, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", 2
  %793 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %792, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", 3
  %794 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @52, i64 40 }, i64 7, i64 8, i64 1, i64 1)
  %795 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %796 = icmp eq ptr %795, null
  br i1 %796, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  store ptr %794, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %797 = load ptr, ptr @_llgo_uint, align 8
  %798 = icmp eq ptr %797, null
  br i1 %798, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %799 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %799, ptr @_llgo_uint, align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %800 = load ptr, ptr @_llgo_uint, align 8
  br i1 %796, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %801 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %802 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %801, 1
  %803 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %802, ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", 2
  %804 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %803, ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", 3
  %805 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %801, 1
  %806 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %805, ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", 2
  %807 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %806, ptr @"github.com/goplus/llgo/internal/abi.Kind.String", 3
  %808 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %809 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %808, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %807, ptr %809, align 8
  %810 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %808, 0
  %811 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %810, i64 1, 1
  %812 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %811, i64 1, 2
  %813 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %814 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %813, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %804, ptr %814, align 8
  %815 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %813, 0
  %816 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %815, i64 1, 1
  %817 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %816, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %794, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 4 }, ptr %800, %"github.com/goplus/llgo/internal/runtime.Slice" %812, %"github.com/goplus/llgo/internal/runtime.Slice" %817)
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %818 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %819 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %820 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %821 = icmp eq ptr %820, null
  br i1 %821, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %822 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %823 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %822, 0
  %824 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %823, i64 0, 1
  %825 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %824, i64 0, 2
  %826 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %827 = getelementptr ptr, ptr %826, i64 0
  store ptr %819, ptr %827, align 8
  %828 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %826, 0
  %829 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %828, i64 1, 1
  %830 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %829, i64 1, 2
  %831 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %825, %"github.com/goplus/llgo/internal/runtime.Slice" %830, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %831)
  store ptr %831, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %832 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %833 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %832, 1
  %834 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %833, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", 2
  %835 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %834, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", 3
  %836 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %837 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %836, 1
  %838 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %837, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", 2
  %839 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %838, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", 3
  %840 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @55, i64 43 }, i64 25, i64 136, i64 0, i64 26)
  %841 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %842 = icmp eq ptr %841, null
  br i1 %842, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  store ptr %840, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %843 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %844 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %845 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %846 = load ptr, ptr @_llgo_Pointer, align 8
  %847 = load ptr, ptr @_llgo_Pointer, align 8
  %848 = load ptr, ptr @_llgo_uintptr, align 8
  %849 = load ptr, ptr @_llgo_uintptr, align 8
  %850 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %851 = icmp eq ptr %850, null
  br i1 %851, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %852 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %853 = getelementptr ptr, ptr %852, i64 0
  store ptr %846, ptr %853, align 8
  %854 = getelementptr ptr, ptr %852, i64 1
  store ptr %847, ptr %854, align 8
  %855 = getelementptr ptr, ptr %852, i64 2
  store ptr %848, ptr %855, align 8
  %856 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %852, 0
  %857 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %856, i64 3, 1
  %858 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %857, i64 3, 2
  %859 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %860 = getelementptr ptr, ptr %859, i64 0
  store ptr %849, ptr %860, align 8
  %861 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %859, 0
  %862 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %861, i64 1, 1
  %863 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %862, i64 1, 2
  %864 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %858, %"github.com/goplus/llgo/internal/runtime.Slice" %863, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %864)
  store ptr %864, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %865 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %866 = load ptr, ptr @_llgo_Pointer, align 8
  %867 = load ptr, ptr @_llgo_Pointer, align 8
  %868 = load ptr, ptr @_llgo_uintptr, align 8
  %869 = load ptr, ptr @_llgo_uintptr, align 8
  %870 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %871 = getelementptr ptr, ptr %870, i64 0
  store ptr %866, ptr %871, align 8
  %872 = getelementptr ptr, ptr %870, i64 1
  store ptr %867, ptr %872, align 8
  %873 = getelementptr ptr, ptr %870, i64 2
  store ptr %868, ptr %873, align 8
  %874 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %870, 0
  %875 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %874, i64 3, 1
  %876 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %875, i64 3, 2
  %877 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %878 = getelementptr ptr, ptr %877, i64 0
  store ptr %869, ptr %878, align 8
  %879 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %877, 0
  %880 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %879, i64 1, 1
  %881 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %880, i64 1, 2
  %882 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %876, %"github.com/goplus/llgo/internal/runtime.Slice" %881, i1 false)
  %883 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %882, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %884 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %885 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %884, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %886 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %887 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %886, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %883, ptr %887, align 8
  %888 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %886, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %885, ptr %888, align 8
  %889 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %886, 0
  %890 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %889, i64 2, 1
  %891 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %890, i64 2, 2
  %892 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %891)
  store ptr %892, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %893 = load ptr, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %894 = load ptr, ptr @_llgo_uint16, align 8
  %895 = icmp eq ptr %894, null
  br i1 %895, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  %896 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  store ptr %896, ptr @_llgo_uint16, align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %897 = load ptr, ptr @_llgo_uint16, align 8
  %898 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %899 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %900 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %901 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %902 = load ptr, ptr @_llgo_Pointer, align 8
  %903 = load ptr, ptr @_llgo_Pointer, align 8
  %904 = load ptr, ptr @_llgo_uintptr, align 8
  %905 = load ptr, ptr @_llgo_uintptr, align 8
  %906 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 4 }, ptr %898, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %907 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %899)
  %908 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @50, i64 3 }, ptr %907, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %909 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %900)
  %910 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 4 }, ptr %909, i64 80, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %911 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %901)
  %912 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @56, i64 6 }, ptr %911, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %913 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %914 = getelementptr ptr, ptr %913, i64 0
  store ptr %902, ptr %914, align 8
  %915 = getelementptr ptr, ptr %913, i64 1
  store ptr %903, ptr %915, align 8
  %916 = getelementptr ptr, ptr %913, i64 2
  store ptr %904, ptr %916, align 8
  %917 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %913, 0
  %918 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %917, i64 3, 1
  %919 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %918, i64 3, 2
  %920 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %921 = getelementptr ptr, ptr %920, i64 0
  store ptr %905, ptr %921, align 8
  %922 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %920, 0
  %923 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %922, i64 1, 1
  %924 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %923, i64 1, 2
  %925 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %919, %"github.com/goplus/llgo/internal/runtime.Slice" %924, i1 false)
  %926 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %925, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %927 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %928 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %927, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %929 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %930 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %929, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %926, ptr %930, align 8
  %931 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %929, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %928, ptr %931, align 8
  %932 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %929, 0
  %933 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %932, i64 2, 1
  %934 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %933, i64 2, 2
  %935 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %934)
  %936 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @57, i64 6 }, ptr %935, i64 96, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %937 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %938 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @58, i64 7 }, ptr %937, i64 112, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %939 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %940 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @59, i64 9 }, ptr %939, i64 113, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %941 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %942 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @60, i64 10 }, ptr %941, i64 114, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %943 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %944 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 5 }, ptr %943, i64 116, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %945 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %946 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %906, ptr %946, align 8
  %947 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %908, ptr %947, align 8
  %948 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %910, ptr %948, align 8
  %949 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %912, ptr %949, align 8
  %950 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %936, ptr %950, align 8
  %951 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %938, ptr %951, align 8
  %952 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %940, ptr %952, align 8
  %953 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %942, ptr %953, align 8
  %954 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %945, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %944, ptr %954, align 8
  %955 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %945, 0
  %956 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %955, i64 9, 1
  %957 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %956, i64 9, 2
  %958 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %957)
  store ptr %958, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %959 = load ptr, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %842, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %960 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %961 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %960, 1
  %962 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %961, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", 2
  %963 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %962, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", 3
  %964 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %965 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %966 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %965, 1
  %967 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %966, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", 2
  %968 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %967, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", 3
  %969 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %970 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %969, 1
  %971 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %970, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", 2
  %972 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %971, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", 3
  %973 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %974 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %975 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %974, 1
  %976 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %975, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", 2
  %977 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %976, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", 3
  %978 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %979 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %980 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %979, 1
  %981 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %980, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", 2
  %982 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %981, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", 3
  %983 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %984 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %983, 1
  %985 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %984, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", 2
  %986 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %985, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", 3
  %987 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %988 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %989 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %988, 1
  %990 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %989, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", 2
  %991 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %990, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", 3
  %992 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %993 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %992, 1
  %994 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %993, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", 2
  %995 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %994, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", 3
  %996 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %997 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @62, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %996, 1
  %998 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %997, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", 2
  %999 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %998, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", 3
  %1000 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1001 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1000, 1
  %1002 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1001, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", 2
  %1003 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1002, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", 3
  %1004 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1005 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @63, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1004, 1
  %1006 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1005, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", 2
  %1007 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1006, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", 3
  %1008 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1009 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @64, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %1008, 1
  %1010 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1009, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", 2
  %1011 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1010, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", 3
  %1012 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1013 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1014 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1013, 1
  %1015 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1014, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", 2
  %1016 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1015, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", 3
  %1017 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1018 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @48, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1017, 1
  %1019 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1018, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsClosure", 2
  %1020 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1019, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsClosure", 3
  %1021 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1022 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @49, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1021, 1
  %1023 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1022, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", 2
  %1024 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1023, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", 3
  %1025 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1026 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1025, 1
  %1027 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1026, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", 2
  %1028 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1027, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", 3
  %1029 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1030 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1029, 1
  %1031 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1030, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", 2
  %1032 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1031, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", 3
  %1033 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @55, i64 43 }, i64 25, i64 136, i64 0, i64 26)
  %1034 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %_llgo_111, label %_llgo_112

_llgo_110:                                        ; preds = %_llgo_130, %_llgo_108
  %1036 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1037 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1038 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1039 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1038, 1
  %1040 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1039, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", 2
  %1041 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1040, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", 3
  %1042 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1043 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @66, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1042, 1
  %1044 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1043, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", 2
  %1045 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1044, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", 3
  %1046 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1047 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1046, 1
  %1048 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1047, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", 2
  %1049 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1048, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", 3
  %1050 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1051 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1050, 1
  %1052 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1051, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", 2
  %1053 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1052, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", 3
  %1054 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1055 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1054, 1
  %1056 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1055, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", 2
  %1057 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1056, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", 3
  %1058 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1059 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1060 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1059, 1
  %1061 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1060, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", 2
  %1062 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1061, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", 3
  %1063 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1064 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @80, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1063, 1
  %1065 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1064, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", 2
  %1066 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1065, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", 3
  %1067 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %1068 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %628, ptr %1068, align 8
  %1069 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %633, ptr %1069, align 8
  %1070 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %637, ptr %1070, align 8
  %1071 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %642, ptr %1071, align 8
  %1072 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %647, ptr %1072, align 8
  %1073 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %652, ptr %1073, align 8
  %1074 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %656, ptr %1074, align 8
  %1075 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %661, ptr %1075, align 8
  %1076 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %665, ptr %1076, align 8
  %1077 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %669, ptr %1077, align 8
  %1078 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %780, ptr %1078, align 8
  %1079 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %784, ptr %1079, align 8
  %1080 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %788, ptr %1080, align 8
  %1081 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %793, ptr %1081, align 8
  %1082 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %835, ptr %1082, align 8
  %1083 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %839, ptr %1083, align 8
  %1084 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1041, ptr %1084, align 8
  %1085 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1045, ptr %1085, align 8
  %1086 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1049, ptr %1086, align 8
  %1087 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1053, ptr %1087, align 8
  %1088 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1057, ptr %1088, align 8
  %1089 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1062, ptr %1089, align 8
  %1090 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1067, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1066, ptr %1090, align 8
  %1091 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1067, 0
  %1092 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1091, i64 23, 1
  %1093 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1092, i64 23, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %547, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 13 }, ptr %624, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1093)
  br label %_llgo_90

_llgo_111:                                        ; preds = %_llgo_109
  %1094 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1033)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1094)
  store ptr %1094, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_109
  %1095 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1096 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1097 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1098 = icmp eq ptr %1097, null
  br i1 %1098, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %1099 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1100 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1099, 0
  %1101 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1100, i64 0, 1
  %1102 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1101, i64 0, 2
  %1103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1104 = getelementptr ptr, ptr %1103, i64 0
  store ptr %1096, ptr %1104, align 8
  %1105 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1103, 0
  %1106 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1105, i64 1, 1
  %1107 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1106, i64 1, 2
  %1108 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1102, %"github.com/goplus/llgo/internal/runtime.Slice" %1107, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1108)
  store ptr %1108, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %1109 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1110 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1109, 1
  %1111 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1110, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", 2
  %1112 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1111, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", 3
  %1113 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1114 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @65, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1113, 1
  %1115 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1114, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", 2
  %1116 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1115, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", 3
  %1117 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1118 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @66, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1117, 1
  %1119 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1118, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", 2
  %1120 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1119, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", 3
  %1121 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1122 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1121, 1
  %1123 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1122, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", 2
  %1124 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1123, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", 3
  %1125 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1126 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @68, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1125, 1
  %1127 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1126, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", 2
  %1128 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1127, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", 3
  %1129 = load ptr, ptr @_llgo_uintptr, align 8
  %1130 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %1132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1133 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1132, 0
  %1134 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1133, i64 0, 1
  %1135 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1134, i64 0, 2
  %1136 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1137 = getelementptr ptr, ptr %1136, i64 0
  store ptr %1129, ptr %1137, align 8
  %1138 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1136, 0
  %1139 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1138, i64 1, 1
  %1140 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1139, i64 1, 2
  %1141 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1135, %"github.com/goplus/llgo/internal/runtime.Slice" %1140, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1141)
  store ptr %1141, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115, %_llgo_114
  %1142 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1143 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1142, 1
  %1144 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1143, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", 2
  %1145 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1144, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", 3
  %1146 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1147 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1146, 1
  %1148 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1147, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", 2
  %1149 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1148, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", 3
  %1150 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @71, i64 46 }, i64 25, i64 120, i64 0, i64 23)
  %1151 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %_llgo_117, label %_llgo_118

_llgo_117:                                        ; preds = %_llgo_116
  store ptr %1150, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_116
  %1153 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @72, i64 47 }, i64 25, i64 56, i64 0, i64 2)
  %1154 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  store ptr %1153, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %1156 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1157 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %1158 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  %1160 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1161 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @40, i64 5 }, ptr %1160, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1162 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1157)
  %1163 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @73, i64 3 }, ptr %1162, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1164 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %1165 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @74, i64 6 }, ptr %1164, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1166 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1167 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @75, i64 4 }, ptr %1166, i64 32, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1168 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  %1169 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @76, i64 9 }, ptr %1168, i64 48, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1170 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 280)
  %1171 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1170, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1161, ptr %1171, align 8
  %1172 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1170, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1163, ptr %1172, align 8
  %1173 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1170, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1165, ptr %1173, align 8
  %1174 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1170, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1167, ptr %1174, align 8
  %1175 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1170, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1169, ptr %1175, align 8
  %1176 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1170, 0
  %1177 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1176, i64 5, 1
  %1178 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1177, i64 5, 2
  %1179 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 56, %"github.com/goplus/llgo/internal/runtime.Slice" %1178)
  store ptr %1179, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %1180 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br i1 %1155, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %1181 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1182 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @77, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1181, 1
  %1183 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1182, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", 2
  %1184 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1183, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", 3
  %1185 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1186 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1185, 1
  %1187 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1186, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", 2
  %1188 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1187, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", 3
  %1189 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1190 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1189, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1184, ptr %1190, align 8
  %1191 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1189, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1188, ptr %1191, align 8
  %1192 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1189, 0
  %1193 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1192, i64 2, 1
  %1194 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1193, i64 2, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1153, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @78, i64 11 }, ptr %1180, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1194)
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1195 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1196 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @72, i64 47 }, i64 25, i64 56, i64 0, i64 2)
  %1197 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1198 = icmp eq ptr %1197, null
  br i1 %1198, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %1199 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1196)
  store ptr %1199, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1200 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1201 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %1202 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @72, i64 47 }, i64 25, i64 56, i64 0, i64 2)
  %1203 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %1205 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 4 }, ptr %1201, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %1206 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1207 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 8 }, ptr %1206, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1208 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1202)
  %1209 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @79, i64 6 }, ptr %1208, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1210 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1211 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1210, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1205, ptr %1211, align 8
  %1212 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1210, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1207, ptr %1212, align 8
  %1213 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1210, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1209, ptr %1213, align 8
  %1214 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1210, 0
  %1215 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1214, i64 3, 1
  %1216 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1215, i64 3, 2
  %1217 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1216)
  store ptr %1217, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1218 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1152, label %_llgo_129, label %_llgo_130

_llgo_129:                                        ; preds = %_llgo_128
  %1219 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1220 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1219, 1
  %1221 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1220, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", 2
  %1222 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1221, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", 3
  %1223 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %1224 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1225 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1224, 1
  %1226 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1225, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", 2
  %1227 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1226, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", 3
  %1228 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1229 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1228, 1
  %1230 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1229, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", 2
  %1231 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1230, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", 3
  %1232 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1233 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1234 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1233, 1
  %1235 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1234, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", 2
  %1236 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1235, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", 3
  %1237 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1238 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1239 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1238, 1
  %1240 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1239, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", 2
  %1241 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1240, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", 3
  %1242 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1243 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1244 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1243, 1
  %1245 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1244, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", 2
  %1246 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1245, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", 3
  %1247 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1248 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1247, 1
  %1249 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1248, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", 2
  %1250 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1249, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", 3
  %1251 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1252 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1253 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1252, 1
  %1254 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1253, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", 2
  %1255 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1254, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", 3
  %1256 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1257 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1256, 1
  %1258 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1257, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", 2
  %1259 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1258, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", 3
  %1260 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1261 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1260, 1
  %1262 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1261, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", 2
  %1263 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1262, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", 3
  %1264 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1265 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1266 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1265, 1
  %1267 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1266, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", 2
  %1268 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1267, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", 3
  %1269 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1270 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @48, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1269, 1
  %1271 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1270, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsClosure", 2
  %1272 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1271, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsClosure", 3
  %1273 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1274 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @49, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1273, 1
  %1275 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1274, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", 2
  %1276 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1275, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", 3
  %1277 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1278 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1279 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @50, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1278, 1
  %1280 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1279, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", 2
  %1281 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1280, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", 3
  %1282 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1283 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1282, 1
  %1284 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1283, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", 2
  %1285 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1284, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", 3
  %1286 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1287 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1286, 1
  %1288 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1287, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", 2
  %1289 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1288, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", 3
  %1290 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1291 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1292 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1291, 1
  %1293 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1292, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", 2
  %1294 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1293, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", 3
  %1295 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1296 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @66, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1295, 1
  %1297 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1296, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", 2
  %1298 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1297, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", 3
  %1299 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1300 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1299, 1
  %1301 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1300, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", 2
  %1302 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1301, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", 3
  %1303 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1304 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1303, 1
  %1305 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1304, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", 2
  %1306 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1305, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", 3
  %1307 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1308 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1307, 1
  %1309 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1308, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", 2
  %1310 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1309, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", 3
  %1311 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @71, i64 46 }, i64 25, i64 120, i64 0, i64 23)
  %1312 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1313 = icmp eq ptr %1312, null
  br i1 %1313, label %_llgo_131, label %_llgo_132

_llgo_130:                                        ; preds = %_llgo_144, %_llgo_128
  %1314 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1315 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1316 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1317 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1316, 1
  %1318 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1317, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", 2
  %1319 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1318, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", 3
  %1320 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1321 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @80, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1320, 1
  %1322 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1321, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", 2
  %1323 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1322, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", 3
  %1324 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 1040)
  %1325 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %963, ptr %1325, align 8
  %1326 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %968, ptr %1326, align 8
  %1327 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %972, ptr %1327, align 8
  %1328 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %977, ptr %1328, align 8
  %1329 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %982, ptr %1329, align 8
  %1330 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %986, ptr %1330, align 8
  %1331 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %991, ptr %1331, align 8
  %1332 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %995, ptr %1332, align 8
  %1333 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %999, ptr %1333, align 8
  %1334 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1003, ptr %1334, align 8
  %1335 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1007, ptr %1335, align 8
  %1336 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1011, ptr %1336, align 8
  %1337 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1016, ptr %1337, align 8
  %1338 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1020, ptr %1338, align 8
  %1339 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1024, ptr %1339, align 8
  %1340 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1028, ptr %1340, align 8
  %1341 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1032, ptr %1341, align 8
  %1342 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1112, ptr %1342, align 8
  %1343 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1116, ptr %1343, align 8
  %1344 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1120, ptr %1344, align 8
  %1345 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1124, ptr %1345, align 8
  %1346 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1128, ptr %1346, align 8
  %1347 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1145, ptr %1347, align 8
  %1348 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 23
  store %"github.com/goplus/llgo/internal/abi.Method" %1149, ptr %1348, align 8
  %1349 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 24
  store %"github.com/goplus/llgo/internal/abi.Method" %1319, ptr %1349, align 8
  %1350 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1324, i64 25
  store %"github.com/goplus/llgo/internal/abi.Method" %1323, ptr %1350, align 8
  %1351 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1324, 0
  %1352 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1351, i64 26, 1
  %1353 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1352, i64 26, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %840, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 7 }, ptr %959, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1353)
  br label %_llgo_110

_llgo_131:                                        ; preds = %_llgo_129
  %1354 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1311)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1354)
  store ptr %1354, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_129
  %1355 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1356 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1357 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1358 = icmp eq ptr %1357, null
  br i1 %1358, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  %1359 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1360 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1359, 0
  %1361 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1360, i64 0, 1
  %1362 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1361, i64 0, 2
  %1363 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1364 = getelementptr ptr, ptr %1363, i64 0
  store ptr %1356, ptr %1364, align 8
  %1365 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1363, 0
  %1366 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1365, i64 1, 1
  %1367 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1366, i64 1, 2
  %1368 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1362, %"github.com/goplus/llgo/internal/runtime.Slice" %1367, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1368)
  store ptr %1368, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_132
  %1369 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1370 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1369, 1
  %1371 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1370, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", 2
  %1372 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1371, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", 3
  %1373 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @81, i64 48 }, i64 25, i64 24, i64 0, i64 2)
  %1374 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %_llgo_135, label %_llgo_136

_llgo_135:                                        ; preds = %_llgo_134
  store ptr %1373, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_134
  %1376 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1377 = icmp eq ptr %1376, null
  br i1 %1377, label %_llgo_137, label %_llgo_138

_llgo_137:                                        ; preds = %_llgo_136
  %1378 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1379 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 8 }, ptr %1378, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1380 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1381 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @82, i64 6 }, ptr %1380, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1382 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1383 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @83, i64 6 }, ptr %1382, i64 18, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1384 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1385 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @84, i64 4 }, ptr %1384, i64 20, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1386 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1387 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1386, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1379, ptr %1387, align 8
  %1388 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1386, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1381, ptr %1388, align 8
  %1389 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1386, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1383, ptr %1389, align 8
  %1390 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1386, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1385, ptr %1390, align 8
  %1391 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1386, 0
  %1392 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1391, i64 4, 1
  %1393 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1392, i64 4, 2
  %1394 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %1393)
  store ptr %1394, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_136
  %1395 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1375, label %_llgo_139, label %_llgo_140

_llgo_139:                                        ; preds = %_llgo_138
  %1396 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1397 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1398 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1397, 1
  %1399 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1398, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", 2
  %1400 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1399, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", 3
  %1401 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1402 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1403 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @47, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1402, 1
  %1404 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1403, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", 2
  %1405 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1404, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", 3
  %1406 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1407 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1406, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1400, ptr %1407, align 8
  %1408 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1406, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1405, ptr %1408, align 8
  %1409 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1406, 0
  %1410 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1409, i64 2, 1
  %1411 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1410, i64 2, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1373, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @85, i64 12 }, ptr %1395, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1411)
  br label %_llgo_140

_llgo_140:                                        ; preds = %_llgo_139, %_llgo_138
  %1412 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1413 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @81, i64 48 }, i64 25, i64 24, i64 0, i64 2)
  %1414 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %_llgo_141, label %_llgo_142

_llgo_141:                                        ; preds = %_llgo_140
  %1416 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1413)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1416)
  store ptr %1416, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_142

_llgo_142:                                        ; preds = %_llgo_141, %_llgo_140
  %1417 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1418 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1419 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1420 = icmp eq ptr %1419, null
  br i1 %1420, label %_llgo_143, label %_llgo_144

_llgo_143:                                        ; preds = %_llgo_142
  %1421 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1422 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1421, 0
  %1423 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1422, i64 0, 1
  %1424 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1423, i64 0, 2
  %1425 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1426 = getelementptr ptr, ptr %1425, i64 0
  store ptr %1418, ptr %1426, align 8
  %1427 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1425, 0
  %1428 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1427, i64 1, 1
  %1429 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1428, i64 1, 2
  %1430 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1424, %"github.com/goplus/llgo/internal/runtime.Slice" %1429, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1430)
  store ptr %1430, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143, %_llgo_142
  %1431 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1432 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @80, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1431, 1
  %1433 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1432, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", 2
  %1434 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1433, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", 3
  %1435 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %1436 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1222, ptr %1436, align 8
  %1437 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1227, ptr %1437, align 8
  %1438 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1231, ptr %1438, align 8
  %1439 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1236, ptr %1439, align 8
  %1440 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1241, ptr %1440, align 8
  %1441 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1246, ptr %1441, align 8
  %1442 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1250, ptr %1442, align 8
  %1443 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1255, ptr %1443, align 8
  %1444 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1259, ptr %1444, align 8
  %1445 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1263, ptr %1445, align 8
  %1446 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1268, ptr %1446, align 8
  %1447 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1272, ptr %1447, align 8
  %1448 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1276, ptr %1448, align 8
  %1449 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1281, ptr %1449, align 8
  %1450 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1285, ptr %1450, align 8
  %1451 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1289, ptr %1451, align 8
  %1452 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1294, ptr %1452, align 8
  %1453 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1298, ptr %1453, align 8
  %1454 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1302, ptr %1454, align 8
  %1455 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1306, ptr %1455, align 8
  %1456 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1310, ptr %1456, align 8
  %1457 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1372, ptr %1457, align 8
  %1458 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1435, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1434, ptr %1458, align 8
  %1459 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1435, 0
  %1460 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1459, i64 23, 1
  %1461 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1460, i64 23, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1150, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 10 }, ptr %1218, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1461)
  br label %_llgo_130

_llgo_145:                                        ; preds = %_llgo_64
  %1462 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1463 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @40, i64 5 }, ptr %1462, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1464 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %478)
  %1465 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @87, i64 5 }, ptr %1464, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1466 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1467 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @88, i64 4 }, ptr %1466, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1468 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1469 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @89, i64 4 }, ptr %1468, i64 32, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1470 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1471 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1470, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1463, ptr %1471, align 8
  %1472 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1470, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1465, ptr %1472, align 8
  %1473 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1470, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1467, ptr %1473, align 8
  %1474 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1470, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1469, ptr %1474, align 8
  %1475 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1470, 0
  %1476 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1475, i64 4, 1
  %1477 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1476, i64 4, 2
  %1478 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 40, %"github.com/goplus/llgo/internal/runtime.Slice" %1477)
  store ptr %1478, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br label %_llgo_146

_llgo_146:                                        ; preds = %_llgo_145, %_llgo_64
  %1479 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br i1 %416, label %_llgo_147, label %_llgo_148

_llgo_147:                                        ; preds = %_llgo_146
  %1480 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1481 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1480, 1
  %1482 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1481, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", 2
  %1483 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1482, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", 3
  %1484 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1485 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1484, 1
  %1486 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1485, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", 2
  %1487 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1486, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", 3
  %1488 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1489 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1488, 1
  %1490 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1489, ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", 2
  %1491 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1490, ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", 3
  %1492 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %1493 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1492, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1483, ptr %1493, align 8
  %1494 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1492, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1487, ptr %1494, align 8
  %1495 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1492, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1491, ptr %1495, align 8
  %1496 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1492, 0
  %1497 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1496, i64 3, 1
  %1498 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1497, i64 3, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %414, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @90, i64 6 }, ptr %1479, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1498)
  br label %_llgo_148

_llgo_148:                                        ; preds = %_llgo_147, %_llgo_146
  %1499 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1500 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1501 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1502 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1501, 1
  %1503 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1502, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", 2
  %1504 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1503, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", 3
  %1505 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1506 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1505, 1
  %1507 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1506, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", 2
  %1508 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1507, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", 3
  %1509 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1510 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1511 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1510, 1
  %1512 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1511, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", 2
  %1513 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1512, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", 3
  %1514 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1515 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1514, 1
  %1516 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1515, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", 2
  %1517 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1516, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", 3
  %1518 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1519 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1518, 1
  %1520 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1519, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", 2
  %1521 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1520, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", 3
  %1522 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1523 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1524 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1523, 1
  %1525 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1524, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", 2
  %1526 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1525, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", 3
  %1527 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1528 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @48, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1527, 1
  %1529 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1528, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsClosure", 2
  %1530 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1529, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsClosure", 3
  %1531 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1532 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @49, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1531, 1
  %1533 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1532, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", 2
  %1534 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1533, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", 3
  %1535 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1536 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1537 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @50, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1536, 1
  %1538 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1537, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", 2
  %1539 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1538, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", 3
  %1540 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1541 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1540, 1
  %1542 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1541, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", 2
  %1543 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1542, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", 3
  %1544 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1545 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1546 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1545, 1
  %1547 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1546, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", 2
  %1548 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1547, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", 3
  %1549 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1550 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @66, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1549, 1
  %1551 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1550, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", 2
  %1552 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1551, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", 3
  %1553 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1554 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1553, 1
  %1555 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1554, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", 2
  %1556 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1555, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", 3
  %1557 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1558 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1557, 1
  %1559 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1558, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", 2
  %1560 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1559, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", 3
  %1561 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1562 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1561, 1
  %1563 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1562, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", 2
  %1564 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1563, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", 3
  %1565 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1566 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1567 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1566, 1
  %1568 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1567, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", 2
  %1569 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1568, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", 3
  %1570 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1571 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @80, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1570, 1
  %1572 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1571, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", 2
  %1573 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1572, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", 3
  %1574 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 840)
  %1575 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %226, ptr %1575, align 8
  %1576 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %373, ptr %1576, align 8
  %1577 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %395, ptr %1577, align 8
  %1578 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %413, ptr %1578, align 8
  %1579 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1504, ptr %1579, align 8
  %1580 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1508, ptr %1580, align 8
  %1581 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1513, ptr %1581, align 8
  %1582 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1517, ptr %1582, align 8
  %1583 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1521, ptr %1583, align 8
  %1584 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1526, ptr %1584, align 8
  %1585 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1530, ptr %1585, align 8
  %1586 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1534, ptr %1586, align 8
  %1587 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1539, ptr %1587, align 8
  %1588 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1543, ptr %1588, align 8
  %1589 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1548, ptr %1589, align 8
  %1590 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1552, ptr %1590, align 8
  %1591 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1556, ptr %1591, align 8
  %1592 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1560, ptr %1592, align 8
  %1593 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1564, ptr %1593, align 8
  %1594 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1569, ptr %1594, align 8
  %1595 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1573, ptr %1595, align 8
  %1596 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1574, 0
  %1597 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1596, i64 21, 1
  %1598 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1597, i64 21, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %196, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 9 }, ptr %222, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1598)
  br label %_llgo_42

_llgo_149:                                        ; preds = %_llgo_32
  %1599 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %174)
  store ptr %1599, ptr @"[]_llgo_main.T", align 8
  br label %_llgo_150

_llgo_150:                                        ; preds = %_llgo_149, %_llgo_32
  %1600 = load ptr, ptr @"[]_llgo_main.T", align 8
  %1601 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 6 }, i64 25, i64 48, i64 0, i64 0)
  %1602 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 40 }, i64 25, i64 80, i64 0, i64 23)
  %1603 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 6 }, i64 25, i64 48, i64 0, i64 0)
  %1604 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1601)
  %1605 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @91, i64 1 }, ptr %1604, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1606 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1602)
  %1607 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @92, i64 1 }, ptr %1606, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1608 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %1609 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @93, i64 1 }, ptr %1608, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1610 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1603)
  %1611 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @94, i64 1 }, ptr %1610, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1612 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1613 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1612, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1605, ptr %1613, align 8
  %1614 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1612, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1607, ptr %1614, align 8
  %1615 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1612, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1609, ptr %1615, align 8
  %1616 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1612, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1611, ptr %1616, align 8
  %1617 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1612, 0
  %1618 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1617, i64 4, 1
  %1619 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1618, i64 4, 2
  %1620 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %1619)
  store ptr %1620, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  %1621 = load ptr, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  br i1 %2, label %_llgo_151, label %_llgo_152

_llgo_151:                                        ; preds = %_llgo_150
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @95, i64 1 }, ptr %1621, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
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

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsClosure"(ptr)

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

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).IsClosure"(ptr)

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

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).IsClosure"(ptr)

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

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).IsClosure"(ptr)

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

declare i1 @"github.com/goplus/llgo/internal/abi.(*Method).Exported"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Method).Name"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsClosure"(ptr)

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

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).IsClosure"(ptr)

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
