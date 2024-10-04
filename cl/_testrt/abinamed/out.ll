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
@28 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/internal/abi.Method", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/internal/abi.FuncType", align 1
@"[]*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [2 x i8] c"In", align 1
@32 = private unnamed_addr constant [3 x i8] c"Out", align 1
@33 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@34 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@35 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@36 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@37 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
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
@48 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@49 = private unnamed_addr constant [3 x i8] c"Key", align 1
@50 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@51 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Kind", align 1
@_llgo_uint = linkonce global ptr null, align 8
@52 = private unnamed_addr constant [6 x i8] c"String", align 1
@53 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@54 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/internal/abi.MapType", align 1
@"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY" = linkonce global ptr null, align 8
@"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg" = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM" = linkonce global ptr null, align 8
@55 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@56 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@57 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@58 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@59 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@60 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@61 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@62 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@63 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@64 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@65 = private unnamed_addr constant [9 x i8] c"NumMethod", align 1
@66 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@67 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@68 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@69 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@70 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/internal/abi.StructType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@71 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/internal/abi.StructField", align 1
@"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig" = linkonce global ptr null, align 8
@72 = private unnamed_addr constant [3 x i8] c"Typ", align 1
@73 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@74 = private unnamed_addr constant [4 x i8] c"Tag_", align 1
@75 = private unnamed_addr constant [9 x i8] c"Embedded_", align 1
@76 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@77 = private unnamed_addr constant [11 x i8] c"StructField", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0" = linkonce global ptr null, align 8
@78 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@79 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@80 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/internal/abi.UncommonType", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
@81 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@82 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@83 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@84 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@85 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0" = linkonce global ptr null, align 8
@86 = private unnamed_addr constant [5 x i8] c"Mtyp_", align 1
@87 = private unnamed_addr constant [4 x i8] c"Ifn_", align 1
@88 = private unnamed_addr constant [4 x i8] c"Tfn_", align 1
@89 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@"[]_llgo_main.T" = linkonce global ptr null, align 8
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = linkonce global ptr null, align 8
@90 = private unnamed_addr constant [1 x i8] c"p", align 1
@91 = private unnamed_addr constant [1 x i8] c"t", align 1
@92 = private unnamed_addr constant [1 x i8] c"n", align 1
@93 = private unnamed_addr constant [1 x i8] c"a", align 1
@94 = private unnamed_addr constant [1 x i8] c"T", align 1
@95 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@96 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@97 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@98 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@99 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@100 = private unnamed_addr constant [13 x i8] c"error field 3", align 1

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
  store ptr @95, ptr %47, align 8
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
  store ptr @96, ptr %63, align 8
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
  store ptr @97, ptr %91, align 8
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
  store ptr @98, ptr %107, align 8
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
  store ptr @99, ptr %142, align 8
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
  store ptr @100, ptr %169, align 8
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
  %12 = load ptr, ptr @"*_llgo_main.T", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %11)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %14)
  store ptr %14, ptr @"*_llgo_main.T", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = load ptr, ptr @"*_llgo_main.T", align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @1, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 40, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %19, i64 25, i64 80, i64 0, i64 22)
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
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %155, i64 25, i64 72, i64 0, i64 22)
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
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %173, i64 25, i64 72, i64 0, i64 22)
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
  %405 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %404, i64 25, i64 104, i64 0, i64 20)
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
  %416 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %415, i64 25, i64 80, i64 0, i64 22)
  %417 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 0
  store ptr @1, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 1
  store i64 40, ptr %419, align 4
  %420 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %417, align 8
  %421 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %420, i64 25, i64 80, i64 0, i64 22)
  %422 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 0
  store ptr @1, ptr %423, align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 1
  store i64 40, ptr %424, align 4
  %425 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %422, align 8
  %426 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %425, i64 25, i64 80, i64 0, i64 22)
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
  %521 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %520, i64 25, i64 104, i64 0, i64 20)
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
  store i64 15, ptr %587, align 4
  %588 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %585, align 8
  %589 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %590 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %589, i32 0, i32 0
  store ptr @29, ptr %590, align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %589, i32 0, i32 1
  store i64 42, ptr %591, align 4
  %592 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %589, align 8
  %593 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %592, i64 25, i64 40, i64 0, i64 3)
  %594 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %595 = icmp eq ptr %594, null
  br i1 %595, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  store ptr %593, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %596 = load ptr, ptr @_llgo_string, align 8
  %597 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %597, i32 0, i32 0
  store ptr @30, ptr %598, align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %597, i32 0, i32 1
  store i64 44, ptr %599, align 4
  %600 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %597, align 8
  %601 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %600, i64 25, i64 128, i64 0, i64 23)
  %602 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %603 = icmp eq ptr %602, null
  br i1 %603, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %601, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %604 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %605 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %606 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 0
  store ptr @1, ptr %607, align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 1
  store i64 40, ptr %608, align 4
  %609 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %606, align 8
  %610 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %609, i64 25, i64 80, i64 0, i64 22)
  %611 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %612 = icmp eq ptr %611, null
  br i1 %612, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %613 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %610)
  %614 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %613)
  store ptr %614, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %615 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %616 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %617 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %618 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 0
  store ptr @1, ptr %619, align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 1
  store i64 40, ptr %620, align 4
  %621 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %618, align 8
  %622 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %621, i64 25, i64 80, i64 0, i64 22)
  %623 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %623, i32 0, i32 0
  store ptr @1, ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %623, i32 0, i32 1
  store i64 40, ptr %625, align 4
  %626 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %623, align 8
  %627 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %626, i64 25, i64 80, i64 0, i64 22)
  %628 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 0
  store ptr @1, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 1
  store i64 40, ptr %630, align 4
  %631 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %628, align 8
  %632 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %631, i64 25, i64 80, i64 0, i64 22)
  %633 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %634 = icmp eq ptr %633, null
  br i1 %634, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %635 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %636 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %635, i32 0, i32 0
  store ptr @21, ptr %636, align 8
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %635, i32 0, i32 1
  store i64 4, ptr %637, align 4
  %638 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %635, align 8
  %639 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %639, i32 0, i32 0
  store ptr null, ptr %640, align 8
  %641 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %639, i32 0, i32 1
  store i64 0, ptr %641, align 4
  %642 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %639, align 8
  %643 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %638, ptr %622, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %642, i1 true)
  %644 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %644, i32 0, i32 0
  store ptr @31, ptr %645, align 8
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %644, i32 0, i32 1
  store i64 2, ptr %646, align 4
  %647 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %644, align 8
  %648 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %648, i32 0, i32 0
  store ptr null, ptr %649, align 8
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %648, i32 0, i32 1
  store i64 0, ptr %650, align 4
  %651 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %648, align 8
  %652 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %627)
  %653 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %652)
  %654 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %647, ptr %653, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %651, i1 false)
  %655 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %655, i32 0, i32 0
  store ptr @32, ptr %656, align 8
  %657 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %655, i32 0, i32 1
  store i64 3, ptr %657, align 4
  %658 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %655, align 8
  %659 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %659, i32 0, i32 0
  store ptr null, ptr %660, align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %659, i32 0, i32 1
  store i64 0, ptr %661, align 4
  %662 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %659, align 8
  %663 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %632)
  %664 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %663)
  %665 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %658, ptr %664, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %662, i1 false)
  %666 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %667 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %666, i32 0, i32 0
  store ptr @7, ptr %667, align 8
  %668 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %666, i32 0, i32 1
  store i64 4, ptr %668, align 4
  %669 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %666, align 8
  %670 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %671 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %670, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %643, ptr %671, align 8
  %672 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %670, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %654, ptr %672, align 8
  %673 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %670, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %665, ptr %673, align 8
  %674 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, i32 0, i32 0
  store ptr %670, ptr %675, align 8
  %676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, i32 0, i32 1
  store i64 3, ptr %676, align 4
  %677 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, i32 0, i32 2
  store i64 3, ptr %677, align 4
  %678 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, align 8
  %679 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %669, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %678)
  store ptr %679, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %680 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %603, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %681 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %682 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %681, i32 0, i32 0
  store ptr @18, ptr %682, align 8
  %683 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %681, i32 0, i32 1
  store i64 5, ptr %683, align 4
  %684 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %681, align 8
  %685 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %686 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %687 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %686, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %684, ptr %687, align 8
  %688 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %686, i32 0, i32 1
  store ptr %685, ptr %688, align 8
  %689 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %686, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %689, align 8
  %690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %686, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %690, align 8
  %691 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %686, align 8
  %692 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %692, i32 0, i32 0
  store ptr @19, ptr %693, align 8
  %694 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %692, i32 0, i32 1
  store i64 9, ptr %694, align 4
  %695 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %692, align 8
  %696 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %697 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %697, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %695, ptr %698, align 8
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %697, i32 0, i32 1
  store ptr %696, ptr %699, align 8
  %700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %697, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %700, align 8
  %701 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %697, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %701, align 8
  %702 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %697, align 8
  %703 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %704 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %703, i32 0, i32 0
  store ptr @25, ptr %704, align 8
  %705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %703, i32 0, i32 1
  store i64 7, ptr %705, align 4
  %706 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %703, align 8
  %707 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %708 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %709 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %706, ptr %709, align 8
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 1
  store ptr %707, ptr %710, align 8
  %711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %711, align 8
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %712, align 8
  %713 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %708, align 8
  %714 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %714, i32 0, i32 0
  store ptr @27, ptr %715, align 8
  %716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %714, i32 0, i32 1
  store i64 6, ptr %716, align 4
  %717 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %714, align 8
  %718 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %719 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %717, ptr %720, align 8
  %721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 1
  store ptr %718, ptr %721, align 8
  %722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %722, align 8
  %723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %723, align 8
  %724 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %719, align 8
  %725 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %725, i32 0, i32 0
  store ptr @22, ptr %726, align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %725, i32 0, i32 1
  store i64 4, ptr %727, align 4
  %728 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %725, align 8
  %729 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %730 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %728, ptr %731, align 8
  %732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 1
  store ptr %729, ptr %732, align 8
  %733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %733, align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %734, align 8
  %735 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %730, align 8
  %736 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %737 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %736, i32 0, i32 0
  store ptr @28, ptr %737, align 8
  %738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %736, i32 0, i32 1
  store i64 15, ptr %738, align 4
  %739 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %736, align 8
  %740 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %741 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %741, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %739, ptr %742, align 8
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %741, i32 0, i32 1
  store ptr %740, ptr %743, align 8
  %744 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %741, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", ptr %744, align 8
  %745 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %741, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", ptr %745, align 8
  %746 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %741, align 8
  %747 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %747, i32 0, i32 0
  store ptr @33, ptr %748, align 8
  %749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %747, i32 0, i32 1
  store i64 10, ptr %749, align 4
  %750 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %747, align 8
  %751 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %752 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %750, ptr %753, align 8
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 1
  store ptr %751, ptr %754, align 8
  %755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %755, align 8
  %756 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %756, align 8
  %757 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %752, align 8
  %758 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %758, i32 0, i32 0
  store ptr @34, ptr %759, align 8
  %760 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %758, i32 0, i32 1
  store i64 8, ptr %760, align 4
  %761 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %758, align 8
  %762 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %762, i32 0, i32 0
  store ptr @30, ptr %763, align 8
  %764 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %762, i32 0, i32 1
  store i64 44, ptr %764, align 4
  %765 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %762, align 8
  %766 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %765, i64 25, i64 128, i64 0, i64 23)
  %767 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %768 = icmp eq ptr %767, null
  br i1 %768, label %_llgo_61, label %_llgo_62

_llgo_60:                                         ; preds = %_llgo_136, %_llgo_58
  %769 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %770 = load ptr, ptr @_llgo_Pointer, align 8
  %771 = load ptr, ptr @_llgo_Pointer, align 8
  %772 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %772, i32 0, i32 0
  store ptr @30, ptr %773, align 8
  %774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %772, i32 0, i32 1
  store i64 44, ptr %774, align 4
  %775 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %772, align 8
  %776 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %775, i64 25, i64 128, i64 0, i64 23)
  %777 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  %778 = icmp eq ptr %777, null
  br i1 %778, label %_llgo_137, label %_llgo_138

_llgo_61:                                         ; preds = %_llgo_59
  %779 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %766)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %779)
  store ptr %779, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_59
  %780 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %781 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %782 = icmp eq ptr %781, null
  br i1 %782, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %783 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %784 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %784, i32 0, i32 0
  store ptr %783, ptr %785, align 8
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %784, i32 0, i32 1
  store i64 0, ptr %786, align 4
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %784, i32 0, i32 2
  store i64 0, ptr %787, align 4
  %788 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %784, align 8
  %789 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %790 = getelementptr ptr, ptr %789, i64 0
  store ptr %780, ptr %790, align 8
  %791 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %791, i32 0, i32 0
  store ptr %789, ptr %792, align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %791, i32 0, i32 1
  store i64 1, ptr %793, align 4
  %794 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %791, i32 0, i32 2
  store i64 1, ptr %794, align 4
  %795 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %791, align 8
  %796 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %788, %"github.com/goplus/llgo/internal/runtime.Slice" %795, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %796)
  store ptr %796, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %797 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %798 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %799 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %761, ptr %799, align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 1
  store ptr %797, ptr %800, align 8
  %801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %801, align 8
  %802 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %802, align 8
  %803 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %798, align 8
  %804 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %804, i32 0, i32 0
  store ptr @35, ptr %805, align 8
  %806 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %804, i32 0, i32 1
  store i64 7, ptr %806, align 4
  %807 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %804, align 8
  %808 = load ptr, ptr @_llgo_bool, align 8
  %809 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %810 = icmp eq ptr %809, null
  br i1 %810, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %811 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %812 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %813 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, i32 0, i32 0
  store ptr %811, ptr %813, align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, i32 0, i32 1
  store i64 0, ptr %814, align 4
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, i32 0, i32 2
  store i64 0, ptr %815, align 4
  %816 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, align 8
  %817 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %818 = getelementptr ptr, ptr %817, i64 0
  store ptr %808, ptr %818, align 8
  %819 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %819, i32 0, i32 0
  store ptr %817, ptr %820, align 8
  %821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %819, i32 0, i32 1
  store i64 1, ptr %821, align 4
  %822 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %819, i32 0, i32 2
  store i64 1, ptr %822, align 4
  %823 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %819, align 8
  %824 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %816, %"github.com/goplus/llgo/internal/runtime.Slice" %823, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %824)
  store ptr %824, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %825 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %826 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %826, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %807, ptr %827, align 8
  %828 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %826, i32 0, i32 1
  store ptr %825, ptr %828, align 8
  %829 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %826, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %829, align 8
  %830 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %826, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %830, align 8
  %831 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %826, align 8
  %832 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %833 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %832, i32 0, i32 0
  store ptr @36, ptr %833, align 8
  %834 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %832, i32 0, i32 1
  store i64 10, ptr %834, align 4
  %835 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %832, align 8
  %836 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %837 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %838 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %837, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %835, ptr %838, align 8
  %839 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %837, i32 0, i32 1
  store ptr %836, ptr %839, align 8
  %840 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %837, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %840, align 8
  %841 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %837, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %841, align 8
  %842 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %837, align 8
  %843 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %843, i32 0, i32 0
  store ptr @37, ptr %844, align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %843, i32 0, i32 1
  store i64 13, ptr %845, align 4
  %846 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %843, align 8
  %847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 0
  store ptr @38, ptr %848, align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 1
  store i64 49, ptr %849, align 4
  %850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %847, align 8
  %851 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %850, i64 25, i64 120, i64 0, i64 22)
  %852 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %853 = icmp eq ptr %852, null
  br i1 %853, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  store ptr %851, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %854 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %855 = load ptr, ptr @_llgo_string, align 8
  %856 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %857 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 0
  store ptr @39, ptr %857, align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 1
  store i64 43, ptr %858, align 4
  %859 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %856, align 8
  %860 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %859, i64 25, i64 24, i64 0, i64 3)
  %861 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %862 = icmp eq ptr %861, null
  br i1 %862, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  store ptr %860, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %863 = load ptr, ptr @_llgo_string, align 8
  %864 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %865 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %866 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %865, i32 0, i32 0
  store ptr @30, ptr %866, align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %865, i32 0, i32 1
  store i64 44, ptr %867, align 4
  %868 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %865, align 8
  %869 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %868, i64 25, i64 128, i64 0, i64 23)
  %870 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  %871 = icmp eq ptr %870, null
  br i1 %871, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  %872 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %873 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %872, i32 0, i32 0
  store ptr @40, ptr %873, align 8
  %874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %872, i32 0, i32 1
  store i64 5, ptr %874, align 4
  %875 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %872, align 8
  %876 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %877 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %876, i32 0, i32 0
  store ptr null, ptr %877, align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %876, i32 0, i32 1
  store i64 0, ptr %878, align 4
  %879 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %876, align 8
  %880 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %881 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %875, ptr %880, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %879, i1 false)
  %882 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %882, i32 0, i32 0
  store ptr @41, ptr %883, align 8
  %884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %882, i32 0, i32 1
  store i64 4, ptr %884, align 4
  %885 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %882, align 8
  %886 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %887 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 0
  store ptr null, ptr %887, align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 1
  store i64 0, ptr %888, align 4
  %889 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %886, align 8
  %890 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %869)
  %891 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %885, ptr %890, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %889, i1 false)
  %892 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %893 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %892, i32 0, i32 0
  store ptr @7, ptr %893, align 8
  %894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %892, i32 0, i32 1
  store i64 4, ptr %894, align 4
  %895 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %892, align 8
  %896 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %897 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %896, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %881, ptr %897, align 8
  %898 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %896, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %891, ptr %898, align 8
  %899 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %899, i32 0, i32 0
  store ptr %896, ptr %900, align 8
  %901 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %899, i32 0, i32 1
  store i64 2, ptr %901, align 4
  %902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %899, i32 0, i32 2
  store i64 2, ptr %902, align 4
  %903 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %899, align 8
  %904 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %895, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %903)
  store ptr %904, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %905 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br i1 %862, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %906 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %906, i32 0, i32 0
  store ptr @42, ptr %907, align 8
  %908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %906, i32 0, i32 1
  store i64 8, ptr %908, align 4
  %909 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %906, align 8
  %910 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %911 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %912 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %911, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %909, ptr %912, align 8
  %913 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %911, i32 0, i32 1
  store ptr %910, ptr %913, align 8
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %911, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", ptr %914, align 8
  %915 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %911, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", ptr %915, align 8
  %916 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %911, align 8
  %917 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %917, i32 0, i32 0
  store ptr @43, ptr %918, align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %917, i32 0, i32 1
  store i64 4, ptr %919, align 4
  %920 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %917, align 8
  %921 = load ptr, ptr @_llgo_string, align 8
  %922 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %923 = icmp eq ptr %922, null
  br i1 %923, label %_llgo_75, label %_llgo_76

_llgo_74:                                         ; preds = %_llgo_76, %_llgo_72
  %924 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %925 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %925, i32 0, i32 0
  store ptr @39, ptr %926, align 8
  %927 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %925, i32 0, i32 1
  store i64 43, ptr %927, align 4
  %928 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %925, align 8
  %929 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %928, i64 25, i64 24, i64 0, i64 3)
  %930 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %931 = icmp eq ptr %930, null
  br i1 %931, label %_llgo_77, label %_llgo_78

_llgo_75:                                         ; preds = %_llgo_73
  %932 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %933 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, i32 0, i32 0
  store ptr %932, ptr %934, align 8
  %935 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, i32 0, i32 1
  store i64 0, ptr %935, align 4
  %936 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, i32 0, i32 2
  store i64 0, ptr %936, align 4
  %937 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, align 8
  %938 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %939 = getelementptr ptr, ptr %938, i64 0
  store ptr %921, ptr %939, align 8
  %940 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, i32 0, i32 0
  store ptr %938, ptr %941, align 8
  %942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, i32 0, i32 1
  store i64 1, ptr %942, align 4
  %943 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, i32 0, i32 2
  store i64 1, ptr %943, align 4
  %944 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, align 8
  %945 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %937, %"github.com/goplus/llgo/internal/runtime.Slice" %944, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %945)
  store ptr %945, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_73
  %946 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %947 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %948 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %947, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %920, ptr %948, align 8
  %949 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %947, i32 0, i32 1
  store ptr %946, ptr %949, align 8
  %950 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %947, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", ptr %950, align 8
  %951 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %947, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", ptr %951, align 8
  %952 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %947, align 8
  %953 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %954 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %953, i32 0, i32 0
  store ptr @44, ptr %954, align 8
  %955 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %953, i32 0, i32 1
  store i64 7, ptr %955, align 4
  %956 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %953, align 8
  %957 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %958 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %959 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %958, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %956, ptr %959, align 8
  %960 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %958, i32 0, i32 1
  store ptr %957, ptr %960, align 8
  %961 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %958, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", ptr %961, align 8
  %962 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %958, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", ptr %962, align 8
  %963 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %958, align 8
  %964 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %965 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %964, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %916, ptr %965, align 8
  %966 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %964, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %952, ptr %966, align 8
  %967 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %964, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %963, ptr %967, align 8
  %968 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %969 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %968, i32 0, i32 0
  store ptr %964, ptr %969, align 8
  %970 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %968, i32 0, i32 1
  store i64 3, ptr %970, align 4
  %971 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %968, i32 0, i32 2
  store i64 3, ptr %971, align 4
  %972 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %968, align 8
  %973 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %974 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %973, i32 0, i32 0
  store ptr @3, ptr %974, align 8
  %975 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %973, i32 0, i32 1
  store i64 35, ptr %975, align 4
  %976 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %973, align 8
  %977 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %977, i32 0, i32 0
  store ptr @45, ptr %978, align 8
  %979 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %977, i32 0, i32 1
  store i64 7, ptr %979, align 4
  %980 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %977, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %860, %"github.com/goplus/llgo/internal/runtime.String" %976, %"github.com/goplus/llgo/internal/runtime.String" %980, ptr %905, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %972)
  br label %_llgo_74

_llgo_77:                                         ; preds = %_llgo_74
  %981 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %929)
  store ptr %981, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_74
  %982 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %983 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %983, i32 0, i32 0
  store ptr @1, ptr %984, align 8
  %985 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %983, i32 0, i32 1
  store i64 40, ptr %985, align 4
  %986 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %983, align 8
  %987 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %986, i64 25, i64 80, i64 0, i64 22)
  %988 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %989 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %988, i32 0, i32 0
  store ptr @39, ptr %989, align 8
  %990 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %988, i32 0, i32 1
  store i64 43, ptr %990, align 4
  %991 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %988, align 8
  %992 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %991, i64 25, i64 24, i64 0, i64 3)
  %993 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %994 = icmp eq ptr %993, null
  br i1 %994, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %995 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %996 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %995, i32 0, i32 0
  store ptr @21, ptr %996, align 8
  %997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %995, i32 0, i32 1
  store i64 4, ptr %997, align 4
  %998 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %995, align 8
  %999 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1000 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %999, i32 0, i32 0
  store ptr null, ptr %1000, align 8
  %1001 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %999, i32 0, i32 1
  store i64 0, ptr %1001, align 4
  %1002 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %999, align 8
  %1003 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %998, ptr %987, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1002, i1 true)
  %1004 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1005 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, i32 0, i32 0
  store ptr @46, ptr %1005, align 8
  %1006 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, i32 0, i32 1
  store i64 8, ptr %1006, align 4
  %1007 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, align 8
  %1008 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1009 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1008, i32 0, i32 0
  store ptr null, ptr %1009, align 8
  %1010 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1008, i32 0, i32 1
  store i64 0, ptr %1010, align 4
  %1011 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1008, align 8
  %1012 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1013 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1007, ptr %1012, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1011, i1 false)
  %1014 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1015 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1014, i32 0, i32 0
  store ptr @47, ptr %1015, align 8
  %1016 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1014, i32 0, i32 1
  store i64 7, ptr %1016, align 4
  %1017 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1014, align 8
  %1018 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1019 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, i32 0, i32 0
  store ptr null, ptr %1019, align 8
  %1020 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, i32 0, i32 1
  store i64 0, ptr %1020, align 4
  %1021 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1018, align 8
  %1022 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %992)
  %1023 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1017, ptr %1022, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1021, i1 false)
  %1024 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1025 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1024, i32 0, i32 0
  store ptr @7, ptr %1025, align 8
  %1026 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1024, i32 0, i32 1
  store i64 4, ptr %1026, align 4
  %1027 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1024, align 8
  %1028 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1029 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1028, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1003, ptr %1029, align 8
  %1030 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1028, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1013, ptr %1030, align 8
  %1031 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1028, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1023, ptr %1031, align 8
  %1032 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1033 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1032, i32 0, i32 0
  store ptr %1028, ptr %1033, align 8
  %1034 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1032, i32 0, i32 1
  store i64 3, ptr %1034, align 4
  %1035 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1032, i32 0, i32 2
  store i64 3, ptr %1035, align 4
  %1036 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1032, align 8
  %1037 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1027, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1036)
  store ptr %1037, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %1038 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %853, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %1039 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1040 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1039, i32 0, i32 0
  store ptr @18, ptr %1040, align 8
  %1041 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1039, i32 0, i32 1
  store i64 5, ptr %1041, align 4
  %1042 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1039, align 8
  %1043 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1044 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1045 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1044, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1042, ptr %1045, align 8
  %1046 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1044, i32 0, i32 1
  store ptr %1043, ptr %1046, align 8
  %1047 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1044, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %1047, align 8
  %1048 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1044, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %1048, align 8
  %1049 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1044, align 8
  %1050 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1051 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1050, i32 0, i32 0
  store ptr @19, ptr %1051, align 8
  %1052 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1050, i32 0, i32 1
  store i64 9, ptr %1052, align 4
  %1053 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1050, align 8
  %1054 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1055 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1056 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1053, ptr %1056, align 8
  %1057 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 1
  store ptr %1054, ptr %1057, align 8
  %1058 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %1058, align 8
  %1059 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %1059, align 8
  %1060 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, align 8
  %1061 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1062 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, i32 0, i32 0
  store ptr @25, ptr %1062, align 8
  %1063 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, i32 0, i32 1
  store i64 7, ptr %1063, align 4
  %1064 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, align 8
  %1065 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1066 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1067 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1066, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1064, ptr %1067, align 8
  %1068 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1066, i32 0, i32 1
  store ptr %1065, ptr %1068, align 8
  %1069 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1066, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %1069, align 8
  %1070 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1066, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %1070, align 8
  %1071 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1066, align 8
  %1072 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1073 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1072, i32 0, i32 0
  store ptr @27, ptr %1073, align 8
  %1074 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1072, i32 0, i32 1
  store i64 6, ptr %1074, align 4
  %1075 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1072, align 8
  %1076 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1077 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1078 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1077, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1075, ptr %1078, align 8
  %1079 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1077, i32 0, i32 1
  store ptr %1076, ptr %1079, align 8
  %1080 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1077, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %1080, align 8
  %1081 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1077, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %1081, align 8
  %1082 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1077, align 8
  %1083 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1084 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1083, i32 0, i32 0
  store ptr @22, ptr %1084, align 8
  %1085 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1083, i32 0, i32 1
  store i64 4, ptr %1085, align 4
  %1086 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1083, align 8
  %1087 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1088 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1089 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1088, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1086, ptr %1089, align 8
  %1090 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1088, i32 0, i32 1
  store ptr %1087, ptr %1090, align 8
  %1091 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1088, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %1091, align 8
  %1092 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1088, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %1092, align 8
  %1093 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1088, align 8
  %1094 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1095 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1094, i32 0, i32 0
  store ptr @28, ptr %1095, align 8
  %1096 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1094, i32 0, i32 1
  store i64 15, ptr %1096, align 4
  %1097 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1094, align 8
  %1098 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1099 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1100 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1099, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1097, ptr %1100, align 8
  %1101 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1099, i32 0, i32 1
  store ptr %1098, ptr %1101, align 8
  %1102 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1099, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", ptr %1102, align 8
  %1103 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1099, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", ptr %1103, align 8
  %1104 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1099, align 8
  %1105 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1105, i32 0, i32 0
  store ptr @33, ptr %1106, align 8
  %1107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1105, i32 0, i32 1
  store i64 10, ptr %1107, align 4
  %1108 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1105, align 8
  %1109 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1110 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1111 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1110, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1108, ptr %1111, align 8
  %1112 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1110, i32 0, i32 1
  store ptr %1109, ptr %1112, align 8
  %1113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1110, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %1113, align 8
  %1114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1110, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %1114, align 8
  %1115 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1110, align 8
  %1116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1116, i32 0, i32 0
  store ptr @34, ptr %1117, align 8
  %1118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1116, i32 0, i32 1
  store i64 8, ptr %1118, align 4
  %1119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1116, align 8
  %1120 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1121 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1122 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1121, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1119, ptr %1122, align 8
  %1123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1121, i32 0, i32 1
  store ptr %1120, ptr %1123, align 8
  %1124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1121, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %1124, align 8
  %1125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1121, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %1125, align 8
  %1126 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1121, align 8
  %1127 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1127, i32 0, i32 0
  store ptr @35, ptr %1128, align 8
  %1129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1127, i32 0, i32 1
  store i64 7, ptr %1129, align 4
  %1130 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1127, align 8
  %1131 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1132 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1132, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1130, ptr %1133, align 8
  %1134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1132, i32 0, i32 1
  store ptr %1131, ptr %1134, align 8
  %1135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1132, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %1135, align 8
  %1136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1132, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %1136, align 8
  %1137 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1132, align 8
  %1138 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1138, i32 0, i32 0
  store ptr @36, ptr %1139, align 8
  %1140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1138, i32 0, i32 1
  store i64 10, ptr %1140, align 4
  %1141 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1138, align 8
  %1142 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1143 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1143, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1141, ptr %1144, align 8
  %1145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1143, i32 0, i32 1
  store ptr %1142, ptr %1145, align 8
  %1146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1143, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1146, align 8
  %1147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1143, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %1147, align 8
  %1148 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1143, align 8
  %1149 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1149, i32 0, i32 0
  store ptr @37, ptr %1150, align 8
  %1151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1149, i32 0, i32 1
  store i64 13, ptr %1151, align 4
  %1152 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1149, align 8
  %1153 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1154 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1155 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1154, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1152, ptr %1155, align 8
  %1156 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1154, i32 0, i32 1
  store ptr %1153, ptr %1156, align 8
  %1157 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1154, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %1157, align 8
  %1158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1154, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %1158, align 8
  %1159 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1154, align 8
  %1160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1160, i32 0, i32 0
  store ptr @48, ptr %1161, align 8
  %1162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1160, i32 0, i32 1
  store i64 13, ptr %1162, align 4
  %1163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1160, align 8
  %1164 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1165 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1165, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1163, ptr %1166, align 8
  %1167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1165, i32 0, i32 1
  store ptr %1164, ptr %1167, align 8
  %1168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1165, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %1168, align 8
  %1169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1165, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %1169, align 8
  %1170 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1165, align 8
  %1171 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1171, i32 0, i32 0
  store ptr @49, ptr %1172, align 8
  %1173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1171, i32 0, i32 1
  store i64 3, ptr %1173, align 4
  %1174 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1171, align 8
  %1175 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1176 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1176, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1174, ptr %1177, align 8
  %1178 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1176, i32 0, i32 1
  store ptr %1175, ptr %1178, align 8
  %1179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1176, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %1179, align 8
  %1180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1176, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %1180, align 8
  %1181 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1176, align 8
  %1182 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1182, i32 0, i32 0
  store ptr @50, ptr %1183, align 8
  %1184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1182, i32 0, i32 1
  store i64 4, ptr %1184, align 4
  %1185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1182, align 8
  %1186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1186, i32 0, i32 0
  store ptr @51, ptr %1187, align 8
  %1188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1186, i32 0, i32 1
  store i64 40, ptr %1188, align 4
  %1189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1186, align 8
  %1190 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1189, i64 7, i64 8, i64 1, i64 1)
  %1191 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1192 = icmp eq ptr %1191, null
  br i1 %1192, label %_llgo_83, label %_llgo_84

_llgo_82:                                         ; preds = %_llgo_132, %_llgo_80
  %1193 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1193, i32 0, i32 0
  store ptr @38, ptr %1194, align 8
  %1195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1193, i32 0, i32 1
  store i64 49, ptr %1195, align 4
  %1196 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1193, align 8
  %1197 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1196, i64 25, i64 120, i64 0, i64 22)
  %1198 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %_llgo_133, label %_llgo_134

_llgo_83:                                         ; preds = %_llgo_81
  store ptr %1190, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_81
  %1200 = load ptr, ptr @_llgo_uint, align 8
  %1201 = icmp eq ptr %1200, null
  br i1 %1201, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %1202 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %1202, ptr @_llgo_uint, align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %1203 = load ptr, ptr @_llgo_uint, align 8
  br i1 %1192, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %1204 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1204, i32 0, i32 0
  store ptr @52, ptr %1205, align 8
  %1206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1204, i32 0, i32 1
  store i64 6, ptr %1206, align 4
  %1207 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1204, align 8
  %1208 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1209 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1210 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1209, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1207, ptr %1210, align 8
  %1211 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1209, i32 0, i32 1
  store ptr %1208, ptr %1211, align 8
  %1212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1209, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1212, align 8
  %1213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1209, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1213, align 8
  %1214 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1209, align 8
  %1215 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1216 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1215, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1207, ptr %1216, align 8
  %1217 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1215, i32 0, i32 1
  store ptr %1208, ptr %1217, align 8
  %1218 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1215, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %1218, align 8
  %1219 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1215, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.Kind.String", ptr %1219, align 8
  %1220 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1215, align 8
  %1221 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1222 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1221, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1220, ptr %1222, align 8
  %1223 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1223, i32 0, i32 0
  store ptr %1221, ptr %1224, align 8
  %1225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1223, i32 0, i32 1
  store i64 1, ptr %1225, align 4
  %1226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1223, i32 0, i32 2
  store i64 1, ptr %1226, align 4
  %1227 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1223, align 8
  %1228 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %1229 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1228, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1214, ptr %1229, align 8
  %1230 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1230, i32 0, i32 0
  store ptr %1228, ptr %1231, align 8
  %1232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1230, i32 0, i32 1
  store i64 1, ptr %1232, align 4
  %1233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1230, i32 0, i32 2
  store i64 1, ptr %1233, align 4
  %1234 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1230, align 8
  %1235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1235, i32 0, i32 0
  store ptr @3, ptr %1236, align 8
  %1237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1235, i32 0, i32 1
  store i64 35, ptr %1237, align 4
  %1238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1235, align 8
  %1239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1239, i32 0, i32 0
  store ptr @50, ptr %1240, align 8
  %1241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1239, i32 0, i32 1
  store i64 4, ptr %1241, align 4
  %1242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1239, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1190, %"github.com/goplus/llgo/internal/runtime.String" %1238, %"github.com/goplus/llgo/internal/runtime.String" %1242, ptr %1203, %"github.com/goplus/llgo/internal/runtime.Slice" %1227, %"github.com/goplus/llgo/internal/runtime.Slice" %1234)
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %1243 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %1244 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %1246 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1247 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, i32 0, i32 0
  store ptr %1246, ptr %1248, align 8
  %1249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, i32 0, i32 1
  store i64 0, ptr %1249, align 4
  %1250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, i32 0, i32 2
  store i64 0, ptr %1250, align 4
  %1251 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, align 8
  %1252 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1253 = getelementptr ptr, ptr %1252, i64 0
  store ptr %1243, ptr %1253, align 8
  %1254 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1254, i32 0, i32 0
  store ptr %1252, ptr %1255, align 8
  %1256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1254, i32 0, i32 1
  store i64 1, ptr %1256, align 4
  %1257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1254, i32 0, i32 2
  store i64 1, ptr %1257, align 4
  %1258 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1254, align 8
  %1259 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1251, %"github.com/goplus/llgo/internal/runtime.Slice" %1258, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1259)
  store ptr %1259, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %1260 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1261 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1261, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1185, ptr %1262, align 8
  %1263 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1261, i32 0, i32 1
  store ptr %1260, ptr %1263, align 8
  %1264 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1261, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1264, align 8
  %1265 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1261, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %1265, align 8
  %1266 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1261, align 8
  %1267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1267, i32 0, i32 0
  store ptr @24, ptr %1268, align 8
  %1269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1267, i32 0, i32 1
  store i64 3, ptr %1269, align 4
  %1270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1267, align 8
  %1271 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1272 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1272, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1270, ptr %1273, align 8
  %1274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1272, i32 0, i32 1
  store ptr %1271, ptr %1274, align 8
  %1275 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1272, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1275, align 8
  %1276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1272, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1276, align 8
  %1277 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1272, align 8
  %1278 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1278, i32 0, i32 0
  store ptr @53, ptr %1279, align 8
  %1280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1278, i32 0, i32 1
  store i64 7, ptr %1280, align 4
  %1281 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1278, align 8
  %1282 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1282, i32 0, i32 0
  store ptr @54, ptr %1283, align 8
  %1284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1282, i32 0, i32 1
  store i64 43, ptr %1284, align 4
  %1285 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1282, align 8
  %1286 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1285, i64 25, i64 136, i64 0, i64 25)
  %1287 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1288 = icmp eq ptr %1287, null
  br i1 %1288, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  store ptr %1286, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %1289 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1290 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1291 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1292 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1293 = load ptr, ptr @_llgo_Pointer, align 8
  %1294 = load ptr, ptr @_llgo_Pointer, align 8
  %1295 = load ptr, ptr @_llgo_uintptr, align 8
  %1296 = load ptr, ptr @_llgo_uintptr, align 8
  %1297 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %1298 = icmp eq ptr %1297, null
  br i1 %1298, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %1299 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1300 = getelementptr ptr, ptr %1299, i64 0
  store ptr %1293, ptr %1300, align 8
  %1301 = getelementptr ptr, ptr %1299, i64 1
  store ptr %1294, ptr %1301, align 8
  %1302 = getelementptr ptr, ptr %1299, i64 2
  store ptr %1295, ptr %1302, align 8
  %1303 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1303, i32 0, i32 0
  store ptr %1299, ptr %1304, align 8
  %1305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1303, i32 0, i32 1
  store i64 3, ptr %1305, align 4
  %1306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1303, i32 0, i32 2
  store i64 3, ptr %1306, align 4
  %1307 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1303, align 8
  %1308 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1309 = getelementptr ptr, ptr %1308, i64 0
  store ptr %1296, ptr %1309, align 8
  %1310 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1310, i32 0, i32 0
  store ptr %1308, ptr %1311, align 8
  %1312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1310, i32 0, i32 1
  store i64 1, ptr %1312, align 4
  %1313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1310, i32 0, i32 2
  store i64 1, ptr %1313, align 4
  %1314 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1310, align 8
  %1315 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1307, %"github.com/goplus/llgo/internal/runtime.Slice" %1314, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1315)
  store ptr %1315, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %1316 = load ptr, ptr @"_llgo_func$cAvVsWLgvZTNybpI-5Hj9CeBwW9xcw6i77GFRvp83mY", align 8
  %1317 = load ptr, ptr @_llgo_Pointer, align 8
  %1318 = load ptr, ptr @_llgo_Pointer, align 8
  %1319 = load ptr, ptr @_llgo_Pointer, align 8
  %1320 = load ptr, ptr @_llgo_uintptr, align 8
  %1321 = load ptr, ptr @_llgo_uintptr, align 8
  %1322 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1322, i32 0, i32 0
  store ptr @5, ptr %1323, align 8
  %1324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1322, i32 0, i32 1
  store i64 1, ptr %1324, align 4
  %1325 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1322, align 8
  %1326 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1326, i32 0, i32 0
  store ptr null, ptr %1327, align 8
  %1328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1326, i32 0, i32 1
  store i64 0, ptr %1328, align 4
  %1329 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1326, align 8
  %1330 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1331 = getelementptr ptr, ptr %1330, i64 0
  store ptr %1318, ptr %1331, align 8
  %1332 = getelementptr ptr, ptr %1330, i64 1
  store ptr %1319, ptr %1332, align 8
  %1333 = getelementptr ptr, ptr %1330, i64 2
  store ptr %1320, ptr %1333, align 8
  %1334 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1334, i32 0, i32 0
  store ptr %1330, ptr %1335, align 8
  %1336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1334, i32 0, i32 1
  store i64 3, ptr %1336, align 4
  %1337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1334, i32 0, i32 2
  store i64 3, ptr %1337, align 4
  %1338 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1334, align 8
  %1339 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1340 = getelementptr ptr, ptr %1339, i64 0
  store ptr %1321, ptr %1340, align 8
  %1341 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1341, i32 0, i32 0
  store ptr %1339, ptr %1342, align 8
  %1343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1341, i32 0, i32 1
  store i64 1, ptr %1343, align 4
  %1344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1341, i32 0, i32 2
  store i64 1, ptr %1344, align 4
  %1345 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1341, align 8
  %1346 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1338, %"github.com/goplus/llgo/internal/runtime.Slice" %1345, i1 false)
  %1347 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1325, ptr %1346, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1329, i1 false)
  %1348 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1348, i32 0, i32 0
  store ptr @6, ptr %1349, align 8
  %1350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1348, i32 0, i32 1
  store i64 4, ptr %1350, align 4
  %1351 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1348, align 8
  %1352 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1352, i32 0, i32 0
  store ptr null, ptr %1353, align 8
  %1354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1352, i32 0, i32 1
  store i64 0, ptr %1354, align 4
  %1355 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1352, align 8
  %1356 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1357 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1351, ptr %1356, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %1355, i1 false)
  %1358 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1358, i32 0, i32 0
  store ptr @7, ptr %1359, align 8
  %1360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1358, i32 0, i32 1
  store i64 4, ptr %1360, align 4
  %1361 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1358, align 8
  %1362 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %1363 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1362, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1347, ptr %1363, align 8
  %1364 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1362, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1357, ptr %1364, align 8
  %1365 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1365, i32 0, i32 0
  store ptr %1362, ptr %1366, align 8
  %1367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1365, i32 0, i32 1
  store i64 2, ptr %1367, align 4
  %1368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1365, i32 0, i32 2
  store i64 2, ptr %1368, align 4
  %1369 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1365, align 8
  %1370 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1361, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %1369)
  store ptr %1370, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %1371 = load ptr, ptr @"main.struct$uDDWukIj6_GRAIQyJjrj0CZt1Ru2uIDU1N9fcbR_jCg", align 8
  %1372 = load ptr, ptr @_llgo_uint8, align 8
  %1373 = load ptr, ptr @_llgo_uint8, align 8
  %1374 = load ptr, ptr @_llgo_uint16, align 8
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %1376 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  store ptr %1376, ptr @_llgo_uint16, align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %1377 = load ptr, ptr @_llgo_uint16, align 8
  %1378 = load ptr, ptr @_llgo_uint32, align 8
  %1379 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 0
  store ptr @1, ptr %1380, align 8
  %1381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 1
  store i64 40, ptr %1381, align 4
  %1382 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, align 8
  %1383 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1382, i64 25, i64 80, i64 0, i64 22)
  %1384 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1384, i32 0, i32 0
  store ptr @1, ptr %1385, align 8
  %1386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1384, i32 0, i32 1
  store i64 40, ptr %1386, align 4
  %1387 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1384, align 8
  %1388 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1387, i64 25, i64 80, i64 0, i64 22)
  %1389 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1389, i32 0, i32 0
  store ptr @1, ptr %1390, align 8
  %1391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1389, i32 0, i32 1
  store i64 40, ptr %1391, align 4
  %1392 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1389, align 8
  %1393 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1392, i64 25, i64 80, i64 0, i64 22)
  %1394 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1394, i32 0, i32 0
  store ptr @1, ptr %1395, align 8
  %1396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1394, i32 0, i32 1
  store i64 40, ptr %1396, align 4
  %1397 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1394, align 8
  %1398 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1397, i64 25, i64 80, i64 0, i64 22)
  %1399 = load ptr, ptr @_llgo_Pointer, align 8
  %1400 = load ptr, ptr @_llgo_Pointer, align 8
  %1401 = load ptr, ptr @_llgo_uintptr, align 8
  %1402 = load ptr, ptr @_llgo_uintptr, align 8
  %1403 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1403, i32 0, i32 0
  store ptr @21, ptr %1404, align 8
  %1405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1403, i32 0, i32 1
  store i64 4, ptr %1405, align 4
  %1406 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1403, align 8
  %1407 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1407, i32 0, i32 0
  store ptr null, ptr %1408, align 8
  %1409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1407, i32 0, i32 1
  store i64 0, ptr %1409, align 4
  %1410 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1407, align 8
  %1411 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1406, ptr %1383, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1410, i1 true)
  %1412 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1412, i32 0, i32 0
  store ptr @49, ptr %1413, align 8
  %1414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1412, i32 0, i32 1
  store i64 3, ptr %1414, align 4
  %1415 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1412, align 8
  %1416 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1416, i32 0, i32 0
  store ptr null, ptr %1417, align 8
  %1418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1416, i32 0, i32 1
  store i64 0, ptr %1418, align 4
  %1419 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1416, align 8
  %1420 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1388)
  %1421 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1415, ptr %1420, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1419, i1 false)
  %1422 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1422, i32 0, i32 0
  store ptr @22, ptr %1423, align 8
  %1424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1422, i32 0, i32 1
  store i64 4, ptr %1424, align 4
  %1425 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1422, align 8
  %1426 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1426, i32 0, i32 0
  store ptr null, ptr %1427, align 8
  %1428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1426, i32 0, i32 1
  store i64 0, ptr %1428, align 4
  %1429 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1426, align 8
  %1430 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1393)
  %1431 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1425, ptr %1430, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %1429, i1 false)
  %1432 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1432, i32 0, i32 0
  store ptr @55, ptr %1433, align 8
  %1434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1432, i32 0, i32 1
  store i64 6, ptr %1434, align 4
  %1435 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1432, align 8
  %1436 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1436, i32 0, i32 0
  store ptr null, ptr %1437, align 8
  %1438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1436, i32 0, i32 1
  store i64 0, ptr %1438, align 4
  %1439 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1436, align 8
  %1440 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1398)
  %1441 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1435, ptr %1440, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1439, i1 false)
  %1442 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1442, i32 0, i32 0
  store ptr @56, ptr %1443, align 8
  %1444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1442, i32 0, i32 1
  store i64 6, ptr %1444, align 4
  %1445 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1442, align 8
  %1446 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1446, i32 0, i32 0
  store ptr null, ptr %1447, align 8
  %1448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1446, i32 0, i32 1
  store i64 0, ptr %1448, align 4
  %1449 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1446, align 8
  %1450 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1450, i32 0, i32 0
  store ptr @5, ptr %1451, align 8
  %1452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1450, i32 0, i32 1
  store i64 1, ptr %1452, align 4
  %1453 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1450, align 8
  %1454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1454, i32 0, i32 0
  store ptr null, ptr %1455, align 8
  %1456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1454, i32 0, i32 1
  store i64 0, ptr %1456, align 4
  %1457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1454, align 8
  %1458 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1459 = getelementptr ptr, ptr %1458, i64 0
  store ptr %1399, ptr %1459, align 8
  %1460 = getelementptr ptr, ptr %1458, i64 1
  store ptr %1400, ptr %1460, align 8
  %1461 = getelementptr ptr, ptr %1458, i64 2
  store ptr %1401, ptr %1461, align 8
  %1462 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1462, i32 0, i32 0
  store ptr %1458, ptr %1463, align 8
  %1464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1462, i32 0, i32 1
  store i64 3, ptr %1464, align 4
  %1465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1462, i32 0, i32 2
  store i64 3, ptr %1465, align 4
  %1466 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1462, align 8
  %1467 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1468 = getelementptr ptr, ptr %1467, i64 0
  store ptr %1402, ptr %1468, align 8
  %1469 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1469, i32 0, i32 0
  store ptr %1467, ptr %1470, align 8
  %1471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1469, i32 0, i32 1
  store i64 1, ptr %1471, align 4
  %1472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1469, i32 0, i32 2
  store i64 1, ptr %1472, align 4
  %1473 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1469, align 8
  %1474 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1466, %"github.com/goplus/llgo/internal/runtime.Slice" %1473, i1 false)
  %1475 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1453, ptr %1474, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1457, i1 false)
  %1476 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1476, i32 0, i32 0
  store ptr @6, ptr %1477, align 8
  %1478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1476, i32 0, i32 1
  store i64 4, ptr %1478, align 4
  %1479 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1476, align 8
  %1480 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1480, i32 0, i32 0
  store ptr null, ptr %1481, align 8
  %1482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1480, i32 0, i32 1
  store i64 0, ptr %1482, align 4
  %1483 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1480, align 8
  %1484 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1485 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1479, ptr %1484, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %1483, i1 false)
  %1486 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1486, i32 0, i32 0
  store ptr @7, ptr %1487, align 8
  %1488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1486, i32 0, i32 1
  store i64 4, ptr %1488, align 4
  %1489 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1486, align 8
  %1490 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %1491 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1490, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1475, ptr %1491, align 8
  %1492 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1490, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1485, ptr %1492, align 8
  %1493 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1493, i32 0, i32 0
  store ptr %1490, ptr %1494, align 8
  %1495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1493, i32 0, i32 1
  store i64 2, ptr %1495, align 4
  %1496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1493, i32 0, i32 2
  store i64 2, ptr %1496, align 4
  %1497 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1493, align 8
  %1498 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1489, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %1497)
  %1499 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1445, ptr %1498, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %1449, i1 false)
  %1500 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1500, i32 0, i32 0
  store ptr @57, ptr %1501, align 8
  %1502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1500, i32 0, i32 1
  store i64 7, ptr %1502, align 4
  %1503 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1500, align 8
  %1504 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1504, i32 0, i32 0
  store ptr null, ptr %1505, align 8
  %1506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1504, i32 0, i32 1
  store i64 0, ptr %1506, align 4
  %1507 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1504, align 8
  %1508 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1509 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1503, ptr %1508, i64 112, %"github.com/goplus/llgo/internal/runtime.String" %1507, i1 false)
  %1510 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1510, i32 0, i32 0
  store ptr @58, ptr %1511, align 8
  %1512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1510, i32 0, i32 1
  store i64 9, ptr %1512, align 4
  %1513 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1510, align 8
  %1514 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, i32 0, i32 0
  store ptr null, ptr %1515, align 8
  %1516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, i32 0, i32 1
  store i64 0, ptr %1516, align 4
  %1517 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, align 8
  %1518 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1519 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1513, ptr %1518, i64 113, %"github.com/goplus/llgo/internal/runtime.String" %1517, i1 false)
  %1520 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1520, i32 0, i32 0
  store ptr @59, ptr %1521, align 8
  %1522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1520, i32 0, i32 1
  store i64 10, ptr %1522, align 4
  %1523 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1520, align 8
  %1524 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1524, i32 0, i32 0
  store ptr null, ptr %1525, align 8
  %1526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1524, i32 0, i32 1
  store i64 0, ptr %1526, align 4
  %1527 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1524, align 8
  %1528 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1529 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1523, ptr %1528, i64 114, %"github.com/goplus/llgo/internal/runtime.String" %1527, i1 false)
  %1530 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1530, i32 0, i32 0
  store ptr @60, ptr %1531, align 8
  %1532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1530, i32 0, i32 1
  store i64 5, ptr %1532, align 4
  %1533 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1530, align 8
  %1534 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1534, i32 0, i32 0
  store ptr null, ptr %1535, align 8
  %1536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1534, i32 0, i32 1
  store i64 0, ptr %1536, align 4
  %1537 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1534, align 8
  %1538 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1539 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1533, ptr %1538, i64 116, %"github.com/goplus/llgo/internal/runtime.String" %1537, i1 false)
  %1540 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1540, i32 0, i32 0
  store ptr @7, ptr %1541, align 8
  %1542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1540, i32 0, i32 1
  store i64 4, ptr %1542, align 4
  %1543 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1540, align 8
  %1544 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %1545 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1411, ptr %1545, align 8
  %1546 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1421, ptr %1546, align 8
  %1547 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1431, ptr %1547, align 8
  %1548 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1441, ptr %1548, align 8
  %1549 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1499, ptr %1549, align 8
  %1550 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %1509, ptr %1550, align 8
  %1551 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %1519, ptr %1551, align 8
  %1552 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %1529, ptr %1552, align 8
  %1553 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1544, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %1539, ptr %1553, align 8
  %1554 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1554, i32 0, i32 0
  store ptr %1544, ptr %1555, align 8
  %1556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1554, i32 0, i32 1
  store i64 9, ptr %1556, align 4
  %1557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1554, i32 0, i32 2
  store i64 9, ptr %1557, align 4
  %1558 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1554, align 8
  %1559 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1543, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %1558)
  store ptr %1559, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %1560 = load ptr, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %1288, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %1561 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1561, i32 0, i32 0
  store ptr @18, ptr %1562, align 8
  %1563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1561, i32 0, i32 1
  store i64 5, ptr %1563, align 4
  %1564 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1561, align 8
  %1565 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1566 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1567 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1566, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1564, ptr %1567, align 8
  %1568 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1566, i32 0, i32 1
  store ptr %1565, ptr %1568, align 8
  %1569 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1566, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1569, align 8
  %1570 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1566, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1570, align 8
  %1571 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1566, align 8
  %1572 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1572, i32 0, i32 0
  store ptr @19, ptr %1573, align 8
  %1574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1572, i32 0, i32 1
  store i64 9, ptr %1574, align 4
  %1575 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1572, align 8
  %1576 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1577 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1577, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1575, ptr %1578, align 8
  %1579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1577, i32 0, i32 1
  store ptr %1576, ptr %1579, align 8
  %1580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1577, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1580, align 8
  %1581 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1577, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1581, align 8
  %1582 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1577, align 8
  %1583 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1583, i32 0, i32 0
  store ptr @25, ptr %1584, align 8
  %1585 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1583, i32 0, i32 1
  store i64 7, ptr %1585, align 4
  %1586 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1583, align 8
  %1587 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1588 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1588, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1586, ptr %1589, align 8
  %1590 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1588, i32 0, i32 1
  store ptr %1587, ptr %1590, align 8
  %1591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1588, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1591, align 8
  %1592 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1588, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1592, align 8
  %1593 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1588, align 8
  %1594 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, i32 0, i32 0
  store ptr @27, ptr %1595, align 8
  %1596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, i32 0, i32 1
  store i64 6, ptr %1596, align 4
  %1597 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, align 8
  %1598 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1599 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1600 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1599, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1597, ptr %1600, align 8
  %1601 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1599, i32 0, i32 1
  store ptr %1598, ptr %1601, align 8
  %1602 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1599, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1602, align 8
  %1603 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1599, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1603, align 8
  %1604 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1599, align 8
  %1605 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1606 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1605, i32 0, i32 0
  store ptr @28, ptr %1606, align 8
  %1607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1605, i32 0, i32 1
  store i64 15, ptr %1607, align 4
  %1608 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1605, align 8
  %1609 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1610 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1610, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1608, ptr %1611, align 8
  %1612 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1610, i32 0, i32 1
  store ptr %1609, ptr %1612, align 8
  %1613 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1610, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", ptr %1613, align 8
  %1614 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1610, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", ptr %1614, align 8
  %1615 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1610, align 8
  %1616 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1616, i32 0, i32 0
  store ptr @33, ptr %1617, align 8
  %1618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1616, i32 0, i32 1
  store i64 10, ptr %1618, align 4
  %1619 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1616, align 8
  %1620 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1621 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1622 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1621, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1619, ptr %1622, align 8
  %1623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1621, i32 0, i32 1
  store ptr %1620, ptr %1623, align 8
  %1624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1621, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1624, align 8
  %1625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1621, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1625, align 8
  %1626 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1621, align 8
  %1627 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1627, i32 0, i32 0
  store ptr @34, ptr %1628, align 8
  %1629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1627, i32 0, i32 1
  store i64 8, ptr %1629, align 4
  %1630 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1627, align 8
  %1631 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1632 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1633 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1632, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1630, ptr %1633, align 8
  %1634 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1632, i32 0, i32 1
  store ptr %1631, ptr %1634, align 8
  %1635 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1632, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1635, align 8
  %1636 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1632, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1636, align 8
  %1637 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1632, align 8
  %1638 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1638, i32 0, i32 0
  store ptr @35, ptr %1639, align 8
  %1640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1638, i32 0, i32 1
  store i64 7, ptr %1640, align 4
  %1641 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1638, align 8
  %1642 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1643 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1644 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1641, ptr %1644, align 8
  %1645 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 1
  store ptr %1642, ptr %1645, align 8
  %1646 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1646, align 8
  %1647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1647, align 8
  %1648 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1643, align 8
  %1649 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1649, i32 0, i32 0
  store ptr @61, ptr %1650, align 8
  %1651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1649, i32 0, i32 1
  store i64 14, ptr %1651, align 4
  %1652 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1649, align 8
  %1653 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1654 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1652, ptr %1655, align 8
  %1656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 1
  store ptr %1653, ptr %1656, align 8
  %1657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1657, align 8
  %1658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1658, align 8
  %1659 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1654, align 8
  %1660 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1660, i32 0, i32 0
  store ptr @36, ptr %1661, align 8
  %1662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1660, i32 0, i32 1
  store i64 10, ptr %1662, align 4
  %1663 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1660, align 8
  %1664 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1665 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1666 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1663, ptr %1666, align 8
  %1667 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 1
  store ptr %1664, ptr %1667, align 8
  %1668 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1668, align 8
  %1669 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1669, align 8
  %1670 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, align 8
  %1671 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1672 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1671, i32 0, i32 0
  store ptr @62, ptr %1672, align 8
  %1673 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1671, i32 0, i32 1
  store i64 12, ptr %1673, align 4
  %1674 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1671, align 8
  %1675 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1676 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1677 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1674, ptr %1677, align 8
  %1678 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 1
  store ptr %1675, ptr %1678, align 8
  %1679 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1679, align 8
  %1680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1680, align 8
  %1681 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1676, align 8
  %1682 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1683 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1682, i32 0, i32 0
  store ptr @63, ptr %1683, align 8
  %1684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1682, i32 0, i32 1
  store i64 11, ptr %1684, align 4
  %1685 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1682, align 8
  %1686 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1687 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1688 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1685, ptr %1688, align 8
  %1689 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 1
  store ptr %1686, ptr %1689, align 8
  %1690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1690, align 8
  %1691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1691, align 8
  %1692 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1687, align 8
  %1693 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1694 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, i32 0, i32 0
  store ptr @37, ptr %1694, align 8
  %1695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, i32 0, i32 1
  store i64 13, ptr %1695, align 4
  %1696 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, align 8
  %1697 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1698 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1696, ptr %1699, align 8
  %1700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 1
  store ptr %1697, ptr %1700, align 8
  %1701 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1701, align 8
  %1702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1702, align 8
  %1703 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1698, align 8
  %1704 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, i32 0, i32 0
  store ptr @48, ptr %1705, align 8
  %1706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, i32 0, i32 1
  store i64 13, ptr %1706, align 4
  %1707 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, align 8
  %1708 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1709 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1707, ptr %1710, align 8
  %1711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 1
  store ptr %1708, ptr %1711, align 8
  %1712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1712, align 8
  %1713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1713, align 8
  %1714 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1709, align 8
  %1715 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1715, i32 0, i32 0
  store ptr @50, ptr %1716, align 8
  %1717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1715, i32 0, i32 1
  store i64 4, ptr %1717, align 4
  %1718 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1715, align 8
  %1719 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1720 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1718, ptr %1721, align 8
  %1722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 1
  store ptr %1719, ptr %1722, align 8
  %1723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1723, align 8
  %1724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1724, align 8
  %1725 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1720, align 8
  %1726 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, i32 0, i32 0
  store ptr @24, ptr %1727, align 8
  %1728 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, i32 0, i32 1
  store i64 3, ptr %1728, align 4
  %1729 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1726, align 8
  %1730 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1731 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1729, ptr %1732, align 8
  %1733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 1
  store ptr %1730, ptr %1733, align 8
  %1734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1734, align 8
  %1735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1735, align 8
  %1736 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, align 8
  %1737 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, i32 0, i32 0
  store ptr @53, ptr %1738, align 8
  %1739 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, i32 0, i32 1
  store i64 7, ptr %1739, align 4
  %1740 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, align 8
  %1741 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1742 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1740, ptr %1743, align 8
  %1744 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 1
  store ptr %1741, ptr %1744, align 8
  %1745 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1745, align 8
  %1746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1746, align 8
  %1747 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, align 8
  %1748 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1748, i32 0, i32 0
  store ptr @64, ptr %1749, align 8
  %1750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1748, i32 0, i32 1
  store i64 13, ptr %1750, align 4
  %1751 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1748, align 8
  %1752 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1753 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1751, ptr %1754, align 8
  %1755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 1
  store ptr %1752, ptr %1755, align 8
  %1756 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1756, align 8
  %1757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1757, align 8
  %1758 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1753, align 8
  %1759 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1760 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1759, i32 0, i32 0
  store ptr @65, ptr %1760, align 8
  %1761 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1759, i32 0, i32 1
  store i64 9, ptr %1761, align 4
  %1762 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1759, align 8
  %1763 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1764 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1765 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1762, ptr %1765, align 8
  %1766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 1
  store ptr %1763, ptr %1766, align 8
  %1767 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", ptr %1767, align 8
  %1768 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", ptr %1768, align 8
  %1769 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1764, align 8
  %1770 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1771 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1770, i32 0, i32 0
  store ptr @66, ptr %1771, align 8
  %1772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1770, i32 0, i32 1
  store i64 8, ptr %1772, align 4
  %1773 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1770, align 8
  %1774 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1775 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1776 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1773, ptr %1776, align 8
  %1777 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 1
  store ptr %1774, ptr %1777, align 8
  %1778 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1778, align 8
  %1779 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1779, align 8
  %1780 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1775, align 8
  %1781 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1782 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1781, i32 0, i32 0
  store ptr @67, ptr %1782, align 8
  %1783 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1781, i32 0, i32 1
  store i64 12, ptr %1783, align 4
  %1784 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1781, align 8
  %1785 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1786 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1787 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1784, ptr %1787, align 8
  %1788 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 1
  store ptr %1785, ptr %1788, align 8
  %1789 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1789, align 8
  %1790 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1790, align 8
  %1791 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1786, align 8
  %1792 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1792, i32 0, i32 0
  store ptr @68, ptr %1793, align 8
  %1794 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1792, i32 0, i32 1
  store i64 4, ptr %1794, align 4
  %1795 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1792, align 8
  %1796 = load ptr, ptr @_llgo_uintptr, align 8
  %1797 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1798 = icmp eq ptr %1797, null
  br i1 %1798, label %_llgo_99, label %_llgo_100

_llgo_98:                                         ; preds = %_llgo_128, %_llgo_96
  %1799 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1800 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1799, i32 0, i32 0
  store ptr @54, ptr %1800, align 8
  %1801 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1799, i32 0, i32 1
  store i64 43, ptr %1801, align 4
  %1802 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1799, align 8
  %1803 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1802, i64 25, i64 136, i64 0, i64 25)
  %1804 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1805 = icmp eq ptr %1804, null
  br i1 %1805, label %_llgo_129, label %_llgo_130

_llgo_99:                                         ; preds = %_llgo_97
  %1806 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1807 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1807, i32 0, i32 0
  store ptr %1806, ptr %1808, align 8
  %1809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1807, i32 0, i32 1
  store i64 0, ptr %1809, align 4
  %1810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1807, i32 0, i32 2
  store i64 0, ptr %1810, align 4
  %1811 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1807, align 8
  %1812 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1813 = getelementptr ptr, ptr %1812, i64 0
  store ptr %1796, ptr %1813, align 8
  %1814 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1814, i32 0, i32 0
  store ptr %1812, ptr %1815, align 8
  %1816 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1814, i32 0, i32 1
  store i64 1, ptr %1816, align 4
  %1817 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1814, i32 0, i32 2
  store i64 1, ptr %1817, align 4
  %1818 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1814, align 8
  %1819 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1811, %"github.com/goplus/llgo/internal/runtime.Slice" %1818, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1819)
  store ptr %1819, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_97
  %1820 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1821 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1822 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1795, ptr %1822, align 8
  %1823 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 1
  store ptr %1820, ptr %1823, align 8
  %1824 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1824, align 8
  %1825 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1825, align 8
  %1826 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, align 8
  %1827 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, i32 0, i32 0
  store ptr @52, ptr %1828, align 8
  %1829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, i32 0, i32 1
  store i64 6, ptr %1829, align 4
  %1830 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, align 8
  %1831 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1832 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1833 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1830, ptr %1833, align 8
  %1834 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 1
  store ptr %1831, ptr %1834, align 8
  %1835 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1835, align 8
  %1836 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1836, align 8
  %1837 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, align 8
  %1838 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1838, i32 0, i32 0
  store ptr @69, ptr %1839, align 8
  %1840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1838, i32 0, i32 1
  store i64 10, ptr %1840, align 4
  %1841 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1838, align 8
  %1842 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1842, i32 0, i32 0
  store ptr @70, ptr %1843, align 8
  %1844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1842, i32 0, i32 1
  store i64 46, ptr %1844, align 4
  %1845 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1842, align 8
  %1846 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1845, i64 25, i64 120, i64 0, i64 22)
  %1847 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1848 = icmp eq ptr %1847, null
  br i1 %1848, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  store ptr %1846, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %1849 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1850 = load ptr, ptr @_llgo_string, align 8
  %1851 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1851, i32 0, i32 0
  store ptr @71, ptr %1852, align 8
  %1853 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1851, i32 0, i32 1
  store i64 47, ptr %1853, align 4
  %1854 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1851, align 8
  %1855 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1854, i64 25, i64 56, i64 0, i64 2)
  %1856 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1857 = icmp eq ptr %1856, null
  br i1 %1857, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  store ptr %1855, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %1858 = load ptr, ptr @_llgo_string, align 8
  %1859 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1860 = load ptr, ptr @_llgo_uintptr, align 8
  %1861 = load ptr, ptr @_llgo_string, align 8
  %1862 = load ptr, ptr @_llgo_bool, align 8
  %1863 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1864 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1863, i32 0, i32 0
  store ptr @1, ptr %1864, align 8
  %1865 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1863, i32 0, i32 1
  store i64 40, ptr %1865, align 4
  %1866 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1863, align 8
  %1867 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1866, i64 25, i64 80, i64 0, i64 22)
  %1868 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  %1869 = icmp eq ptr %1868, null
  br i1 %1869, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %1870 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1870, i32 0, i32 0
  store ptr @40, ptr %1871, align 8
  %1872 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1870, i32 0, i32 1
  store i64 5, ptr %1872, align 4
  %1873 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1870, align 8
  %1874 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1874, i32 0, i32 0
  store ptr null, ptr %1875, align 8
  %1876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1874, i32 0, i32 1
  store i64 0, ptr %1876, align 4
  %1877 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1874, align 8
  %1878 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1879 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1873, ptr %1878, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1877, i1 false)
  %1880 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1881 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1880, i32 0, i32 0
  store ptr @72, ptr %1881, align 8
  %1882 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1880, i32 0, i32 1
  store i64 3, ptr %1882, align 4
  %1883 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1880, align 8
  %1884 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1884, i32 0, i32 0
  store ptr null, ptr %1885, align 8
  %1886 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1884, i32 0, i32 1
  store i64 0, ptr %1886, align 4
  %1887 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1884, align 8
  %1888 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1867)
  %1889 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1883, ptr %1888, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %1887, i1 false)
  %1890 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1891 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1890, i32 0, i32 0
  store ptr @73, ptr %1891, align 8
  %1892 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1890, i32 0, i32 1
  store i64 6, ptr %1892, align 4
  %1893 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1890, align 8
  %1894 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1894, i32 0, i32 0
  store ptr null, ptr %1895, align 8
  %1896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1894, i32 0, i32 1
  store i64 0, ptr %1896, align 4
  %1897 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1894, align 8
  %1898 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %1899 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1893, ptr %1898, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %1897, i1 false)
  %1900 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1901 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1900, i32 0, i32 0
  store ptr @74, ptr %1901, align 8
  %1902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1900, i32 0, i32 1
  store i64 4, ptr %1902, align 4
  %1903 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1900, align 8
  %1904 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1905 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1904, i32 0, i32 0
  store ptr null, ptr %1905, align 8
  %1906 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1904, i32 0, i32 1
  store i64 0, ptr %1906, align 4
  %1907 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1904, align 8
  %1908 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1909 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1903, ptr %1908, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %1907, i1 false)
  %1910 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1910, i32 0, i32 0
  store ptr @75, ptr %1911, align 8
  %1912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1910, i32 0, i32 1
  store i64 9, ptr %1912, align 4
  %1913 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1910, align 8
  %1914 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1915 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1914, i32 0, i32 0
  store ptr null, ptr %1915, align 8
  %1916 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1914, i32 0, i32 1
  store i64 0, ptr %1916, align 4
  %1917 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1914, align 8
  %1918 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  %1919 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1913, ptr %1918, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %1917, i1 false)
  %1920 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1920, i32 0, i32 0
  store ptr @7, ptr %1921, align 8
  %1922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1920, i32 0, i32 1
  store i64 4, ptr %1922, align 4
  %1923 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1920, align 8
  %1924 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 280)
  %1925 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1924, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1879, ptr %1925, align 8
  %1926 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1924, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1889, ptr %1926, align 8
  %1927 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1924, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1899, ptr %1927, align 8
  %1928 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1924, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1909, ptr %1928, align 8
  %1929 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1924, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1919, ptr %1929, align 8
  %1930 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1931 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1930, i32 0, i32 0
  store ptr %1924, ptr %1931, align 8
  %1932 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1930, i32 0, i32 1
  store i64 5, ptr %1932, align 4
  %1933 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1930, i32 0, i32 2
  store i64 5, ptr %1933, align 4
  %1934 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1930, align 8
  %1935 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1923, i64 56, %"github.com/goplus/llgo/internal/runtime.Slice" %1934)
  store ptr %1935, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %1936 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br i1 %1857, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  %1937 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1938 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1937, i32 0, i32 0
  store ptr @76, ptr %1938, align 8
  %1939 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1937, i32 0, i32 1
  store i64 8, ptr %1939, align 4
  %1940 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1937, align 8
  %1941 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1942 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1943 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1942, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1940, ptr %1943, align 8
  %1944 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1942, i32 0, i32 1
  store ptr %1941, ptr %1944, align 8
  %1945 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1942, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", ptr %1945, align 8
  %1946 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1942, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", ptr %1946, align 8
  %1947 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1942, align 8
  %1948 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1949 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1948, i32 0, i32 0
  store ptr @42, ptr %1949, align 8
  %1950 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1948, i32 0, i32 1
  store i64 8, ptr %1950, align 4
  %1951 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1948, align 8
  %1952 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1953 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1954 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1953, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1951, ptr %1954, align 8
  %1955 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1953, i32 0, i32 1
  store ptr %1952, ptr %1955, align 8
  %1956 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1953, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", ptr %1956, align 8
  %1957 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1953, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", ptr %1957, align 8
  %1958 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1953, align 8
  %1959 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1960 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1959, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1947, ptr %1960, align 8
  %1961 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1959, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1958, ptr %1961, align 8
  %1962 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1963 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1962, i32 0, i32 0
  store ptr %1959, ptr %1963, align 8
  %1964 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1962, i32 0, i32 1
  store i64 2, ptr %1964, align 4
  %1965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1962, i32 0, i32 2
  store i64 2, ptr %1965, align 4
  %1966 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1962, align 8
  %1967 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1968 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1967, i32 0, i32 0
  store ptr @3, ptr %1968, align 8
  %1969 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1967, i32 0, i32 1
  store i64 35, ptr %1969, align 4
  %1970 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1967, align 8
  %1971 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1972 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1971, i32 0, i32 0
  store ptr @77, ptr %1972, align 8
  %1973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1971, i32 0, i32 1
  store i64 11, ptr %1973, align 4
  %1974 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1971, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1855, %"github.com/goplus/llgo/internal/runtime.String" %1970, %"github.com/goplus/llgo/internal/runtime.String" %1974, ptr %1936, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1966)
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %1975 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1976 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, i32 0, i32 0
  store ptr @71, ptr %1977, align 8
  %1978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, i32 0, i32 1
  store i64 47, ptr %1978, align 4
  %1979 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, align 8
  %1980 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1979, i64 25, i64 56, i64 0, i64 2)
  %1981 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1982 = icmp eq ptr %1981, null
  br i1 %1982, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %1983 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1980)
  store ptr %1983, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %1984 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1985 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1986 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1985, i32 0, i32 0
  store ptr @1, ptr %1986, align 8
  %1987 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1985, i32 0, i32 1
  store i64 40, ptr %1987, align 4
  %1988 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1985, align 8
  %1989 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1988, i64 25, i64 80, i64 0, i64 22)
  %1990 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1991 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1990, i32 0, i32 0
  store ptr @71, ptr %1991, align 8
  %1992 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1990, i32 0, i32 1
  store i64 47, ptr %1992, align 4
  %1993 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1990, align 8
  %1994 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1993, i64 25, i64 56, i64 0, i64 2)
  %1995 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1996 = icmp eq ptr %1995, null
  br i1 %1996, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  %1997 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1998 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1997, i32 0, i32 0
  store ptr @21, ptr %1998, align 8
  %1999 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1997, i32 0, i32 1
  store i64 4, ptr %1999, align 4
  %2000 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1997, align 8
  %2001 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2002 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2001, i32 0, i32 0
  store ptr null, ptr %2002, align 8
  %2003 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2001, i32 0, i32 1
  store i64 0, ptr %2003, align 4
  %2004 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2001, align 8
  %2005 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2000, ptr %1989, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2004, i1 true)
  %2006 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2007 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2006, i32 0, i32 0
  store ptr @46, ptr %2007, align 8
  %2008 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2006, i32 0, i32 1
  store i64 8, ptr %2008, align 4
  %2009 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2006, align 8
  %2010 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2011 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2010, i32 0, i32 0
  store ptr null, ptr %2011, align 8
  %2012 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2010, i32 0, i32 1
  store i64 0, ptr %2012, align 4
  %2013 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2010, align 8
  %2014 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2015 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2009, ptr %2014, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %2013, i1 false)
  %2016 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2017 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2016, i32 0, i32 0
  store ptr @78, ptr %2017, align 8
  %2018 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2016, i32 0, i32 1
  store i64 6, ptr %2018, align 4
  %2019 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2016, align 8
  %2020 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2021 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, i32 0, i32 0
  store ptr null, ptr %2021, align 8
  %2022 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, i32 0, i32 1
  store i64 0, ptr %2022, align 4
  %2023 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, align 8
  %2024 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1994)
  %2025 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2019, ptr %2024, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %2023, i1 false)
  %2026 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2027 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2026, i32 0, i32 0
  store ptr @7, ptr %2027, align 8
  %2028 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2026, i32 0, i32 1
  store i64 4, ptr %2028, align 4
  %2029 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2026, align 8
  %2030 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %2031 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2030, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2005, ptr %2031, align 8
  %2032 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2030, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2015, ptr %2032, align 8
  %2033 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2030, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2025, ptr %2033, align 8
  %2034 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2035 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2034, i32 0, i32 0
  store ptr %2030, ptr %2035, align 8
  %2036 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2034, i32 0, i32 1
  store i64 3, ptr %2036, align 4
  %2037 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2034, i32 0, i32 2
  store i64 3, ptr %2037, align 4
  %2038 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2034, align 8
  %2039 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2029, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %2038)
  store ptr %2039, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %2040 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1848, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %2041 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2042 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, i32 0, i32 0
  store ptr @18, ptr %2042, align 8
  %2043 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, i32 0, i32 1
  store i64 5, ptr %2043, align 4
  %2044 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, align 8
  %2045 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2046 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2047 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2046, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2044, ptr %2047, align 8
  %2048 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2046, i32 0, i32 1
  store ptr %2045, ptr %2048, align 8
  %2049 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2046, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %2049, align 8
  %2050 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2046, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %2050, align 8
  %2051 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2046, align 8
  %2052 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2053 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2052, i32 0, i32 0
  store ptr @19, ptr %2053, align 8
  %2054 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2052, i32 0, i32 1
  store i64 9, ptr %2054, align 4
  %2055 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2052, align 8
  %2056 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2057 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2058 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2057, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2055, ptr %2058, align 8
  %2059 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2057, i32 0, i32 1
  store ptr %2056, ptr %2059, align 8
  %2060 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2057, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %2060, align 8
  %2061 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2057, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %2061, align 8
  %2062 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2057, align 8
  %2063 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2064 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2063, i32 0, i32 0
  store ptr @25, ptr %2064, align 8
  %2065 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2063, i32 0, i32 1
  store i64 7, ptr %2065, align 4
  %2066 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2063, align 8
  %2067 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %2068 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2069 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2066, ptr %2069, align 8
  %2070 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 1
  store ptr %2067, ptr %2070, align 8
  %2071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %2071, align 8
  %2072 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %2072, align 8
  %2073 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, align 8
  %2074 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2075 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2074, i32 0, i32 0
  store ptr @27, ptr %2075, align 8
  %2076 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2074, i32 0, i32 1
  store i64 6, ptr %2076, align 4
  %2077 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2074, align 8
  %2078 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2079 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2080 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2077, ptr %2080, align 8
  %2081 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 1
  store ptr %2078, ptr %2081, align 8
  %2082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %2082, align 8
  %2083 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %2083, align 8
  %2084 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, align 8
  %2085 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2086 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2085, i32 0, i32 0
  store ptr @22, ptr %2086, align 8
  %2087 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2085, i32 0, i32 1
  store i64 4, ptr %2087, align 4
  %2088 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2085, align 8
  %2089 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2090 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2091 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2088, ptr %2091, align 8
  %2092 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 1
  store ptr %2089, ptr %2092, align 8
  %2093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %2093, align 8
  %2094 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %2094, align 8
  %2095 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, align 8
  %2096 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2097 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2096, i32 0, i32 0
  store ptr @28, ptr %2097, align 8
  %2098 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2096, i32 0, i32 1
  store i64 15, ptr %2098, align 4
  %2099 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2096, align 8
  %2100 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2101 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2102 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2099, ptr %2102, align 8
  %2103 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 1
  store ptr %2100, ptr %2103, align 8
  %2104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", ptr %2104, align 8
  %2105 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", ptr %2105, align 8
  %2106 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, align 8
  %2107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, i32 0, i32 0
  store ptr @33, ptr %2108, align 8
  %2109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, i32 0, i32 1
  store i64 10, ptr %2109, align 4
  %2110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, align 8
  %2111 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2112 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2110, ptr %2113, align 8
  %2114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 1
  store ptr %2111, ptr %2114, align 8
  %2115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %2115, align 8
  %2116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %2116, align 8
  %2117 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, align 8
  %2118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, i32 0, i32 0
  store ptr @34, ptr %2119, align 8
  %2120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, i32 0, i32 1
  store i64 8, ptr %2120, align 4
  %2121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, align 8
  %2122 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2123 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2121, ptr %2124, align 8
  %2125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 1
  store ptr %2122, ptr %2125, align 8
  %2126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %2126, align 8
  %2127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %2127, align 8
  %2128 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, align 8
  %2129 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2129, i32 0, i32 0
  store ptr @35, ptr %2130, align 8
  %2131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2129, i32 0, i32 1
  store i64 7, ptr %2131, align 4
  %2132 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2129, align 8
  %2133 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2134 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2132, ptr %2135, align 8
  %2136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 1
  store ptr %2133, ptr %2136, align 8
  %2137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %2137, align 8
  %2138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %2138, align 8
  %2139 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, align 8
  %2140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2140, i32 0, i32 0
  store ptr @36, ptr %2141, align 8
  %2142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2140, i32 0, i32 1
  store i64 10, ptr %2142, align 4
  %2143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2140, align 8
  %2144 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2145 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2143, ptr %2146, align 8
  %2147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 1
  store ptr %2144, ptr %2147, align 8
  %2148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %2148, align 8
  %2149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %2149, align 8
  %2150 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, align 8
  %2151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 0
  store ptr @37, ptr %2152, align 8
  %2153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 1
  store i64 13, ptr %2153, align 4
  %2154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, align 8
  %2155 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2156 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2157 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2154, ptr %2157, align 8
  %2158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 1
  store ptr %2155, ptr %2158, align 8
  %2159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %2159, align 8
  %2160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %2160, align 8
  %2161 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, align 8
  %2162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, i32 0, i32 0
  store ptr @48, ptr %2163, align 8
  %2164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, i32 0, i32 1
  store i64 13, ptr %2164, align 4
  %2165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, align 8
  %2166 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2167 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2165, ptr %2168, align 8
  %2169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 1
  store ptr %2166, ptr %2169, align 8
  %2170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %2170, align 8
  %2171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %2171, align 8
  %2172 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, align 8
  %2173 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, i32 0, i32 0
  store ptr @49, ptr %2174, align 8
  %2175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, i32 0, i32 1
  store i64 3, ptr %2175, align 4
  %2176 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, align 8
  %2177 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2178 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2176, ptr %2179, align 8
  %2180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 1
  store ptr %2177, ptr %2180, align 8
  %2181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %2181, align 8
  %2182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %2182, align 8
  %2183 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, align 8
  %2184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 0
  store ptr @50, ptr %2185, align 8
  %2186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 1
  store i64 4, ptr %2186, align 4
  %2187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, align 8
  %2188 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2189 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2190 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2187, ptr %2190, align 8
  %2191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 1
  store ptr %2188, ptr %2191, align 8
  %2192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %2192, align 8
  %2193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %2193, align 8
  %2194 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, align 8
  %2195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 0
  store ptr @24, ptr %2196, align 8
  %2197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 1
  store i64 3, ptr %2197, align 4
  %2198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, align 8
  %2199 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2200 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2201 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2198, ptr %2201, align 8
  %2202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 1
  store ptr %2199, ptr %2202, align 8
  %2203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %2203, align 8
  %2204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %2204, align 8
  %2205 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, align 8
  %2206 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, i32 0, i32 0
  store ptr @53, ptr %2207, align 8
  %2208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, i32 0, i32 1
  store i64 7, ptr %2208, align 4
  %2209 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, align 8
  %2210 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2211 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2209, ptr %2212, align 8
  %2213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 1
  store ptr %2210, ptr %2213, align 8
  %2214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %2214, align 8
  %2215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %2215, align 8
  %2216 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, align 8
  %2217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, i32 0, i32 0
  store ptr @65, ptr %2218, align 8
  %2219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, i32 0, i32 1
  store i64 9, ptr %2219, align 4
  %2220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, align 8
  %2221 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2222 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2223 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2220, ptr %2223, align 8
  %2224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 1
  store ptr %2221, ptr %2224, align 8
  %2225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", ptr %2225, align 8
  %2226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", ptr %2226, align 8
  %2227 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, align 8
  %2228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2228, i32 0, i32 0
  store ptr @66, ptr %2229, align 8
  %2230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2228, i32 0, i32 1
  store i64 8, ptr %2230, align 4
  %2231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2228, align 8
  %2232 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2233 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2231, ptr %2234, align 8
  %2235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 1
  store ptr %2232, ptr %2235, align 8
  %2236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %2236, align 8
  %2237 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %2237, align 8
  %2238 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, align 8
  %2239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, i32 0, i32 0
  store ptr @68, ptr %2240, align 8
  %2241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, i32 0, i32 1
  store i64 4, ptr %2241, align 4
  %2242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, align 8
  %2243 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2244 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2245 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2242, ptr %2245, align 8
  %2246 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 1
  store ptr %2243, ptr %2246, align 8
  %2247 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %2247, align 8
  %2248 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %2248, align 8
  %2249 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, align 8
  %2250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 0
  store ptr @52, ptr %2251, align 8
  %2252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 1
  store i64 6, ptr %2252, align 4
  %2253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, align 8
  %2254 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2255 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2253, ptr %2256, align 8
  %2257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 1
  store ptr %2254, ptr %2257, align 8
  %2258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %2258, align 8
  %2259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %2259, align 8
  %2260 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, align 8
  %2261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, i32 0, i32 0
  store ptr @69, ptr %2262, align 8
  %2263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, i32 0, i32 1
  store i64 10, ptr %2263, align 4
  %2264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, align 8
  %2265 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2266 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2264, ptr %2267, align 8
  %2268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 1
  store ptr %2265, ptr %2268, align 8
  %2269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %2269, align 8
  %2270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %2270, align 8
  %2271 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, align 8
  %2272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, i32 0, i32 0
  store ptr @79, ptr %2273, align 8
  %2274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, i32 0, i32 1
  store i64 8, ptr %2274, align 4
  %2275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, align 8
  %2276 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, i32 0, i32 0
  store ptr @80, ptr %2277, align 8
  %2278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, i32 0, i32 1
  store i64 48, ptr %2278, align 4
  %2279 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, align 8
  %2280 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2279, i64 25, i64 24, i64 0, i64 2)
  %2281 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %2282 = icmp eq ptr %2281, null
  br i1 %2282, label %_llgo_115, label %_llgo_116

_llgo_114:                                        ; preds = %_llgo_124, %_llgo_112
  %2283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, i32 0, i32 0
  store ptr @70, ptr %2284, align 8
  %2285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, i32 0, i32 1
  store i64 46, ptr %2285, align 4
  %2286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, align 8
  %2287 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2286, i64 25, i64 120, i64 0, i64 22)
  %2288 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %2289 = icmp eq ptr %2288, null
  br i1 %2289, label %_llgo_125, label %_llgo_126

_llgo_115:                                        ; preds = %_llgo_113
  store ptr %2280, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115, %_llgo_113
  %2290 = load ptr, ptr @_llgo_string, align 8
  %2291 = load ptr, ptr @_llgo_uint16, align 8
  %2292 = load ptr, ptr @_llgo_uint16, align 8
  %2293 = load ptr, ptr @_llgo_uint32, align 8
  %2294 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %2295 = icmp eq ptr %2294, null
  br i1 %2295, label %_llgo_117, label %_llgo_118

_llgo_117:                                        ; preds = %_llgo_116
  %2296 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2296, i32 0, i32 0
  store ptr @46, ptr %2297, align 8
  %2298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2296, i32 0, i32 1
  store i64 8, ptr %2298, align 4
  %2299 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2296, align 8
  %2300 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2300, i32 0, i32 0
  store ptr null, ptr %2301, align 8
  %2302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2300, i32 0, i32 1
  store i64 0, ptr %2302, align 4
  %2303 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2300, align 8
  %2304 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2305 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2299, ptr %2304, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2303, i1 false)
  %2306 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2306, i32 0, i32 0
  store ptr @81, ptr %2307, align 8
  %2308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2306, i32 0, i32 1
  store i64 6, ptr %2308, align 4
  %2309 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2306, align 8
  %2310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2310, i32 0, i32 0
  store ptr null, ptr %2311, align 8
  %2312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2310, i32 0, i32 1
  store i64 0, ptr %2312, align 4
  %2313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2310, align 8
  %2314 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %2315 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2309, ptr %2314, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %2313, i1 false)
  %2316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2316, i32 0, i32 0
  store ptr @82, ptr %2317, align 8
  %2318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2316, i32 0, i32 1
  store i64 6, ptr %2318, align 4
  %2319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2316, align 8
  %2320 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2320, i32 0, i32 0
  store ptr null, ptr %2321, align 8
  %2322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2320, i32 0, i32 1
  store i64 0, ptr %2322, align 4
  %2323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2320, align 8
  %2324 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %2325 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2319, ptr %2324, i64 18, %"github.com/goplus/llgo/internal/runtime.String" %2323, i1 false)
  %2326 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2326, i32 0, i32 0
  store ptr @83, ptr %2327, align 8
  %2328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2326, i32 0, i32 1
  store i64 4, ptr %2328, align 4
  %2329 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2326, align 8
  %2330 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2330, i32 0, i32 0
  store ptr null, ptr %2331, align 8
  %2332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2330, i32 0, i32 1
  store i64 0, ptr %2332, align 4
  %2333 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2330, align 8
  %2334 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %2335 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2329, ptr %2334, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %2333, i1 false)
  %2336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2336, i32 0, i32 0
  store ptr @7, ptr %2337, align 8
  %2338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2336, i32 0, i32 1
  store i64 4, ptr %2338, align 4
  %2339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2336, align 8
  %2340 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %2341 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2340, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2305, ptr %2341, align 8
  %2342 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2340, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2315, ptr %2342, align 8
  %2343 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2340, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2325, ptr %2343, align 8
  %2344 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2340, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %2335, ptr %2344, align 8
  %2345 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, i32 0, i32 0
  store ptr %2340, ptr %2346, align 8
  %2347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, i32 0, i32 1
  store i64 4, ptr %2347, align 4
  %2348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, i32 0, i32 2
  store i64 4, ptr %2348, align 4
  %2349 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, align 8
  %2350 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2339, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %2349)
  store ptr %2350, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_116
  %2351 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %2282, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %2352 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2352, i32 0, i32 0
  store ptr @28, ptr %2353, align 8
  %2354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2352, i32 0, i32 1
  store i64 15, ptr %2354, align 4
  %2355 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2352, align 8
  %2356 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2357 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2357, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2355, ptr %2358, align 8
  %2359 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2357, i32 0, i32 1
  store ptr %2356, ptr %2359, align 8
  %2360 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2357, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %2360, align 8
  %2361 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2357, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %2361, align 8
  %2362 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2357, align 8
  %2363 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2363, i32 0, i32 0
  store ptr @47, ptr %2364, align 8
  %2365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2363, i32 0, i32 1
  store i64 7, ptr %2365, align 4
  %2366 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2363, align 8
  %2367 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2368 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2368, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2366, ptr %2369, align 8
  %2370 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2368, i32 0, i32 1
  store ptr %2367, ptr %2370, align 8
  %2371 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2368, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %2371, align 8
  %2372 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2368, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %2372, align 8
  %2373 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2368, align 8
  %2374 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %2375 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2374, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2362, ptr %2375, align 8
  %2376 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2374, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2373, ptr %2376, align 8
  %2377 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2377, i32 0, i32 0
  store ptr %2374, ptr %2378, align 8
  %2379 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2377, i32 0, i32 1
  store i64 2, ptr %2379, align 4
  %2380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2377, i32 0, i32 2
  store i64 2, ptr %2380, align 4
  %2381 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2377, align 8
  %2382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, i32 0, i32 0
  store ptr @3, ptr %2383, align 8
  %2384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, i32 0, i32 1
  store i64 35, ptr %2384, align 4
  %2385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, align 8
  %2386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2386, i32 0, i32 0
  store ptr @84, ptr %2387, align 8
  %2388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2386, i32 0, i32 1
  store i64 12, ptr %2388, align 4
  %2389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2386, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2280, %"github.com/goplus/llgo/internal/runtime.String" %2385, %"github.com/goplus/llgo/internal/runtime.String" %2389, ptr %2351, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2381)
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %2390 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2390, i32 0, i32 0
  store ptr @80, ptr %2391, align 8
  %2392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2390, i32 0, i32 1
  store i64 48, ptr %2392, align 4
  %2393 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2390, align 8
  %2394 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2393, i64 25, i64 24, i64 0, i64 2)
  %2395 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %2396 = icmp eq ptr %2395, null
  br i1 %2396, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  %2397 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2394)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2397)
  store ptr %2397, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %2398 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %2399 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2400 = icmp eq ptr %2399, null
  br i1 %2400, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %2401 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2402 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2402, i32 0, i32 0
  store ptr %2401, ptr %2403, align 8
  %2404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2402, i32 0, i32 1
  store i64 0, ptr %2404, align 4
  %2405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2402, i32 0, i32 2
  store i64 0, ptr %2405, align 4
  %2406 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2402, align 8
  %2407 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2408 = getelementptr ptr, ptr %2407, i64 0
  store ptr %2398, ptr %2408, align 8
  %2409 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2409, i32 0, i32 0
  store ptr %2407, ptr %2410, align 8
  %2411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2409, i32 0, i32 1
  store i64 1, ptr %2411, align 4
  %2412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2409, i32 0, i32 2
  store i64 1, ptr %2412, align 4
  %2413 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2409, align 8
  %2414 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2406, %"github.com/goplus/llgo/internal/runtime.Slice" %2413, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2414)
  store ptr %2414, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %2415 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2416 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2416, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2275, ptr %2417, align 8
  %2418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2416, i32 0, i32 1
  store ptr %2415, ptr %2418, align 8
  %2419 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2416, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %2419, align 8
  %2420 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2416, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %2420, align 8
  %2421 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2416, align 8
  %2422 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %2423 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2051, ptr %2423, align 8
  %2424 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2062, ptr %2424, align 8
  %2425 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2073, ptr %2425, align 8
  %2426 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2084, ptr %2426, align 8
  %2427 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2095, ptr %2427, align 8
  %2428 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2106, ptr %2428, align 8
  %2429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2117, ptr %2429, align 8
  %2430 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2128, ptr %2430, align 8
  %2431 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2139, ptr %2431, align 8
  %2432 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2150, ptr %2432, align 8
  %2433 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2161, ptr %2433, align 8
  %2434 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2172, ptr %2434, align 8
  %2435 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2183, ptr %2435, align 8
  %2436 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2194, ptr %2436, align 8
  %2437 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2205, ptr %2437, align 8
  %2438 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2216, ptr %2438, align 8
  %2439 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2227, ptr %2439, align 8
  %2440 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2238, ptr %2440, align 8
  %2441 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2249, ptr %2441, align 8
  %2442 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2260, ptr %2442, align 8
  %2443 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2271, ptr %2443, align 8
  %2444 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2422, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2421, ptr %2444, align 8
  %2445 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, i32 0, i32 0
  store ptr %2422, ptr %2446, align 8
  %2447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, i32 0, i32 1
  store i64 22, ptr %2447, align 4
  %2448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, i32 0, i32 2
  store i64 22, ptr %2448, align 4
  %2449 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, align 8
  %2450 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2450, i32 0, i32 0
  store ptr @3, ptr %2451, align 8
  %2452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2450, i32 0, i32 1
  store i64 35, ptr %2452, align 4
  %2453 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2450, align 8
  %2454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2454, i32 0, i32 0
  store ptr @69, ptr %2455, align 8
  %2456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2454, i32 0, i32 1
  store i64 10, ptr %2456, align 4
  %2457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2454, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1846, %"github.com/goplus/llgo/internal/runtime.String" %2453, %"github.com/goplus/llgo/internal/runtime.String" %2457, ptr %2040, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2449)
  br label %_llgo_114

_llgo_125:                                        ; preds = %_llgo_114
  %2458 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2287)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2458)
  store ptr %2458, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_114
  %2459 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %2460 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2461 = icmp eq ptr %2460, null
  br i1 %2461, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %2462 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2463 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2463, i32 0, i32 0
  store ptr %2462, ptr %2464, align 8
  %2465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2463, i32 0, i32 1
  store i64 0, ptr %2465, align 4
  %2466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2463, i32 0, i32 2
  store i64 0, ptr %2466, align 4
  %2467 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2463, align 8
  %2468 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2469 = getelementptr ptr, ptr %2468, i64 0
  store ptr %2459, ptr %2469, align 8
  %2470 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2470, i32 0, i32 0
  store ptr %2468, ptr %2471, align 8
  %2472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2470, i32 0, i32 1
  store i64 1, ptr %2472, align 4
  %2473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2470, i32 0, i32 2
  store i64 1, ptr %2473, align 4
  %2474 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2470, align 8
  %2475 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2467, %"github.com/goplus/llgo/internal/runtime.Slice" %2474, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2475)
  store ptr %2475, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %2476 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2477 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2478 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1841, ptr %2478, align 8
  %2479 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 1
  store ptr %2476, ptr %2479, align 8
  %2480 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %2480, align 8
  %2481 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %2481, align 8
  %2482 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2477, align 8
  %2483 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2483, i32 0, i32 0
  store ptr @79, ptr %2484, align 8
  %2485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2483, i32 0, i32 1
  store i64 8, ptr %2485, align 4
  %2486 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2483, align 8
  %2487 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2488 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2489 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2486, ptr %2489, align 8
  %2490 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 1
  store ptr %2487, ptr %2490, align 8
  %2491 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2491, align 8
  %2492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2492, align 8
  %2493 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2488, align 8
  %2494 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 1000)
  %2495 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1571, ptr %2495, align 8
  %2496 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1582, ptr %2496, align 8
  %2497 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1593, ptr %2497, align 8
  %2498 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1604, ptr %2498, align 8
  %2499 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1615, ptr %2499, align 8
  %2500 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1626, ptr %2500, align 8
  %2501 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1637, ptr %2501, align 8
  %2502 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1648, ptr %2502, align 8
  %2503 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1659, ptr %2503, align 8
  %2504 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1670, ptr %2504, align 8
  %2505 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1681, ptr %2505, align 8
  %2506 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1692, ptr %2506, align 8
  %2507 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1703, ptr %2507, align 8
  %2508 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1714, ptr %2508, align 8
  %2509 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1725, ptr %2509, align 8
  %2510 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1736, ptr %2510, align 8
  %2511 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1747, ptr %2511, align 8
  %2512 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1758, ptr %2512, align 8
  %2513 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1769, ptr %2513, align 8
  %2514 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1780, ptr %2514, align 8
  %2515 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1791, ptr %2515, align 8
  %2516 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1826, ptr %2516, align 8
  %2517 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1837, ptr %2517, align 8
  %2518 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 23
  store %"github.com/goplus/llgo/internal/abi.Method" %2482, ptr %2518, align 8
  %2519 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2494, i64 24
  store %"github.com/goplus/llgo/internal/abi.Method" %2493, ptr %2519, align 8
  %2520 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2520, i32 0, i32 0
  store ptr %2494, ptr %2521, align 8
  %2522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2520, i32 0, i32 1
  store i64 25, ptr %2522, align 4
  %2523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2520, i32 0, i32 2
  store i64 25, ptr %2523, align 4
  %2524 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2520, align 8
  %2525 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2525, i32 0, i32 0
  store ptr @3, ptr %2526, align 8
  %2527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2525, i32 0, i32 1
  store i64 35, ptr %2527, align 4
  %2528 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2525, align 8
  %2529 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2529, i32 0, i32 0
  store ptr @53, ptr %2530, align 8
  %2531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2529, i32 0, i32 1
  store i64 7, ptr %2531, align 4
  %2532 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2529, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1286, %"github.com/goplus/llgo/internal/runtime.String" %2528, %"github.com/goplus/llgo/internal/runtime.String" %2532, ptr %1560, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2524)
  br label %_llgo_98

_llgo_129:                                        ; preds = %_llgo_98
  %2533 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1803)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2533)
  store ptr %2533, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_98
  %2534 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2535 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2536 = icmp eq ptr %2535, null
  br i1 %2536, label %_llgo_131, label %_llgo_132

_llgo_131:                                        ; preds = %_llgo_130
  %2537 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2538 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2538, i32 0, i32 0
  store ptr %2537, ptr %2539, align 8
  %2540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2538, i32 0, i32 1
  store i64 0, ptr %2540, align 4
  %2541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2538, i32 0, i32 2
  store i64 0, ptr %2541, align 4
  %2542 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2538, align 8
  %2543 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2544 = getelementptr ptr, ptr %2543, i64 0
  store ptr %2534, ptr %2544, align 8
  %2545 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2545, i32 0, i32 0
  store ptr %2543, ptr %2546, align 8
  %2547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2545, i32 0, i32 1
  store i64 1, ptr %2547, align 4
  %2548 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2545, i32 0, i32 2
  store i64 1, ptr %2548, align 4
  %2549 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2545, align 8
  %2550 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2542, %"github.com/goplus/llgo/internal/runtime.Slice" %2549, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2550)
  store ptr %2550, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_130
  %2551 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2552 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2553 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2552, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1281, ptr %2553, align 8
  %2554 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2552, i32 0, i32 1
  store ptr %2551, ptr %2554, align 8
  %2555 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2552, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2555, align 8
  %2556 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2552, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2556, align 8
  %2557 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2552, align 8
  %2558 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2558, i32 0, i32 0
  store ptr @65, ptr %2559, align 8
  %2560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2558, i32 0, i32 1
  store i64 9, ptr %2560, align 4
  %2561 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2558, align 8
  %2562 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2563 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2564 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2561, ptr %2564, align 8
  %2565 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 1
  store ptr %2562, ptr %2565, align 8
  %2566 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", ptr %2566, align 8
  %2567 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", ptr %2567, align 8
  %2568 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2563, align 8
  %2569 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2569, i32 0, i32 0
  store ptr @66, ptr %2570, align 8
  %2571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2569, i32 0, i32 1
  store i64 8, ptr %2571, align 4
  %2572 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2569, align 8
  %2573 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2574 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2575 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2574, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2572, ptr %2575, align 8
  %2576 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2574, i32 0, i32 1
  store ptr %2573, ptr %2576, align 8
  %2577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2574, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2577, align 8
  %2578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2574, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2578, align 8
  %2579 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2574, align 8
  %2580 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2580, i32 0, i32 0
  store ptr @68, ptr %2581, align 8
  %2582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2580, i32 0, i32 1
  store i64 4, ptr %2582, align 4
  %2583 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2580, align 8
  %2584 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2585 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2586 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2585, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2583, ptr %2586, align 8
  %2587 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2585, i32 0, i32 1
  store ptr %2584, ptr %2587, align 8
  %2588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2585, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2588, align 8
  %2589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2585, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2589, align 8
  %2590 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2585, align 8
  %2591 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2592 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2591, i32 0, i32 0
  store ptr @52, ptr %2592, align 8
  %2593 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2591, i32 0, i32 1
  store i64 6, ptr %2593, align 4
  %2594 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2591, align 8
  %2595 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2596 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2597 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2596, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2594, ptr %2597, align 8
  %2598 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2596, i32 0, i32 1
  store ptr %2595, ptr %2598, align 8
  %2599 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2596, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2599, align 8
  %2600 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2596, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2600, align 8
  %2601 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2596, align 8
  %2602 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2602, i32 0, i32 0
  store ptr @69, ptr %2603, align 8
  %2604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2602, i32 0, i32 1
  store i64 10, ptr %2604, align 4
  %2605 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2602, align 8
  %2606 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2607 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2608 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2607, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2605, ptr %2608, align 8
  %2609 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2607, i32 0, i32 1
  store ptr %2606, ptr %2609, align 8
  %2610 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2607, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2610, align 8
  %2611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2607, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2611, align 8
  %2612 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2607, align 8
  %2613 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2613, i32 0, i32 0
  store ptr @79, ptr %2614, align 8
  %2615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2613, i32 0, i32 1
  store i64 8, ptr %2615, align 4
  %2616 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2613, align 8
  %2617 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2618 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2619 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2618, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2616, ptr %2619, align 8
  %2620 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2618, i32 0, i32 1
  store ptr %2617, ptr %2620, align 8
  %2621 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2618, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2621, align 8
  %2622 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2618, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2622, align 8
  %2623 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2618, align 8
  %2624 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %2625 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1049, ptr %2625, align 8
  %2626 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1060, ptr %2626, align 8
  %2627 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1071, ptr %2627, align 8
  %2628 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1082, ptr %2628, align 8
  %2629 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1093, ptr %2629, align 8
  %2630 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1104, ptr %2630, align 8
  %2631 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1115, ptr %2631, align 8
  %2632 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1126, ptr %2632, align 8
  %2633 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1137, ptr %2633, align 8
  %2634 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1148, ptr %2634, align 8
  %2635 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1159, ptr %2635, align 8
  %2636 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1170, ptr %2636, align 8
  %2637 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1181, ptr %2637, align 8
  %2638 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1266, ptr %2638, align 8
  %2639 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1277, ptr %2639, align 8
  %2640 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2557, ptr %2640, align 8
  %2641 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2568, ptr %2641, align 8
  %2642 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2579, ptr %2642, align 8
  %2643 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2590, ptr %2643, align 8
  %2644 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2601, ptr %2644, align 8
  %2645 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2612, ptr %2645, align 8
  %2646 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2624, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2623, ptr %2646, align 8
  %2647 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2647, i32 0, i32 0
  store ptr %2624, ptr %2648, align 8
  %2649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2647, i32 0, i32 1
  store i64 22, ptr %2649, align 4
  %2650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2647, i32 0, i32 2
  store i64 22, ptr %2650, align 4
  %2651 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2647, align 8
  %2652 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2652, i32 0, i32 0
  store ptr @3, ptr %2653, align 8
  %2654 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2652, i32 0, i32 1
  store i64 35, ptr %2654, align 4
  %2655 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2652, align 8
  %2656 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2657 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2656, i32 0, i32 0
  store ptr @37, ptr %2657, align 8
  %2658 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2656, i32 0, i32 1
  store i64 13, ptr %2658, align 4
  %2659 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2656, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %851, %"github.com/goplus/llgo/internal/runtime.String" %2655, %"github.com/goplus/llgo/internal/runtime.String" %2659, ptr %1038, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2651)
  br label %_llgo_82

_llgo_133:                                        ; preds = %_llgo_82
  %2660 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1197)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2660)
  store ptr %2660, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_82
  %2661 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %2662 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2663 = icmp eq ptr %2662, null
  br i1 %2663, label %_llgo_135, label %_llgo_136

_llgo_135:                                        ; preds = %_llgo_134
  %2664 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2665 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2666 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2665, i32 0, i32 0
  store ptr %2664, ptr %2666, align 8
  %2667 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2665, i32 0, i32 1
  store i64 0, ptr %2667, align 4
  %2668 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2665, i32 0, i32 2
  store i64 0, ptr %2668, align 4
  %2669 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2665, align 8
  %2670 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2671 = getelementptr ptr, ptr %2670, i64 0
  store ptr %2661, ptr %2671, align 8
  %2672 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2673 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2672, i32 0, i32 0
  store ptr %2670, ptr %2673, align 8
  %2674 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2672, i32 0, i32 1
  store i64 1, ptr %2674, align 4
  %2675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2672, i32 0, i32 2
  store i64 1, ptr %2675, align 4
  %2676 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2672, align 8
  %2677 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2669, %"github.com/goplus/llgo/internal/runtime.Slice" %2676, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2677)
  store ptr %2677, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_134
  %2678 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2679 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %846, ptr %2680, align 8
  %2681 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 1
  store ptr %2678, ptr %2681, align 8
  %2682 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2682, align 8
  %2683 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2683, align 8
  %2684 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2679, align 8
  %2685 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2685, i32 0, i32 0
  store ptr @48, ptr %2686, align 8
  %2687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2685, i32 0, i32 1
  store i64 13, ptr %2687, align 4
  %2688 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2685, align 8
  %2689 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2690 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2688, ptr %2691, align 8
  %2692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 1
  store ptr %2689, ptr %2692, align 8
  %2693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2693, align 8
  %2694 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2694, align 8
  %2695 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2690, align 8
  %2696 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2696, i32 0, i32 0
  store ptr @49, ptr %2697, align 8
  %2698 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2696, i32 0, i32 1
  store i64 3, ptr %2698, align 4
  %2699 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2696, align 8
  %2700 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2701 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2699, ptr %2702, align 8
  %2703 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 1
  store ptr %2700, ptr %2703, align 8
  %2704 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2704, align 8
  %2705 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2705, align 8
  %2706 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2701, align 8
  %2707 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2708 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2707, i32 0, i32 0
  store ptr @50, ptr %2708, align 8
  %2709 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2707, i32 0, i32 1
  store i64 4, ptr %2709, align 4
  %2710 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2707, align 8
  %2711 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2712 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2710, ptr %2713, align 8
  %2714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 1
  store ptr %2711, ptr %2714, align 8
  %2715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2715, align 8
  %2716 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2716, align 8
  %2717 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2712, align 8
  %2718 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2718, i32 0, i32 0
  store ptr @24, ptr %2719, align 8
  %2720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2718, i32 0, i32 1
  store i64 3, ptr %2720, align 4
  %2721 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2718, align 8
  %2722 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2723 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2721, ptr %2724, align 8
  %2725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 1
  store ptr %2722, ptr %2725, align 8
  %2726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2726, align 8
  %2727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2727, align 8
  %2728 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2723, align 8
  %2729 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2729, i32 0, i32 0
  store ptr @53, ptr %2730, align 8
  %2731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2729, i32 0, i32 1
  store i64 7, ptr %2731, align 4
  %2732 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2729, align 8
  %2733 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2734 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2732, ptr %2735, align 8
  %2736 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 1
  store ptr %2733, ptr %2736, align 8
  %2737 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2737, align 8
  %2738 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2738, align 8
  %2739 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2734, align 8
  %2740 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2741 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2740, i32 0, i32 0
  store ptr @65, ptr %2741, align 8
  %2742 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2740, i32 0, i32 1
  store i64 9, ptr %2742, align 4
  %2743 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2740, align 8
  %2744 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2745 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2743, ptr %2746, align 8
  %2747 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 1
  store ptr %2744, ptr %2747, align 8
  %2748 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", ptr %2748, align 8
  %2749 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", ptr %2749, align 8
  %2750 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2745, align 8
  %2751 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2751, i32 0, i32 0
  store ptr @66, ptr %2752, align 8
  %2753 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2751, i32 0, i32 1
  store i64 8, ptr %2753, align 4
  %2754 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2751, align 8
  %2755 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2756 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2754, ptr %2757, align 8
  %2758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 1
  store ptr %2755, ptr %2758, align 8
  %2759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2759, align 8
  %2760 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2760, align 8
  %2761 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2756, align 8
  %2762 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, i32 0, i32 0
  store ptr @68, ptr %2763, align 8
  %2764 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, i32 0, i32 1
  store i64 4, ptr %2764, align 4
  %2765 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2762, align 8
  %2766 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2767 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2768 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2765, ptr %2768, align 8
  %2769 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 1
  store ptr %2766, ptr %2769, align 8
  %2770 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2770, align 8
  %2771 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2771, align 8
  %2772 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2767, align 8
  %2773 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2773, i32 0, i32 0
  store ptr @52, ptr %2774, align 8
  %2775 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2773, i32 0, i32 1
  store i64 6, ptr %2775, align 4
  %2776 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2773, align 8
  %2777 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2778 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2779 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2776, ptr %2779, align 8
  %2780 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 1
  store ptr %2777, ptr %2780, align 8
  %2781 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2781, align 8
  %2782 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2782, align 8
  %2783 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2778, align 8
  %2784 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2784, i32 0, i32 0
  store ptr @69, ptr %2785, align 8
  %2786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2784, i32 0, i32 1
  store i64 10, ptr %2786, align 4
  %2787 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2784, align 8
  %2788 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2789 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2790 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2787, ptr %2790, align 8
  %2791 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 1
  store ptr %2788, ptr %2791, align 8
  %2792 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2792, align 8
  %2793 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2793, align 8
  %2794 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2789, align 8
  %2795 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2796 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2795, i32 0, i32 0
  store ptr @79, ptr %2796, align 8
  %2797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2795, i32 0, i32 1
  store i64 8, ptr %2797, align 4
  %2798 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2795, align 8
  %2799 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2800 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2798, ptr %2801, align 8
  %2802 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 1
  store ptr %2799, ptr %2802, align 8
  %2803 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2803, align 8
  %2804 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2804, align 8
  %2805 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2800, align 8
  %2806 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, i32 0, i32 0
  store ptr @85, ptr %2807, align 8
  %2808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, i32 0, i32 1
  store i64 8, ptr %2808, align 4
  %2809 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2806, align 8
  %2810 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2811 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2812 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2809, ptr %2812, align 8
  %2813 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 1
  store ptr %2810, ptr %2813, align 8
  %2814 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2814, align 8
  %2815 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2815, align 8
  %2816 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2811, align 8
  %2817 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %2818 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %691, ptr %2818, align 8
  %2819 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %702, ptr %2819, align 8
  %2820 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %713, ptr %2820, align 8
  %2821 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %724, ptr %2821, align 8
  %2822 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %735, ptr %2822, align 8
  %2823 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %746, ptr %2823, align 8
  %2824 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %757, ptr %2824, align 8
  %2825 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %803, ptr %2825, align 8
  %2826 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %831, ptr %2826, align 8
  %2827 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %842, ptr %2827, align 8
  %2828 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2684, ptr %2828, align 8
  %2829 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2695, ptr %2829, align 8
  %2830 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2706, ptr %2830, align 8
  %2831 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2717, ptr %2831, align 8
  %2832 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2728, ptr %2832, align 8
  %2833 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2739, ptr %2833, align 8
  %2834 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2750, ptr %2834, align 8
  %2835 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2761, ptr %2835, align 8
  %2836 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2772, ptr %2836, align 8
  %2837 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2783, ptr %2837, align 8
  %2838 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2794, ptr %2838, align 8
  %2839 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %2805, ptr %2839, align 8
  %2840 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2817, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %2816, ptr %2840, align 8
  %2841 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2841, i32 0, i32 0
  store ptr %2817, ptr %2842, align 8
  %2843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2841, i32 0, i32 1
  store i64 23, ptr %2843, align 4
  %2844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2841, i32 0, i32 2
  store i64 23, ptr %2844, align 4
  %2845 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2841, align 8
  %2846 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2847 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2846, i32 0, i32 0
  store ptr @3, ptr %2847, align 8
  %2848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2846, i32 0, i32 1
  store i64 35, ptr %2848, align 4
  %2849 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2846, align 8
  %2850 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2850, i32 0, i32 0
  store ptr @34, ptr %2851, align 8
  %2852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2850, i32 0, i32 1
  store i64 8, ptr %2852, align 4
  %2853 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2850, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %601, %"github.com/goplus/llgo/internal/runtime.String" %2849, %"github.com/goplus/llgo/internal/runtime.String" %2853, ptr %680, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2845)
  br label %_llgo_60

_llgo_137:                                        ; preds = %_llgo_60
  %2854 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2854, i32 0, i32 0
  store ptr @40, ptr %2855, align 8
  %2856 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2854, i32 0, i32 1
  store i64 5, ptr %2856, align 4
  %2857 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2854, align 8
  %2858 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2859 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2858, i32 0, i32 0
  store ptr null, ptr %2859, align 8
  %2860 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2858, i32 0, i32 1
  store i64 0, ptr %2860, align 4
  %2861 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2858, align 8
  %2862 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %2863 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2857, ptr %2862, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %2861, i1 false)
  %2864 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2865 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2864, i32 0, i32 0
  store ptr @86, ptr %2865, align 8
  %2866 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2864, i32 0, i32 1
  store i64 5, ptr %2866, align 4
  %2867 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2864, align 8
  %2868 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2868, i32 0, i32 0
  store ptr null, ptr %2869, align 8
  %2870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2868, i32 0, i32 1
  store i64 0, ptr %2870, align 4
  %2871 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2868, align 8
  %2872 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %776)
  %2873 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2867, ptr %2872, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %2871, i1 false)
  %2874 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2874, i32 0, i32 0
  store ptr @87, ptr %2875, align 8
  %2876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2874, i32 0, i32 1
  store i64 4, ptr %2876, align 4
  %2877 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2874, align 8
  %2878 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2879 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2878, i32 0, i32 0
  store ptr null, ptr %2879, align 8
  %2880 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2878, i32 0, i32 1
  store i64 0, ptr %2880, align 4
  %2881 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2878, align 8
  %2882 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %2883 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2877, ptr %2882, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %2881, i1 false)
  %2884 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2884, i32 0, i32 0
  store ptr @88, ptr %2885, align 8
  %2886 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2884, i32 0, i32 1
  store i64 4, ptr %2886, align 4
  %2887 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2884, align 8
  %2888 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2888, i32 0, i32 0
  store ptr null, ptr %2889, align 8
  %2890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2888, i32 0, i32 1
  store i64 0, ptr %2890, align 4
  %2891 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2888, align 8
  %2892 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %2893 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %2887, ptr %2892, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %2891, i1 false)
  %2894 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2894, i32 0, i32 0
  store ptr @7, ptr %2895, align 8
  %2896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2894, i32 0, i32 1
  store i64 4, ptr %2896, align 4
  %2897 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2894, align 8
  %2898 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %2899 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2898, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %2863, ptr %2899, align 8
  %2900 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2898, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %2873, ptr %2900, align 8
  %2901 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2898, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %2883, ptr %2901, align 8
  %2902 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %2898, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %2893, ptr %2902, align 8
  %2903 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2903, i32 0, i32 0
  store ptr %2898, ptr %2904, align 8
  %2905 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2903, i32 0, i32 1
  store i64 4, ptr %2905, align 4
  %2906 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2903, i32 0, i32 2
  store i64 4, ptr %2906, align 4
  %2907 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2903, align 8
  %2908 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %2897, i64 40, %"github.com/goplus/llgo/internal/runtime.Slice" %2907)
  store ptr %2908, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_60
  %2909 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br i1 %595, label %_llgo_139, label %_llgo_140

_llgo_139:                                        ; preds = %_llgo_138
  %2910 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2910, i32 0, i32 0
  store ptr @42, ptr %2911, align 8
  %2912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2910, i32 0, i32 1
  store i64 8, ptr %2912, align 4
  %2913 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2910, align 8
  %2914 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2915 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2916 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2915, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2913, ptr %2916, align 8
  %2917 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2915, i32 0, i32 1
  store ptr %2914, ptr %2917, align 8
  %2918 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2915, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", ptr %2918, align 8
  %2919 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2915, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", ptr %2919, align 8
  %2920 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2915, align 8
  %2921 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2921, i32 0, i32 0
  store ptr @43, ptr %2922, align 8
  %2923 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2921, i32 0, i32 1
  store i64 4, ptr %2923, align 4
  %2924 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2921, align 8
  %2925 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2926 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2927 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2926, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2924, ptr %2927, align 8
  %2928 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2926, i32 0, i32 1
  store ptr %2925, ptr %2928, align 8
  %2929 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2926, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", ptr %2929, align 8
  %2930 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2926, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", ptr %2930, align 8
  %2931 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2926, align 8
  %2932 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2933 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2932, i32 0, i32 0
  store ptr @44, ptr %2933, align 8
  %2934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2932, i32 0, i32 1
  store i64 7, ptr %2934, align 4
  %2935 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2932, align 8
  %2936 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2937 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2938 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2937, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2935, ptr %2938, align 8
  %2939 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2937, i32 0, i32 1
  store ptr %2936, ptr %2939, align 8
  %2940 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2937, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", ptr %2940, align 8
  %2941 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2937, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", ptr %2941, align 8
  %2942 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2937, align 8
  %2943 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %2944 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2943, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %2920, ptr %2944, align 8
  %2945 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2943, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2931, ptr %2945, align 8
  %2946 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2943, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2942, ptr %2946, align 8
  %2947 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2948 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2947, i32 0, i32 0
  store ptr %2943, ptr %2948, align 8
  %2949 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2947, i32 0, i32 1
  store i64 3, ptr %2949, align 4
  %2950 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2947, i32 0, i32 2
  store i64 3, ptr %2950, align 4
  %2951 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2947, align 8
  %2952 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2953 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2952, i32 0, i32 0
  store ptr @3, ptr %2953, align 8
  %2954 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2952, i32 0, i32 1
  store i64 35, ptr %2954, align 4
  %2955 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2952, align 8
  %2956 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2957 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2956, i32 0, i32 0
  store ptr @89, ptr %2957, align 8
  %2958 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2956, i32 0, i32 1
  store i64 6, ptr %2958, align 4
  %2959 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2956, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %593, %"github.com/goplus/llgo/internal/runtime.String" %2955, %"github.com/goplus/llgo/internal/runtime.String" %2959, ptr %2909, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2951)
  br label %_llgo_140

_llgo_140:                                        ; preds = %_llgo_139, %_llgo_138
  %2960 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %2961 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2961, i32 0, i32 0
  store ptr @29, ptr %2962, align 8
  %2963 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2961, i32 0, i32 1
  store i64 42, ptr %2963, align 4
  %2964 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2961, align 8
  %2965 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %2964, i64 25, i64 40, i64 0, i64 3)
  %2966 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %2967 = icmp eq ptr %2966, null
  br i1 %2967, label %_llgo_141, label %_llgo_142

_llgo_141:                                        ; preds = %_llgo_140
  %2968 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %2965)
  store ptr %2968, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_142

_llgo_142:                                        ; preds = %_llgo_141, %_llgo_140
  %2969 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %2970 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2971 = icmp eq ptr %2970, null
  br i1 %2971, label %_llgo_143, label %_llgo_144

_llgo_143:                                        ; preds = %_llgo_142
  %2972 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2973 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2974 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2973, i32 0, i32 0
  store ptr %2972, ptr %2974, align 8
  %2975 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2973, i32 0, i32 1
  store i64 0, ptr %2975, align 4
  %2976 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2973, i32 0, i32 2
  store i64 0, ptr %2976, align 4
  %2977 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2973, align 8
  %2978 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2979 = getelementptr ptr, ptr %2978, i64 0
  store ptr %2969, ptr %2979, align 8
  %2980 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2981 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2980, i32 0, i32 0
  store ptr %2978, ptr %2981, align 8
  %2982 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2980, i32 0, i32 1
  store i64 1, ptr %2982, align 4
  %2983 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2980, i32 0, i32 2
  store i64 1, ptr %2983, align 4
  %2984 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2980, align 8
  %2985 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2977, %"github.com/goplus/llgo/internal/runtime.Slice" %2984, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2985)
  store ptr %2985, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143, %_llgo_142
  %2986 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %2987 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2988 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2987, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %588, ptr %2988, align 8
  %2989 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2987, i32 0, i32 1
  store ptr %2986, ptr %2989, align 8
  %2990 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2987, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", ptr %2990, align 8
  %2991 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2987, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", ptr %2991, align 8
  %2992 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2987, align 8
  %2993 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2994 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2993, i32 0, i32 0
  store ptr @33, ptr %2994, align 8
  %2995 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2993, i32 0, i32 1
  store i64 10, ptr %2995, align 4
  %2996 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2993, align 8
  %2997 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2998 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2999 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2998, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2996, ptr %2999, align 8
  %3000 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2998, i32 0, i32 1
  store ptr %2997, ptr %3000, align 8
  %3001 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2998, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %3001, align 8
  %3002 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2998, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %3002, align 8
  %3003 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2998, align 8
  %3004 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3005 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3004, i32 0, i32 0
  store ptr @34, ptr %3005, align 8
  %3006 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3004, i32 0, i32 1
  store i64 8, ptr %3006, align 4
  %3007 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3004, align 8
  %3008 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %3009 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3010 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3009, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3007, ptr %3010, align 8
  %3011 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3009, i32 0, i32 1
  store ptr %3008, ptr %3011, align 8
  %3012 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3009, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %3012, align 8
  %3013 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3009, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %3013, align 8
  %3014 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3009, align 8
  %3015 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3016 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3015, i32 0, i32 0
  store ptr @35, ptr %3016, align 8
  %3017 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3015, i32 0, i32 1
  store i64 7, ptr %3017, align 4
  %3018 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3015, align 8
  %3019 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3020 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3021 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3020, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3018, ptr %3021, align 8
  %3022 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3020, i32 0, i32 1
  store ptr %3019, ptr %3022, align 8
  %3023 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3020, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %3023, align 8
  %3024 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3020, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %3024, align 8
  %3025 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3020, align 8
  %3026 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3027 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3026, i32 0, i32 0
  store ptr @36, ptr %3027, align 8
  %3028 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3026, i32 0, i32 1
  store i64 10, ptr %3028, align 4
  %3029 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3026, align 8
  %3030 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3031 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3032 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3031, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3029, ptr %3032, align 8
  %3033 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3031, i32 0, i32 1
  store ptr %3030, ptr %3033, align 8
  %3034 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3031, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %3034, align 8
  %3035 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3031, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %3035, align 8
  %3036 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3031, align 8
  %3037 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3038 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3037, i32 0, i32 0
  store ptr @37, ptr %3038, align 8
  %3039 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3037, i32 0, i32 1
  store i64 13, ptr %3039, align 4
  %3040 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3037, align 8
  %3041 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %3042 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3043 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3042, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3040, ptr %3043, align 8
  %3044 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3042, i32 0, i32 1
  store ptr %3041, ptr %3044, align 8
  %3045 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3042, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %3045, align 8
  %3046 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3042, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %3046, align 8
  %3047 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3042, align 8
  %3048 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3049 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3048, i32 0, i32 0
  store ptr @48, ptr %3049, align 8
  %3050 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3048, i32 0, i32 1
  store i64 13, ptr %3050, align 4
  %3051 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3048, align 8
  %3052 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3053 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3054 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3053, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3051, ptr %3054, align 8
  %3055 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3053, i32 0, i32 1
  store ptr %3052, ptr %3055, align 8
  %3056 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3053, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %3056, align 8
  %3057 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3053, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %3057, align 8
  %3058 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3053, align 8
  %3059 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3060 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3059, i32 0, i32 0
  store ptr @49, ptr %3060, align 8
  %3061 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3059, i32 0, i32 1
  store i64 3, ptr %3061, align 4
  %3062 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3059, align 8
  %3063 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %3064 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3065 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3064, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3062, ptr %3065, align 8
  %3066 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3064, i32 0, i32 1
  store ptr %3063, ptr %3066, align 8
  %3067 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3064, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %3067, align 8
  %3068 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3064, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %3068, align 8
  %3069 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3064, align 8
  %3070 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3071 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3070, i32 0, i32 0
  store ptr @50, ptr %3071, align 8
  %3072 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3070, i32 0, i32 1
  store i64 4, ptr %3072, align 4
  %3073 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3070, align 8
  %3074 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %3075 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3076 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3075, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3073, ptr %3076, align 8
  %3077 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3075, i32 0, i32 1
  store ptr %3074, ptr %3077, align 8
  %3078 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3075, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %3078, align 8
  %3079 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3075, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %3079, align 8
  %3080 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3075, align 8
  %3081 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3082 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3081, i32 0, i32 0
  store ptr @53, ptr %3082, align 8
  %3083 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3081, i32 0, i32 1
  store i64 7, ptr %3083, align 4
  %3084 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3081, align 8
  %3085 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %3086 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3087 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3086, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3084, ptr %3087, align 8
  %3088 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3086, i32 0, i32 1
  store ptr %3085, ptr %3088, align 8
  %3089 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3086, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %3089, align 8
  %3090 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3086, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %3090, align 8
  %3091 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3086, align 8
  %3092 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3093 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3092, i32 0, i32 0
  store ptr @65, ptr %3093, align 8
  %3094 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3092, i32 0, i32 1
  store i64 9, ptr %3094, align 4
  %3095 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3092, align 8
  %3096 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %3097 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3098 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3097, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3095, ptr %3098, align 8
  %3099 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3097, i32 0, i32 1
  store ptr %3096, ptr %3099, align 8
  %3100 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3097, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", ptr %3100, align 8
  %3101 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3097, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", ptr %3101, align 8
  %3102 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3097, align 8
  %3103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3103, i32 0, i32 0
  store ptr @66, ptr %3104, align 8
  %3105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3103, i32 0, i32 1
  store i64 8, ptr %3105, align 4
  %3106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3103, align 8
  %3107 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3108 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3109 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3108, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3106, ptr %3109, align 8
  %3110 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3108, i32 0, i32 1
  store ptr %3107, ptr %3110, align 8
  %3111 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3108, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %3111, align 8
  %3112 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3108, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %3112, align 8
  %3113 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3108, align 8
  %3114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3114, i32 0, i32 0
  store ptr @68, ptr %3115, align 8
  %3116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3114, i32 0, i32 1
  store i64 4, ptr %3116, align 4
  %3117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3114, align 8
  %3118 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %3119 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3119, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3117, ptr %3120, align 8
  %3121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3119, i32 0, i32 1
  store ptr %3118, ptr %3121, align 8
  %3122 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3119, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %3122, align 8
  %3123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3119, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %3123, align 8
  %3124 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3119, align 8
  %3125 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3125, i32 0, i32 0
  store ptr @52, ptr %3126, align 8
  %3127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3125, i32 0, i32 1
  store i64 6, ptr %3127, align 4
  %3128 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3125, align 8
  %3129 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %3130 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3130, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3128, ptr %3131, align 8
  %3132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3130, i32 0, i32 1
  store ptr %3129, ptr %3132, align 8
  %3133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3130, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %3133, align 8
  %3134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3130, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %3134, align 8
  %3135 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3130, align 8
  %3136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3136, i32 0, i32 0
  store ptr @69, ptr %3137, align 8
  %3138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3136, i32 0, i32 1
  store i64 10, ptr %3138, align 4
  %3139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3136, align 8
  %3140 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %3141 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3142 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3141, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3139, ptr %3142, align 8
  %3143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3141, i32 0, i32 1
  store ptr %3140, ptr %3143, align 8
  %3144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3141, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %3144, align 8
  %3145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3141, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %3145, align 8
  %3146 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3141, align 8
  %3147 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3147, i32 0, i32 0
  store ptr @79, ptr %3148, align 8
  %3149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3147, i32 0, i32 1
  store i64 8, ptr %3149, align 4
  %3150 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3147, align 8
  %3151 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %3152 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3153 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3152, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3150, ptr %3153, align 8
  %3154 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3152, i32 0, i32 1
  store ptr %3151, ptr %3154, align 8
  %3155 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3152, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %3155, align 8
  %3156 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3152, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %3156, align 8
  %3157 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3152, align 8
  %3158 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %3159 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %494, ptr %3159, align 8
  %3160 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %505, ptr %3160, align 8
  %3161 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %556, ptr %3161, align 8
  %3162 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %584, ptr %3162, align 8
  %3163 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2992, ptr %3163, align 8
  %3164 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %3003, ptr %3164, align 8
  %3165 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %3014, ptr %3165, align 8
  %3166 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %3025, ptr %3166, align 8
  %3167 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %3036, ptr %3167, align 8
  %3168 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %3047, ptr %3168, align 8
  %3169 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %3058, ptr %3169, align 8
  %3170 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %3069, ptr %3170, align 8
  %3171 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %3080, ptr %3171, align 8
  %3172 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %3091, ptr %3172, align 8
  %3173 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %3102, ptr %3173, align 8
  %3174 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %3113, ptr %3174, align 8
  %3175 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %3124, ptr %3175, align 8
  %3176 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %3135, ptr %3176, align 8
  %3177 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %3146, ptr %3177, align 8
  %3178 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3158, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %3157, ptr %3178, align 8
  %3179 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3179, i32 0, i32 0
  store ptr %3158, ptr %3180, align 8
  %3181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3179, i32 0, i32 1
  store i64 20, ptr %3181, align 4
  %3182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3179, i32 0, i32 2
  store i64 20, ptr %3182, align 4
  %3183 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3179, align 8
  %3184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3184, i32 0, i32 0
  store ptr @3, ptr %3185, align 8
  %3186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3184, i32 0, i32 1
  store i64 35, ptr %3186, align 4
  %3187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3184, align 8
  %3188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3188, i32 0, i32 0
  store ptr @19, ptr %3189, align 8
  %3190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3188, i32 0, i32 1
  store i64 9, ptr %3190, align 4
  %3191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3188, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %405, %"github.com/goplus/llgo/internal/runtime.String" %3187, %"github.com/goplus/llgo/internal/runtime.String" %3191, ptr %483, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3183)
  br label %_llgo_42

_llgo_145:                                        ; preds = %_llgo_42
  %3192 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %521)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3192)
  store ptr %3192, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_146

_llgo_146:                                        ; preds = %_llgo_145, %_llgo_42
  %3193 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %3194 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %3195 = icmp eq ptr %3194, null
  br i1 %3195, label %_llgo_147, label %_llgo_148

_llgo_147:                                        ; preds = %_llgo_146
  %3196 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %3197 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3197, i32 0, i32 0
  store ptr %3196, ptr %3198, align 8
  %3199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3197, i32 0, i32 1
  store i64 0, ptr %3199, align 4
  %3200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3197, i32 0, i32 2
  store i64 0, ptr %3200, align 4
  %3201 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3197, align 8
  %3202 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %3203 = getelementptr ptr, ptr %3202, i64 0
  store ptr %3193, ptr %3203, align 8
  %3204 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3204, i32 0, i32 0
  store ptr %3202, ptr %3205, align 8
  %3206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3204, i32 0, i32 1
  store i64 1, ptr %3206, align 4
  %3207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3204, i32 0, i32 2
  store i64 1, ptr %3207, align 4
  %3208 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3204, align 8
  %3209 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %3201, %"github.com/goplus/llgo/internal/runtime.Slice" %3208, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3209)
  store ptr %3209, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_148

_llgo_148:                                        ; preds = %_llgo_147, %_llgo_146
  %3210 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %3211 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3211, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %400, ptr %3212, align 8
  %3213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3211, i32 0, i32 1
  store ptr %3210, ptr %3213, align 8
  %3214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3211, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %3214, align 8
  %3215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3211, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %3215, align 8
  %3216 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3211, align 8
  %3217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3217, i32 0, i32 0
  store ptr @25, ptr %3218, align 8
  %3219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3217, i32 0, i32 1
  store i64 7, ptr %3219, align 4
  %3220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3217, align 8
  %3221 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %3222 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3223 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3222, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3220, ptr %3223, align 8
  %3224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3222, i32 0, i32 1
  store ptr %3221, ptr %3224, align 8
  %3225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3222, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %3225, align 8
  %3226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3222, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", ptr %3226, align 8
  %3227 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3222, align 8
  %3228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3228, i32 0, i32 0
  store ptr @27, ptr %3229, align 8
  %3230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3228, i32 0, i32 1
  store i64 6, ptr %3230, align 4
  %3231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3228, align 8
  %3232 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %3233 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3233, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3231, ptr %3234, align 8
  %3235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3233, i32 0, i32 1
  store ptr %3232, ptr %3235, align 8
  %3236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3233, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %3236, align 8
  %3237 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3233, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %3237, align 8
  %3238 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3233, align 8
  %3239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3239, i32 0, i32 0
  store ptr @22, ptr %3240, align 8
  %3241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3239, i32 0, i32 1
  store i64 4, ptr %3241, align 4
  %3242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3239, align 8
  %3243 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %3244 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3245 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3244, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3242, ptr %3245, align 8
  %3246 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3244, i32 0, i32 1
  store ptr %3243, ptr %3246, align 8
  %3247 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3244, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %3247, align 8
  %3248 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3244, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %3248, align 8
  %3249 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3244, align 8
  %3250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3250, i32 0, i32 0
  store ptr @28, ptr %3251, align 8
  %3252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3250, i32 0, i32 1
  store i64 15, ptr %3252, align 4
  %3253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3250, align 8
  %3254 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %3255 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3255, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3253, ptr %3256, align 8
  %3257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3255, i32 0, i32 1
  store ptr %3254, ptr %3257, align 8
  %3258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3255, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", ptr %3258, align 8
  %3259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3255, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", ptr %3259, align 8
  %3260 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3255, align 8
  %3261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3261, i32 0, i32 0
  store ptr @33, ptr %3262, align 8
  %3263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3261, i32 0, i32 1
  store i64 10, ptr %3263, align 4
  %3264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3261, align 8
  %3265 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %3266 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3266, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3264, ptr %3267, align 8
  %3268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3266, i32 0, i32 1
  store ptr %3265, ptr %3268, align 8
  %3269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3266, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %3269, align 8
  %3270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3266, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %3270, align 8
  %3271 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3266, align 8
  %3272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3272, i32 0, i32 0
  store ptr @34, ptr %3273, align 8
  %3274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3272, i32 0, i32 1
  store i64 8, ptr %3274, align 4
  %3275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3272, align 8
  %3276 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %3277 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3277, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3275, ptr %3278, align 8
  %3279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3277, i32 0, i32 1
  store ptr %3276, ptr %3279, align 8
  %3280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3277, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %3280, align 8
  %3281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3277, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %3281, align 8
  %3282 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3277, align 8
  %3283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3283, i32 0, i32 0
  store ptr @35, ptr %3284, align 8
  %3285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3283, i32 0, i32 1
  store i64 7, ptr %3285, align 4
  %3286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3283, align 8
  %3287 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3288 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3288, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3286, ptr %3289, align 8
  %3290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3288, i32 0, i32 1
  store ptr %3287, ptr %3290, align 8
  %3291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3288, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %3291, align 8
  %3292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3288, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %3292, align 8
  %3293 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3288, align 8
  %3294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3294, i32 0, i32 0
  store ptr @36, ptr %3295, align 8
  %3296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3294, i32 0, i32 1
  store i64 10, ptr %3296, align 4
  %3297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3294, align 8
  %3298 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3299 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3299, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3297, ptr %3300, align 8
  %3301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3299, i32 0, i32 1
  store ptr %3298, ptr %3301, align 8
  %3302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3299, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %3302, align 8
  %3303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3299, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %3303, align 8
  %3304 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3299, align 8
  %3305 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3305, i32 0, i32 0
  store ptr @37, ptr %3306, align 8
  %3307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3305, i32 0, i32 1
  store i64 13, ptr %3307, align 4
  %3308 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3305, align 8
  %3309 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %3310 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3310, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3308, ptr %3311, align 8
  %3312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3310, i32 0, i32 1
  store ptr %3309, ptr %3312, align 8
  %3313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3310, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %3313, align 8
  %3314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3310, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %3314, align 8
  %3315 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3310, align 8
  %3316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3316, i32 0, i32 0
  store ptr @48, ptr %3317, align 8
  %3318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3316, i32 0, i32 1
  store i64 13, ptr %3318, align 4
  %3319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3316, align 8
  %3320 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3321 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3322 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3321, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3319, ptr %3322, align 8
  %3323 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3321, i32 0, i32 1
  store ptr %3320, ptr %3323, align 8
  %3324 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3321, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %3324, align 8
  %3325 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3321, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %3325, align 8
  %3326 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3321, align 8
  %3327 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3327, i32 0, i32 0
  store ptr @49, ptr %3328, align 8
  %3329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3327, i32 0, i32 1
  store i64 3, ptr %3329, align 4
  %3330 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3327, align 8
  %3331 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %3332 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3332, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3330, ptr %3333, align 8
  %3334 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3332, i32 0, i32 1
  store ptr %3331, ptr %3334, align 8
  %3335 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3332, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %3335, align 8
  %3336 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3332, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", ptr %3336, align 8
  %3337 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3332, align 8
  %3338 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3338, i32 0, i32 0
  store ptr @50, ptr %3339, align 8
  %3340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3338, i32 0, i32 1
  store i64 4, ptr %3340, align 4
  %3341 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3338, align 8
  %3342 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %3343 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3343, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3341, ptr %3344, align 8
  %3345 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3343, i32 0, i32 1
  store ptr %3342, ptr %3345, align 8
  %3346 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3343, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %3346, align 8
  %3347 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3343, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %3347, align 8
  %3348 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3343, align 8
  %3349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3349, i32 0, i32 0
  store ptr @24, ptr %3350, align 8
  %3351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3349, i32 0, i32 1
  store i64 3, ptr %3351, align 4
  %3352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3349, align 8
  %3353 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %3354 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3355 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3354, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3352, ptr %3355, align 8
  %3356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3354, i32 0, i32 1
  store ptr %3353, ptr %3356, align 8
  %3357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3354, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %3357, align 8
  %3358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3354, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %3358, align 8
  %3359 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3354, align 8
  %3360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3360, i32 0, i32 0
  store ptr @53, ptr %3361, align 8
  %3362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3360, i32 0, i32 1
  store i64 7, ptr %3362, align 4
  %3363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3360, align 8
  %3364 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %3365 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3366 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3365, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3363, ptr %3366, align 8
  %3367 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3365, i32 0, i32 1
  store ptr %3364, ptr %3367, align 8
  %3368 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3365, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %3368, align 8
  %3369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3365, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %3369, align 8
  %3370 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3365, align 8
  %3371 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3371, i32 0, i32 0
  store ptr @65, ptr %3372, align 8
  %3373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3371, i32 0, i32 1
  store i64 9, ptr %3373, align 4
  %3374 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3371, align 8
  %3375 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %3376 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3376, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3374, ptr %3377, align 8
  %3378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3376, i32 0, i32 1
  store ptr %3375, ptr %3378, align 8
  %3379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3376, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", ptr %3379, align 8
  %3380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3376, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", ptr %3380, align 8
  %3381 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3376, align 8
  %3382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3382, i32 0, i32 0
  store ptr @66, ptr %3383, align 8
  %3384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3382, i32 0, i32 1
  store i64 8, ptr %3384, align 4
  %3385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3382, align 8
  %3386 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %3387 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3387, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3385, ptr %3388, align 8
  %3389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3387, i32 0, i32 1
  store ptr %3386, ptr %3389, align 8
  %3390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3387, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %3390, align 8
  %3391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3387, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %3391, align 8
  %3392 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3387, align 8
  %3393 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3393, i32 0, i32 0
  store ptr @68, ptr %3394, align 8
  %3395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3393, i32 0, i32 1
  store i64 4, ptr %3395, align 4
  %3396 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3393, align 8
  %3397 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %3398 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3398, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3396, ptr %3399, align 8
  %3400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3398, i32 0, i32 1
  store ptr %3397, ptr %3400, align 8
  %3401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3398, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %3401, align 8
  %3402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3398, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %3402, align 8
  %3403 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3398, align 8
  %3404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3404, i32 0, i32 0
  store ptr @52, ptr %3405, align 8
  %3406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3404, i32 0, i32 1
  store i64 6, ptr %3406, align 4
  %3407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3404, align 8
  %3408 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %3409 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3409, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3407, ptr %3410, align 8
  %3411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3409, i32 0, i32 1
  store ptr %3408, ptr %3411, align 8
  %3412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3409, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %3412, align 8
  %3413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3409, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %3413, align 8
  %3414 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3409, align 8
  %3415 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3415, i32 0, i32 0
  store ptr @69, ptr %3416, align 8
  %3417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3415, i32 0, i32 1
  store i64 10, ptr %3417, align 4
  %3418 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3415, align 8
  %3419 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %3420 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3421 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3420, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3418, ptr %3421, align 8
  %3422 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3420, i32 0, i32 1
  store ptr %3419, ptr %3422, align 8
  %3423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3420, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %3423, align 8
  %3424 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3420, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %3424, align 8
  %3425 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3420, align 8
  %3426 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3426, i32 0, i32 0
  store ptr @79, ptr %3427, align 8
  %3428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3426, i32 0, i32 1
  store i64 8, ptr %3428, align 4
  %3429 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3426, align 8
  %3430 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %3431 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %3432 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3431, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %3429, ptr %3432, align 8
  %3433 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3431, i32 0, i32 1
  store ptr %3430, ptr %3433, align 8
  %3434 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3431, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %3434, align 8
  %3435 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %3431, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %3435, align 8
  %3436 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %3431, align 8
  %3437 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %3438 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %396, ptr %3438, align 8
  %3439 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %3216, ptr %3439, align 8
  %3440 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %3227, ptr %3440, align 8
  %3441 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %3238, ptr %3441, align 8
  %3442 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %3249, ptr %3442, align 8
  %3443 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %3260, ptr %3443, align 8
  %3444 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %3271, ptr %3444, align 8
  %3445 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %3282, ptr %3445, align 8
  %3446 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %3293, ptr %3446, align 8
  %3447 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %3304, ptr %3447, align 8
  %3448 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %3315, ptr %3448, align 8
  %3449 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %3326, ptr %3449, align 8
  %3450 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %3337, ptr %3450, align 8
  %3451 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %3348, ptr %3451, align 8
  %3452 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %3359, ptr %3452, align 8
  %3453 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %3370, ptr %3453, align 8
  %3454 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %3381, ptr %3454, align 8
  %3455 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %3392, ptr %3455, align 8
  %3456 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %3403, ptr %3456, align 8
  %3457 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %3414, ptr %3457, align 8
  %3458 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %3425, ptr %3458, align 8
  %3459 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %3437, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %3436, ptr %3459, align 8
  %3460 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3460, i32 0, i32 0
  store ptr %3437, ptr %3461, align 8
  %3462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3460, i32 0, i32 1
  store i64 22, ptr %3462, align 4
  %3463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3460, i32 0, i32 2
  store i64 22, ptr %3463, align 4
  %3464 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3460, align 8
  %3465 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3465, i32 0, i32 0
  store ptr @3, ptr %3466, align 8
  %3467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3465, i32 0, i32 1
  store i64 35, ptr %3467, align 4
  %3468 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3465, align 8
  %3469 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3469, i32 0, i32 0
  store ptr @21, ptr %3470, align 8
  %3471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3469, i32 0, i32 1
  store i64 4, ptr %3471, align 4
  %3472 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3469, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %20, %"github.com/goplus/llgo/internal/runtime.String" %3468, %"github.com/goplus/llgo/internal/runtime.String" %3472, ptr %355, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %3464)
  br label %_llgo_32

_llgo_149:                                        ; preds = %_llgo_32
  %3473 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %369)
  store ptr %3473, ptr @"[]_llgo_main.T", align 8
  br label %_llgo_150

_llgo_150:                                        ; preds = %_llgo_149, %_llgo_32
  %3474 = load ptr, ptr @"[]_llgo_main.T", align 8
  %3475 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3475, i32 0, i32 0
  store ptr @0, ptr %3476, align 8
  %3477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3475, i32 0, i32 1
  store i64 6, ptr %3477, align 4
  %3478 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3475, align 8
  %3479 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3478, i64 25, i64 48, i64 0, i64 0)
  %3480 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3480, i32 0, i32 0
  store ptr @1, ptr %3481, align 8
  %3482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3480, i32 0, i32 1
  store i64 40, ptr %3482, align 4
  %3483 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3480, align 8
  %3484 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3483, i64 25, i64 80, i64 0, i64 22)
  %3485 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3485, i32 0, i32 0
  store ptr @0, ptr %3486, align 8
  %3487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3485, i32 0, i32 1
  store i64 6, ptr %3487, align 4
  %3488 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3485, align 8
  %3489 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3488, i64 25, i64 48, i64 0, i64 0)
  %3490 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3490, i32 0, i32 0
  store ptr @90, ptr %3491, align 8
  %3492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3490, i32 0, i32 1
  store i64 1, ptr %3492, align 4
  %3493 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3490, align 8
  %3494 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3494, i32 0, i32 0
  store ptr null, ptr %3495, align 8
  %3496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3494, i32 0, i32 1
  store i64 0, ptr %3496, align 4
  %3497 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3494, align 8
  %3498 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3479)
  %3499 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3493, ptr %3498, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %3497, i1 false)
  %3500 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3500, i32 0, i32 0
  store ptr @91, ptr %3501, align 8
  %3502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3500, i32 0, i32 1
  store i64 1, ptr %3502, align 4
  %3503 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3500, align 8
  %3504 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3504, i32 0, i32 0
  store ptr null, ptr %3505, align 8
  %3506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3504, i32 0, i32 1
  store i64 0, ptr %3506, align 4
  %3507 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3504, align 8
  %3508 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3484)
  %3509 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3503, ptr %3508, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %3507, i1 false)
  %3510 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3510, i32 0, i32 0
  store ptr @92, ptr %3511, align 8
  %3512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3510, i32 0, i32 1
  store i64 1, ptr %3512, align 4
  %3513 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3510, align 8
  %3514 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3514, i32 0, i32 0
  store ptr null, ptr %3515, align 8
  %3516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3514, i32 0, i32 1
  store i64 0, ptr %3516, align 4
  %3517 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3514, align 8
  %3518 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %3519 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3513, ptr %3518, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %3517, i1 false)
  %3520 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3520, i32 0, i32 0
  store ptr @93, ptr %3521, align 8
  %3522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3520, i32 0, i32 1
  store i64 1, ptr %3522, align 4
  %3523 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3520, align 8
  %3524 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3524, i32 0, i32 0
  store ptr null, ptr %3525, align 8
  %3526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3524, i32 0, i32 1
  store i64 0, ptr %3526, align 4
  %3527 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3524, align 8
  %3528 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %3489)
  %3529 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3523, ptr %3528, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %3527, i1 false)
  %3530 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3530, i32 0, i32 0
  store ptr @7, ptr %3531, align 8
  %3532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3530, i32 0, i32 1
  store i64 4, ptr %3532, align 4
  %3533 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3530, align 8
  %3534 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %3535 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3534, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %3499, ptr %3535, align 8
  %3536 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3534, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %3509, ptr %3536, align 8
  %3537 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3534, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %3519, ptr %3537, align 8
  %3538 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %3534, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %3529, ptr %3538, align 8
  %3539 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %3540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3539, i32 0, i32 0
  store ptr %3534, ptr %3540, align 8
  %3541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3539, i32 0, i32 1
  store i64 4, ptr %3541, align 4
  %3542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3539, i32 0, i32 2
  store i64 4, ptr %3542, align 4
  %3543 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3539, align 8
  %3544 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %3533, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %3543)
  store ptr %3544, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  %3545 = load ptr, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  br i1 %6, label %_llgo_151, label %_llgo_152

_llgo_151:                                        ; preds = %_llgo_150
  %3546 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3546, i32 0, i32 0
  store ptr @7, ptr %3547, align 8
  %3548 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3546, i32 0, i32 1
  store i64 4, ptr %3548, align 4
  %3549 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3546, align 8
  %3550 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3550, i32 0, i32 0
  store ptr @94, ptr %3551, align 8
  %3552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3550, i32 0, i32 1
  store i64 1, ptr %3552, align 4
  %3553 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3550, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %3549, %"github.com/goplus/llgo/internal/runtime.String" %3553, ptr %3545, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
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

declare i1 @"github.com/goplus/llgo/internal/abi.(*Method).Exported"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Method).Name"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign"(ptr)

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
