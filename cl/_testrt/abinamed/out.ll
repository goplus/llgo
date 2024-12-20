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
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_main.T" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [35 x i8] c"github.com/goplus/llgo/internal/abi", align 1
@3 = private unnamed_addr constant [4 x i8] c"Type", align 1
@_llgo_uintptr = linkonce global ptr null, align 8
@_llgo_uint32 = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.TFlag" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"TFlag", align 1
@_llgo_uint8 = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" = linkonce global ptr null, align 8
@"main.struct$LkOyXt2ZOfLj0dN8XuScd4CdSpCRJ9cWp1KI05fr0Ls" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"f", align 1
@6 = private unnamed_addr constant [4 x i8] c"data", align 1
@_llgo_byte = linkonce global ptr null, align 8
@"*_llgo_byte" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"main.struct$kUO272Qk09C5NvUyOEWKmjUAoxxi3RhHpgqoeM6e1Tk" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [5 x i8] c"Size_", align 1
@8 = private unnamed_addr constant [8 x i8] c"PtrBytes", align 1
@9 = private unnamed_addr constant [4 x i8] c"Hash", align 1
@10 = private unnamed_addr constant [6 x i8] c"Align_", align 1
@11 = private unnamed_addr constant [11 x i8] c"FieldAlign_", align 1
@12 = private unnamed_addr constant [5 x i8] c"Kind_", align 1
@13 = private unnamed_addr constant [5 x i8] c"Equal", align 1
@14 = private unnamed_addr constant [6 x i8] c"GCData", align 1
@15 = private unnamed_addr constant [4 x i8] c"Str_", align 1
@16 = private unnamed_addr constant [10 x i8] c"PtrToThis_", align 1
@17 = private unnamed_addr constant [5 x i8] c"Align", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [9 x i8] c"ArrayType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [4 x i8] c"Elem", align 1
@20 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@21 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [7 x i8] c"ChanDir", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.ChanDir" = linkonce global ptr null, align 8
@"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo" = linkonce global ptr null, align 8
@24 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"[]*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [2 x i8] c"In", align 1
@28 = private unnamed_addr constant [3 x i8] c"Out", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@32 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Imethod" = linkonce global ptr null, align 8
@33 = private unnamed_addr constant [7 x i8] c"Imethod", align 1
@"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw" = linkonce global ptr null, align 8
@34 = private unnamed_addr constant [5 x i8] c"Name_", align 1
@35 = private unnamed_addr constant [4 x i8] c"Typ_", align 1
@36 = private unnamed_addr constant [8 x i8] c"Exported", align 1
@37 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@38 = private unnamed_addr constant [7 x i8] c"PkgPath", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod" = linkonce global ptr null, align 8
@"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4" = linkonce global ptr null, align 8
@39 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@40 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
@41 = private unnamed_addr constant [9 x i8] c"IsClosure", align 1
@42 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@43 = private unnamed_addr constant [3 x i8] c"Key", align 1
@44 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@_llgo_uint = linkonce global ptr null, align 8
@45 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@46 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" = linkonce global ptr null, align 8
@"main.struct$2gmPOZCguOeDHn3rO8wA0kSBY0yVjg54EviMsNeV45o" = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@"main.struct$jgHT3zlvUCWdGAH-l4Nn1MOOw31LQoSt74SxHNLR50Q" = linkonce global ptr null, align 8
@47 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@48 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@49 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@50 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@51 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@52 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@53 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@54 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@55 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@56 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@57 = private unnamed_addr constant [9 x i8] c"NumMethod", align 1
@58 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@59 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@60 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@61 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@62 = private unnamed_addr constant [11 x i8] c"StructField", align 1
@"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig" = linkonce global ptr null, align 8
@63 = private unnamed_addr constant [3 x i8] c"Typ", align 1
@64 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@65 = private unnamed_addr constant [4 x i8] c"Tag_", align 1
@66 = private unnamed_addr constant [9 x i8] c"Embedded_", align 1
@67 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@"[]_llgo_github.com/goplus/llgo/internal/abi.StructField" = linkonce global ptr null, align 8
@"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0" = linkonce global ptr null, align 8
@68 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@69 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@70 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
@71 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@72 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@73 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
@74 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0" = linkonce global ptr null, align 8
@75 = private unnamed_addr constant [5 x i8] c"Mtyp_", align 1
@76 = private unnamed_addr constant [4 x i8] c"Ifn_", align 1
@77 = private unnamed_addr constant [4 x i8] c"Tfn_", align 1
@"[]_llgo_main.T" = linkonce global ptr null, align 8
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = linkonce global ptr null, align 8
@78 = private unnamed_addr constant [1 x i8] c"p", align 1
@79 = private unnamed_addr constant [1 x i8] c"t", align 1
@80 = private unnamed_addr constant [1 x i8] c"n", align 1
@81 = private unnamed_addr constant [1 x i8] c"a", align 1
@82 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@83 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@84 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@85 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@86 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@87 = private unnamed_addr constant [13 x i8] c"error field 3", align 1

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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @82, i64 13 }, ptr %43, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @83, i64 18 }, ptr %53, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @84, i64 13 }, ptr %75, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @85, i64 18 }, ptr %85, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @86, i64 13 }, ptr %114, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @87, i64 13 }, ptr %135, align 8
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1 = load ptr, ptr @_llgo_main.T, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_main.T, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
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
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
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
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
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
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %20, ptr %26, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
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
  %38 = load ptr, ptr @_llgo_bool, align 8
  %39 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %42 = getelementptr ptr, ptr %41, i64 0
  store ptr %36, ptr %42, align 8
  %43 = getelementptr ptr, ptr %41, i64 1
  store ptr %37, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %41, 0
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %44, i64 2, 1
  %46 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %45, i64 2, 2
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %48 = getelementptr ptr, ptr %47, i64 0
  store ptr %38, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %47, 0
  %50 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %49, i64 1, 1
  %51 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %50, i64 1, 2
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %46, %"github.com/goplus/llgo/internal/runtime.Slice" %51, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %52)
  store ptr %52, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %53 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %54 = load ptr, ptr @_llgo_Pointer, align 8
  %55 = load ptr, ptr @_llgo_Pointer, align 8
  %56 = load ptr, ptr @_llgo_bool, align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %58 = getelementptr ptr, ptr %57, i64 0
  store ptr %54, ptr %58, align 8
  %59 = getelementptr ptr, ptr %57, i64 1
  store ptr %55, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %57, 0
  %61 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %60, i64 2, 1
  %62 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %61, i64 2, 2
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %64 = getelementptr ptr, ptr %63, i64 0
  store ptr %56, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %65, i64 1, 1
  %67 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %66, i64 1, 2
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %62, %"github.com/goplus/llgo/internal/runtime.Slice" %67, i1 false)
  %69 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %68, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %71 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %70, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %73 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %72, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %69, ptr %73, align 8
  %74 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %72, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %71, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %72, 0
  %76 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %75, i64 2, 1
  %77 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %76, i64 2, 2
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %77)
  store ptr %78, ptr @"main.struct$LkOyXt2ZOfLj0dN8XuScd4CdSpCRJ9cWp1KI05fr0Ls", align 8
  %79 = load ptr, ptr @"main.struct$LkOyXt2ZOfLj0dN8XuScd4CdSpCRJ9cWp1KI05fr0Ls", align 8
  %80 = load ptr, ptr @_llgo_byte, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %82, ptr @_llgo_byte, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %83 = load ptr, ptr @_llgo_byte, align 8
  %84 = load ptr, ptr @"*_llgo_byte", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %86)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %87)
  store ptr %87, ptr @"*_llgo_byte", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %88 = load ptr, ptr @"*_llgo_byte", align 8
  %89 = load ptr, ptr @_llgo_string, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %91, ptr @_llgo_string, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %92 = load ptr, ptr @_llgo_string, align 8
  %93 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %95 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %94)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %97)
  store ptr %97, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %98 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
  %100 = load ptr, ptr @_llgo_Pointer, align 8
  %101 = load ptr, ptr @_llgo_Pointer, align 8
  %102 = load ptr, ptr @_llgo_bool, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %105 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 5 }, ptr %104, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %107 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 8 }, ptr %106, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %109 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr %108, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %110 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, ptr %99, i64 20, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %112 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 6 }, ptr %111, i64 21, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %113 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %114 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 11 }, ptr %113, i64 22, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %115 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %116 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 5 }, ptr %115, i64 23, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %118 = getelementptr ptr, ptr %117, i64 0
  store ptr %100, ptr %118, align 8
  %119 = getelementptr ptr, ptr %117, i64 1
  store ptr %101, ptr %119, align 8
  %120 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %117, 0
  %121 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %120, i64 2, 1
  %122 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %121, i64 2, 2
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %124 = getelementptr ptr, ptr %123, i64 0
  store ptr %102, ptr %124, align 8
  %125 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %123, 0
  %126 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %125, i64 1, 1
  %127 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %126, i64 1, 2
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %122, %"github.com/goplus/llgo/internal/runtime.Slice" %127, i1 false)
  %129 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %128, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %131 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %130, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %133 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %132, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %129, ptr %133, align 8
  %134 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %132, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %131, ptr %134, align 8
  %135 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %132, 0
  %136 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %135, i64 2, 1
  %137 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %136, i64 2, 2
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %137)
  %139 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 5 }, ptr %138, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %140)
  %142 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @14, i64 6 }, ptr %141, i64 40, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %144 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @15, i64 4 }, ptr %143, i64 48, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %103)
  %146 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @16, i64 10 }, ptr %145, i64 64, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 616)
  %148 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %105, ptr %148, align 8
  %149 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %107, ptr %149, align 8
  %150 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %109, ptr %150, align 8
  %151 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %110, ptr %151, align 8
  %152 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %112, ptr %152, align 8
  %153 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %114, ptr %153, align 8
  %154 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %116, ptr %154, align 8
  %155 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %139, ptr %155, align 8
  %156 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %142, ptr %156, align 8
  %157 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 9
  store %"github.com/goplus/llgo/internal/abi.StructField" %144, ptr %157, align 8
  %158 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 10
  store %"github.com/goplus/llgo/internal/abi.StructField" %146, ptr %158, align 8
  %159 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %147, 0
  %160 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %159, i64 11, 1
  %161 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %160, i64 11, 2
  %162 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 72, %"github.com/goplus/llgo/internal/runtime.Slice" %161)
  store ptr %162, ptr @"main.struct$kUO272Qk09C5NvUyOEWKmjUAoxxi3RhHpgqoeM6e1Tk", align 8
  %163 = load ptr, ptr @"main.struct$kUO272Qk09C5NvUyOEWKmjUAoxxi3RhHpgqoeM6e1Tk", align 8
  br i1 %11, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %164 = load ptr, ptr @_llgo_int, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %_llgo_33, label %_llgo_34

_llgo_32:                                         ; preds = %_llgo_42, %_llgo_30
  %166 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %167 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %169 = load ptr, ptr @"[]_llgo_main.T", align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %_llgo_149, label %_llgo_150

_llgo_33:                                         ; preds = %_llgo_31
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %171, ptr @_llgo_int, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_31
  %172 = load ptr, ptr @_llgo_int, align 8
  %173 = load ptr, ptr @_llgo_int, align 8
  %174 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %177 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %176, 0
  %178 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %177, i64 0, 1
  %179 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %178, i64 0, 2
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %181 = getelementptr ptr, ptr %180, i64 0
  store ptr %173, ptr %181, align 8
  %182 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %180, 0
  %183 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %182, i64 1, 1
  %184 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %183, i64 1, 2
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %179, %"github.com/goplus/llgo/internal/runtime.Slice" %184, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %185)
  store ptr %185, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %186 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %187 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %186, 1
  %188 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %187, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", 2
  %189 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %188, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", 3
  %190 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %191 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %190, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %193 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %194 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %196 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %198 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %200 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, ptr %195, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %196)
  %202 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 4 }, ptr %201, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %203 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %197)
  %204 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @20, i64 5 }, ptr %203, i64 80, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %205 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %206 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 3 }, ptr %205, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %208 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %207, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %200, ptr %208, align 8
  %209 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %207, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %202, ptr %209, align 8
  %210 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %207, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %204, ptr %210, align 8
  %211 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %207, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %206, ptr %211, align 8
  %212 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %207, 0
  %213 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %212, i64 4, 1
  %214 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %213, i64 4, 2
  %215 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 96, %"github.com/goplus/llgo/internal/runtime.Slice" %214)
  store ptr %215, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %216 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br i1 %192, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %217 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %218 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %217, 1
  %219 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %218, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", 2
  %220 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %219, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", 3
  %221 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %222 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %_llgo_43, label %_llgo_44

_llgo_42:                                         ; preds = %_llgo_148, %_llgo_40
  %224 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %225 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %226 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %227 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %226, 1
  %228 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %227, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", 2
  %229 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %228, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", 3
  %230 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %231 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %230, 1
  %232 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %231, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", 2
  %233 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %232, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir", 3
  %234 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %235 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %236 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %235, 1
  %237 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %236, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", 2
  %238 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %237, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", 3
  %239 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %240 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %241 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %240, 1
  %242 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %241, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", 2
  %243 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %242, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", 3
  %244 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %245 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %246 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %245, 1
  %247 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %246, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", 2
  %248 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %247, ptr @"github.com/goplus/llgo/internal/abi.(*Type).ExportedMethods", 3
  %249 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %250 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %249, 1
  %251 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %250, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", 2
  %252 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %251, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", 3
  %253 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %254 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %255 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %254, 1
  %256 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %255, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", 2
  %257 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %256, ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", 3
  %258 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %259 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %258, 1
  %260 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %259, ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", 2
  %261 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %260, ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", 3
  %262 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %263 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %262, 1
  %264 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %263, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", 2
  %265 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %264, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", 3
  %266 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %267 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %268 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %267, 1
  %269 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %268, ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", 2
  %270 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %269, ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", 3
  %271 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %272 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %271, 1
  %273 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %272, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsClosure", 2
  %274 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %273, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsClosure", 3
  %275 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %276 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %275, 1
  %277 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %276, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", 2
  %278 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %277, ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", 3
  %279 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %280 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %281 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %280, 1
  %282 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %281, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", 2
  %283 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %282, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Key", 3
  %284 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %285 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %284, 1
  %286 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %285, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", 2
  %287 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %286, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", 3
  %288 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %289 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %288, 1
  %290 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %289, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", 2
  %291 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %290, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", 3
  %292 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %293 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %294 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %293, 1
  %295 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %294, ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", 2
  %296 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %295, ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", 3
  %297 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %298 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %297, 1
  %299 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %298, ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", 2
  %300 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %299, ptr @"github.com/goplus/llgo/internal/abi.(*Type).NumMethod", 3
  %301 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %302 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %301, 1
  %303 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %302, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", 2
  %304 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %303, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", 3
  %305 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %306 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %305, 1
  %307 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %306, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", 2
  %308 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %307, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", 3
  %309 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %310 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %309, 1
  %311 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %310, ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", 2
  %312 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %311, ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", 3
  %313 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %314 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %315 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %314, 1
  %316 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %315, ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", 2
  %317 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %316, ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", 3
  %318 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %319 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %318, 1
  %320 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %319, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", 2
  %321 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %320, ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", 3
  %322 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %323 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %189, ptr %323, align 8
  %324 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %229, ptr %324, align 8
  %325 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %233, ptr %325, align 8
  %326 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %238, ptr %326, align 8
  %327 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %243, ptr %327, align 8
  %328 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %248, ptr %328, align 8
  %329 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %252, ptr %329, align 8
  %330 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %257, ptr %330, align 8
  %331 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %261, ptr %331, align 8
  %332 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %265, ptr %332, align 8
  %333 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %270, ptr %333, align 8
  %334 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %274, ptr %334, align 8
  %335 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %278, ptr %335, align 8
  %336 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %283, ptr %336, align 8
  %337 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %287, ptr %337, align 8
  %338 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %291, ptr %338, align 8
  %339 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %296, ptr %339, align 8
  %340 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %300, ptr %340, align 8
  %341 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %304, ptr %341, align 8
  %342 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %308, ptr %342, align 8
  %343 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %312, ptr %343, align 8
  %344 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %317, ptr %344, align 8
  %345 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %321, ptr %345, align 8
  %346 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %322, 0
  %347 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %346, i64 23, 1
  %348 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %347, i64 23, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %9, ptr %163, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %348)
  br label %_llgo_32

_llgo_43:                                         ; preds = %_llgo_41
  %349 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %221)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %349)
  store ptr %349, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_41
  %350 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %351 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %352 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %354 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %355 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %354, 0
  %356 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %355, i64 0, 1
  %357 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %356, i64 0, 2
  %358 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %359 = getelementptr ptr, ptr %358, i64 0
  store ptr %351, ptr %359, align 8
  %360 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %358, 0
  %361 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %360, i64 1, 1
  %362 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %361, i64 1, 2
  %363 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %357, %"github.com/goplus/llgo/internal/runtime.Slice" %362, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %363)
  store ptr %363, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %364 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %365 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %364, 1
  %366 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %365, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", 2
  %367 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %366, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", 3
  %368 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  %369 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %370 = icmp eq ptr %369, null
  br i1 %370, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  store ptr %368, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %371 = load ptr, ptr @_llgo_int, align 8
  br i1 %370, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %368, ptr %371, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %372 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %373 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ChanDir", align 8
  %374 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %376 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %377 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %376, 0
  %378 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %377, i64 0, 1
  %379 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %378, i64 0, 2
  %380 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %381 = getelementptr ptr, ptr %380, i64 0
  store ptr %373, ptr %381, align 8
  %382 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %380, 0
  %383 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %382, i64 1, 1
  %384 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %383, i64 1, 2
  %385 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %379, %"github.com/goplus/llgo/internal/runtime.Slice" %384, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %385)
  store ptr %385, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %386 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %387 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %386, 1
  %388 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %387, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", 2
  %389 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %388, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir", 3
  %390 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %391 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %392 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %393 = icmp eq ptr %392, null
  br i1 %393, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %394 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %395 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %394, 0
  %396 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %395, i64 0, 1
  %397 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %396, i64 0, 2
  %398 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %399 = getelementptr ptr, ptr %398, i64 0
  store ptr %391, ptr %399, align 8
  %400 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %398, 0
  %401 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %400, i64 1, 1
  %402 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %401, i64 1, 2
  %403 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %397, %"github.com/goplus/llgo/internal/runtime.Slice" %402, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %403)
  store ptr %403, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %404 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %405 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %404, 1
  %406 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %405, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", 2
  %407 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %406, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", 3
  %408 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %409 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %410 = icmp eq ptr %409, null
  br i1 %410, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  store ptr %408, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %411 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %412 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %413 = icmp eq ptr %412, null
  br i1 %413, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  store ptr %411, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %414 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %415 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %416 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %417 = icmp eq ptr %416, null
  br i1 %417, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %418 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %415)
  %419 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %418)
  store ptr %419, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %420 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %421 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %422 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %423 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %424 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %425 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %426 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %427 = icmp eq ptr %426, null
  br i1 %427, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %428 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, ptr %423, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %429 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %424)
  %430 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %429)
  %431 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 2 }, ptr %430, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %432 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %425)
  %433 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %432)
  %434 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 3 }, ptr %433, i64 96, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %435 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %436 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %435, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %428, ptr %436, align 8
  %437 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %435, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %431, ptr %437, align 8
  %438 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %435, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %434, ptr %438, align 8
  %439 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %435, 0
  %440 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %439, i64 3, 1
  %441 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %440, i64 3, 2
  %442 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %441)
  store ptr %442, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %443 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %413, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %444 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %445 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %444, 1
  %446 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %445, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", 2
  %447 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %446, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", 3
  %448 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %449 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %450 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %449, 1
  %451 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %450, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", 2
  %452 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %451, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", 3
  %453 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %454 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %453, 1
  %455 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %454, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", 2
  %456 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %455, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", 3
  %457 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %458 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %459 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %458, 1
  %460 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %459, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", 2
  %461 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %460, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", 3
  %462 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %463 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %464 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %463, 1
  %465 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %464, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", 2
  %466 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %465, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", 3
  %467 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %468 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %469 = icmp eq ptr %468, null
  br i1 %469, label %_llgo_65, label %_llgo_66

_llgo_64:                                         ; preds = %_llgo_90, %_llgo_62
  %470 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %471 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %472 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %473 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  %474 = icmp eq ptr %473, null
  br i1 %474, label %_llgo_145, label %_llgo_146

_llgo_65:                                         ; preds = %_llgo_63
  %475 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %467)
  store ptr %475, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_63
  %476 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %477 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %478 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %479 = icmp eq ptr %478, null
  br i1 %479, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %480 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %481 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %480, 0
  %482 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %481, i64 0, 1
  %483 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %482, i64 0, 2
  %484 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %485 = getelementptr ptr, ptr %484, i64 0
  store ptr %477, ptr %485, align 8
  %486 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %484, 0
  %487 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %486, i64 1, 1
  %488 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %487, i64 1, 2
  %489 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %483, %"github.com/goplus/llgo/internal/runtime.Slice" %488, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %489)
  store ptr %489, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %490 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %491 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %490, 1
  %492 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %491, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", 2
  %493 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %492, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ExportedMethods", 3
  %494 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %495 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %494, 1
  %496 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %495, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", 2
  %497 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %496, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", 3
  %498 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %499 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %500 = icmp eq ptr %499, null
  br i1 %500, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %501 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %498)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %501)
  store ptr %501, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %502 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %503 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %504 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %505 = icmp eq ptr %504, null
  br i1 %505, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  %506 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %507 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %506, 0
  %508 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %507, i64 0, 1
  %509 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %508, i64 0, 2
  %510 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %511 = getelementptr ptr, ptr %510, i64 0
  store ptr %503, ptr %511, align 8
  %512 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %510, 0
  %513 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %512, i64 1, 1
  %514 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %513, i64 1, 2
  %515 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %509, %"github.com/goplus/llgo/internal/runtime.Slice" %514, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %515)
  store ptr %515, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %516 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %517 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %516, 1
  %518 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %517, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", 2
  %519 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %518, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", 3
  %520 = load ptr, ptr @_llgo_bool, align 8
  %521 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %522 = icmp eq ptr %521, null
  br i1 %522, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %523 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %524 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %523, 0
  %525 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %524, i64 0, 1
  %526 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %525, i64 0, 2
  %527 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %528 = getelementptr ptr, ptr %527, i64 0
  store ptr %520, ptr %528, align 8
  %529 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %527, 0
  %530 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %529, i64 1, 1
  %531 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %530, i64 1, 2
  %532 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %526, %"github.com/goplus/llgo/internal/runtime.Slice" %531, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %532)
  store ptr %532, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %533 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %534 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %533, 1
  %535 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %534, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", 2
  %536 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %535, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", 3
  %537 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %538 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %537, 1
  %539 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %538, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", 2
  %540 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %539, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", 3
  %541 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %542 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %543 = icmp eq ptr %542, null
  br i1 %543, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  store ptr %541, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %544 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %545 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %546 = icmp eq ptr %545, null
  br i1 %546, label %_llgo_77, label %_llgo_78

_llgo_77:                                         ; preds = %_llgo_76
  store ptr %544, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_76
  %547 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %548 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %549 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  %550 = icmp eq ptr %549, null
  br i1 %550, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %551 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %552 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 5 }, ptr %551, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %553 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %548)
  %554 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 4 }, ptr %553, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %555 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %556 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %555, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %552, ptr %556, align 8
  %557 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %555, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %554, ptr %557, align 8
  %558 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %555, 0
  %559 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %558, i64 2, 1
  %560 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %559, i64 2, 2
  %561 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %560)
  store ptr %561, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %562 = load ptr, ptr @"_llgo_struct$-SVMNS9vOT5F9q4yodRiL9MFhdPf0tfZ2Cx2o7KjSDw", align 8
  br i1 %546, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %563 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %564 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %563, 1
  %565 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %564, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", 2
  %566 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %565, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Exported", 3
  %567 = load ptr, ptr @_llgo_string, align 8
  %568 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %569 = icmp eq ptr %568, null
  br i1 %569, label %_llgo_83, label %_llgo_84

_llgo_82:                                         ; preds = %_llgo_84, %_llgo_80
  %570 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %571 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %572 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %573 = icmp eq ptr %572, null
  br i1 %573, label %_llgo_85, label %_llgo_86

_llgo_83:                                         ; preds = %_llgo_81
  %574 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %575 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %574, 0
  %576 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %575, i64 0, 1
  %577 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %576, i64 0, 2
  %578 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %579 = getelementptr ptr, ptr %578, i64 0
  store ptr %567, ptr %579, align 8
  %580 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %578, 0
  %581 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %580, i64 1, 1
  %582 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %581, i64 1, 2
  %583 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %577, %"github.com/goplus/llgo/internal/runtime.Slice" %582, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %583)
  store ptr %583, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_81
  %584 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %585 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %584, 1
  %586 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %585, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", 2
  %587 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %586, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).Name", 3
  %588 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %589 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %588, 1
  %590 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %589, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", 2
  %591 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %590, ptr @"github.com/goplus/llgo/internal/abi.(*Imethod).PkgPath", 3
  %592 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %593 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %592, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %566, ptr %593, align 8
  %594 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %592, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %587, ptr %594, align 8
  %595 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %592, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %591, ptr %595, align 8
  %596 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %592, 0
  %597 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %596, i64 3, 1
  %598 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %597, i64 3, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %544, ptr %562, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %598)
  br label %_llgo_82

_llgo_85:                                         ; preds = %_llgo_82
  %599 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %571)
  store ptr %599, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_82
  %600 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Imethod", align 8
  %601 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %602 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %603 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %604 = icmp eq ptr %603, null
  br i1 %604, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %605 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, ptr %601, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %606 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %607 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @39, i64 8 }, ptr %606, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %608 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %602)
  %609 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @40, i64 7 }, ptr %608, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %610 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %611 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %610, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %605, ptr %611, align 8
  %612 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %610, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %607, ptr %612, align 8
  %613 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %610, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %609, ptr %613, align 8
  %614 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %610, 0
  %615 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %614, i64 3, 1
  %616 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %615, i64 3, 2
  %617 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %616)
  store ptr %617, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %618 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %543, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %619 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %620 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %619, 1
  %621 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %620, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", 2
  %622 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %621, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", 3
  %623 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %624 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %625 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %624, 1
  %626 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %625, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", 2
  %627 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %626, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", 3
  %628 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %629 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %628, 1
  %630 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %629, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", 2
  %631 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %630, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", 3
  %632 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %633 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %634 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %633, 1
  %635 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %634, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", 2
  %636 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %635, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", 3
  %637 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %638 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %639 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %638, 1
  %640 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %639, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", 2
  %641 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %640, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", 3
  %642 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %643 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %644 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %643, 1
  %645 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %644, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", 2
  %646 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %645, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ExportedMethods", 3
  %647 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %648 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %647, 1
  %649 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %648, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", 2
  %650 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %649, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", 3
  %651 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %652 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %653 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %652, 1
  %654 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %653, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", 2
  %655 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %654, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", 3
  %656 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %657 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %656, 1
  %658 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %657, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", 2
  %659 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %658, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", 3
  %660 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %661 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %660, 1
  %662 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %661, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", 2
  %663 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %662, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", 3
  %664 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %665 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %666 = icmp eq ptr %665, null
  br i1 %666, label %_llgo_91, label %_llgo_92

_llgo_90:                                         ; preds = %_llgo_110, %_llgo_88
  %667 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %668 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %669 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %670 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %669, 1
  %671 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %670, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", 2
  %672 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %671, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", 3
  %673 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %674 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %673, 1
  %675 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %674, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsClosure", 2
  %676 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %675, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsClosure", 3
  %677 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %678 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %677, 1
  %679 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %678, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", 2
  %680 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %679, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", 3
  %681 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %682 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %683 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %682, 1
  %684 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %683, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", 2
  %685 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %684, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", 3
  %686 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %687 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %686, 1
  %688 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %687, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", 2
  %689 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %688, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", 3
  %690 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %691 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %690, 1
  %692 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %691, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", 2
  %693 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %692, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", 3
  %694 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %695 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %696 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %695, 1
  %697 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %696, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", 2
  %698 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %697, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", 3
  %699 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %700 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %699, 1
  %701 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %700, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", 2
  %702 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %701, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).NumMethod", 3
  %703 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %704 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %703, 1
  %705 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %704, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", 2
  %706 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %705, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", 3
  %707 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %708 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %707, 1
  %709 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %708, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", 2
  %710 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %709, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", 3
  %711 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %712 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %711, 1
  %713 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %712, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", 2
  %714 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %713, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", 3
  %715 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %716 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %717 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %716, 1
  %718 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %717, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", 2
  %719 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %718, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", 3
  %720 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %721 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %720, 1
  %722 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %721, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", 2
  %723 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %722, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", 3
  %724 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %725 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @74, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %724, 1
  %726 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %725, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", 2
  %727 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %726, ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", 3
  %728 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 960)
  %729 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %447, ptr %729, align 8
  %730 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %452, ptr %730, align 8
  %731 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %456, ptr %731, align 8
  %732 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %461, ptr %732, align 8
  %733 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %466, ptr %733, align 8
  %734 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %493, ptr %734, align 8
  %735 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %497, ptr %735, align 8
  %736 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %519, ptr %736, align 8
  %737 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %536, ptr %737, align 8
  %738 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %540, ptr %738, align 8
  %739 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %672, ptr %739, align 8
  %740 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %676, ptr %740, align 8
  %741 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %680, ptr %741, align 8
  %742 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %685, ptr %742, align 8
  %743 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %689, ptr %743, align 8
  %744 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %693, ptr %744, align 8
  %745 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %698, ptr %745, align 8
  %746 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %702, ptr %746, align 8
  %747 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %706, ptr %747, align 8
  %748 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %710, ptr %748, align 8
  %749 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %714, ptr %749, align 8
  %750 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %719, ptr %750, align 8
  %751 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %723, ptr %751, align 8
  %752 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i64 23
  store %"github.com/goplus/llgo/internal/abi.Method" %727, ptr %752, align 8
  %753 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %728, 0
  %754 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %753, i64 24, 1
  %755 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %754, i64 24, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %411, ptr %443, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %755)
  br label %_llgo_64

_llgo_91:                                         ; preds = %_llgo_89
  %756 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %664)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %756)
  store ptr %756, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_89
  %757 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %758 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %759 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %760 = icmp eq ptr %759, null
  br i1 %760, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %761 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %762 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %761, 0
  %763 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %762, i64 0, 1
  %764 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %763, i64 0, 2
  %765 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %766 = getelementptr ptr, ptr %765, i64 0
  store ptr %758, ptr %766, align 8
  %767 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %765, 0
  %768 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %767, i64 1, 1
  %769 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %768, i64 1, 2
  %770 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %764, %"github.com/goplus/llgo/internal/runtime.Slice" %769, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %770)
  store ptr %770, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %771 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %772 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %771, 1
  %773 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %772, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", 2
  %774 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %773, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", 3
  %775 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %776 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %775, 1
  %777 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %776, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsClosure", 2
  %778 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %777, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsClosure", 3
  %779 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %780 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %779, 1
  %781 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %780, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", 2
  %782 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %781, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", 3
  %783 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %784 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %785 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %784, 1
  %786 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %785, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", 2
  %787 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %786, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", 3
  %788 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %789 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %790 = icmp eq ptr %789, null
  br i1 %790, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  store ptr %788, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %791 = load ptr, ptr @_llgo_uint, align 8
  %792 = icmp eq ptr %791, null
  br i1 %792, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %793 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %793, ptr @_llgo_uint, align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %794 = load ptr, ptr @_llgo_uint, align 8
  br i1 %790, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %795 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %796 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %795, 1
  %797 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %796, ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", 2
  %798 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %797, ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", 3
  %799 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %795, 1
  %800 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %799, ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", 2
  %801 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %800, ptr @"github.com/goplus/llgo/internal/abi.Kind.String", 3
  %802 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %803 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %802, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %801, ptr %803, align 8
  %804 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %802, 0
  %805 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %804, i64 1, 1
  %806 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %805, i64 1, 2
  %807 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %808 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %807, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %798, ptr %808, align 8
  %809 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %807, 0
  %810 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %809, i64 1, 1
  %811 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %810, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %788, ptr %794, %"github.com/goplus/llgo/internal/runtime.Slice" %806, %"github.com/goplus/llgo/internal/runtime.Slice" %811)
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %812 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %813 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %814 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %815 = icmp eq ptr %814, null
  br i1 %815, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %816 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %817 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %816, 0
  %818 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %817, i64 0, 1
  %819 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %818, i64 0, 2
  %820 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %821 = getelementptr ptr, ptr %820, i64 0
  store ptr %813, ptr %821, align 8
  %822 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %820, 0
  %823 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %822, i64 1, 1
  %824 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %823, i64 1, 2
  %825 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %819, %"github.com/goplus/llgo/internal/runtime.Slice" %824, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %825)
  store ptr %825, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %826 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %827 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %826, 1
  %828 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %827, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", 2
  %829 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %828, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", 3
  %830 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %831 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %830, 1
  %832 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %831, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", 2
  %833 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %832, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", 3
  %834 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %835 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %836 = icmp eq ptr %835, null
  br i1 %836, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  store ptr %834, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %837 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %838 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %839 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %840 = load ptr, ptr @_llgo_Pointer, align 8
  %841 = load ptr, ptr @_llgo_uintptr, align 8
  %842 = load ptr, ptr @_llgo_uintptr, align 8
  %843 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %844 = icmp eq ptr %843, null
  br i1 %844, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %845 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %846 = getelementptr ptr, ptr %845, i64 0
  store ptr %840, ptr %846, align 8
  %847 = getelementptr ptr, ptr %845, i64 1
  store ptr %841, ptr %847, align 8
  %848 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %845, 0
  %849 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %848, i64 2, 1
  %850 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %849, i64 2, 2
  %851 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %852 = getelementptr ptr, ptr %851, i64 0
  store ptr %842, ptr %852, align 8
  %853 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %851, 0
  %854 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %853, i64 1, 1
  %855 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %854, i64 1, 2
  %856 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %850, %"github.com/goplus/llgo/internal/runtime.Slice" %855, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %856)
  store ptr %856, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %857 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %858 = load ptr, ptr @_llgo_Pointer, align 8
  %859 = load ptr, ptr @_llgo_uintptr, align 8
  %860 = load ptr, ptr @_llgo_uintptr, align 8
  %861 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %862 = getelementptr ptr, ptr %861, i64 0
  store ptr %858, ptr %862, align 8
  %863 = getelementptr ptr, ptr %861, i64 1
  store ptr %859, ptr %863, align 8
  %864 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %861, 0
  %865 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %864, i64 2, 1
  %866 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %865, i64 2, 2
  %867 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %868 = getelementptr ptr, ptr %867, i64 0
  store ptr %860, ptr %868, align 8
  %869 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %867, 0
  %870 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %869, i64 1, 1
  %871 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %870, i64 1, 2
  %872 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %866, %"github.com/goplus/llgo/internal/runtime.Slice" %871, i1 false)
  %873 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %872, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %874 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %875 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %874, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %876 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %877 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %876, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %873, ptr %877, align 8
  %878 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %876, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %875, ptr %878, align 8
  %879 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %876, 0
  %880 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %879, i64 2, 1
  %881 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %880, i64 2, 2
  %882 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %881)
  store ptr %882, ptr @"main.struct$2gmPOZCguOeDHn3rO8wA0kSBY0yVjg54EviMsNeV45o", align 8
  %883 = load ptr, ptr @"main.struct$2gmPOZCguOeDHn3rO8wA0kSBY0yVjg54EviMsNeV45o", align 8
  %884 = load ptr, ptr @_llgo_uint16, align 8
  %885 = icmp eq ptr %884, null
  br i1 %885, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  %886 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  store ptr %886, ptr @_llgo_uint16, align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %887 = load ptr, ptr @_llgo_uint16, align 8
  %888 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %889 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %890 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %891 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %892 = load ptr, ptr @_llgo_Pointer, align 8
  %893 = load ptr, ptr @_llgo_uintptr, align 8
  %894 = load ptr, ptr @_llgo_uintptr, align 8
  %895 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, ptr %888, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %896 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %889)
  %897 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 3 }, ptr %896, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %898 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %890)
  %899 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 4 }, ptr %898, i64 80, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %900 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %891)
  %901 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @47, i64 6 }, ptr %900, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %902 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %903 = getelementptr ptr, ptr %902, i64 0
  store ptr %892, ptr %903, align 8
  %904 = getelementptr ptr, ptr %902, i64 1
  store ptr %893, ptr %904, align 8
  %905 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %902, 0
  %906 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %905, i64 2, 1
  %907 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %906, i64 2, 2
  %908 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %909 = getelementptr ptr, ptr %908, i64 0
  store ptr %894, ptr %909, align 8
  %910 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %908, 0
  %911 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %910, i64 1, 1
  %912 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %911, i64 1, 2
  %913 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %907, %"github.com/goplus/llgo/internal/runtime.Slice" %912, i1 false)
  %914 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %913, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %915 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %916 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 4 }, ptr %915, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %917 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %918 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %917, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %914, ptr %918, align 8
  %919 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %917, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %916, ptr %919, align 8
  %920 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %917, 0
  %921 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %920, i64 2, 1
  %922 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %921, i64 2, 2
  %923 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %922)
  %924 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @48, i64 6 }, ptr %923, i64 96, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %925 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %926 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @49, i64 7 }, ptr %925, i64 112, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %927 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %928 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @50, i64 9 }, ptr %927, i64 113, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %929 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %930 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @51, i64 10 }, ptr %929, i64 114, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %931 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %932 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @52, i64 5 }, ptr %931, i64 116, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %933 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %934 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %895, ptr %934, align 8
  %935 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %897, ptr %935, align 8
  %936 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %899, ptr %936, align 8
  %937 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %901, ptr %937, align 8
  %938 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %924, ptr %938, align 8
  %939 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %926, ptr %939, align 8
  %940 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %928, ptr %940, align 8
  %941 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %930, ptr %941, align 8
  %942 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %933, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %932, ptr %942, align 8
  %943 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %933, 0
  %944 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %943, i64 9, 1
  %945 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %944, i64 9, 2
  %946 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %945)
  store ptr %946, ptr @"main.struct$jgHT3zlvUCWdGAH-l4Nn1MOOw31LQoSt74SxHNLR50Q", align 8
  %947 = load ptr, ptr @"main.struct$jgHT3zlvUCWdGAH-l4Nn1MOOw31LQoSt74SxHNLR50Q", align 8
  br i1 %836, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %948 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %949 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %948, 1
  %950 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %949, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", 2
  %951 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %950, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", 3
  %952 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %953 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %954 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %953, 1
  %955 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %954, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", 2
  %956 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %955, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", 3
  %957 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %958 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %957, 1
  %959 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %958, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", 2
  %960 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %959, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", 3
  %961 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %962 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %963 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %962, 1
  %964 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %963, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", 2
  %965 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %964, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", 3
  %966 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %967 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %968 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %967, 1
  %969 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %968, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", 2
  %970 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %969, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ExportedMethods", 3
  %971 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %972 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %971, 1
  %973 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %972, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", 2
  %974 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %973, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", 3
  %975 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %976 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %977 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %976, 1
  %978 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %977, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", 2
  %979 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %978, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", 3
  %980 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %981 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %980, 1
  %982 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %981, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", 2
  %983 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %982, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", 3
  %984 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %985 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @53, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %984, 1
  %986 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %985, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", 2
  %987 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %986, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", 3
  %988 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %989 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %988, 1
  %990 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %989, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", 2
  %991 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %990, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", 3
  %992 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %993 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @54, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %992, 1
  %994 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %993, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", 2
  %995 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %994, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", 3
  %996 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %997 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @55, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %996, 1
  %998 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %997, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", 2
  %999 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %998, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", 3
  %1000 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1001 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1002 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1001, 1
  %1003 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1002, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", 2
  %1004 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1003, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", 3
  %1005 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1006 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1005, 1
  %1007 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1006, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsClosure", 2
  %1008 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1007, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsClosure", 3
  %1009 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1010 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1009, 1
  %1011 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1010, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", 2
  %1012 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1011, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", 3
  %1013 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1014 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1013, 1
  %1015 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1014, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", 2
  %1016 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1015, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", 3
  %1017 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1018 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1017, 1
  %1019 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1018, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", 2
  %1020 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1019, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", 3
  %1021 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %1022 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %_llgo_111, label %_llgo_112

_llgo_110:                                        ; preds = %_llgo_130, %_llgo_108
  %1024 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1025 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1026 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1027 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1026, 1
  %1028 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1027, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", 2
  %1029 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1028, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", 3
  %1030 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1031 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1030, 1
  %1032 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1031, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", 2
  %1033 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1032, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).NumMethod", 3
  %1034 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1035 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1034, 1
  %1036 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1035, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", 2
  %1037 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1036, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", 3
  %1038 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1039 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1038, 1
  %1040 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1039, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", 2
  %1041 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1040, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", 3
  %1042 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1043 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1042, 1
  %1044 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1043, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", 2
  %1045 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1044, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", 3
  %1046 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1047 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1048 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1047, 1
  %1049 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1048, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", 2
  %1050 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1049, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", 3
  %1051 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1052 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1051, 1
  %1053 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1052, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", 2
  %1054 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1053, ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", 3
  %1055 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %1056 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %622, ptr %1056, align 8
  %1057 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %627, ptr %1057, align 8
  %1058 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %631, ptr %1058, align 8
  %1059 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %636, ptr %1059, align 8
  %1060 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %641, ptr %1060, align 8
  %1061 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %646, ptr %1061, align 8
  %1062 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %650, ptr %1062, align 8
  %1063 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %655, ptr %1063, align 8
  %1064 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %659, ptr %1064, align 8
  %1065 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %663, ptr %1065, align 8
  %1066 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %774, ptr %1066, align 8
  %1067 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %778, ptr %1067, align 8
  %1068 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %782, ptr %1068, align 8
  %1069 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %787, ptr %1069, align 8
  %1070 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %829, ptr %1070, align 8
  %1071 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %833, ptr %1071, align 8
  %1072 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1029, ptr %1072, align 8
  %1073 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1033, ptr %1073, align 8
  %1074 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1037, ptr %1074, align 8
  %1075 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1041, ptr %1075, align 8
  %1076 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1045, ptr %1076, align 8
  %1077 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1050, ptr %1077, align 8
  %1078 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1055, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1054, ptr %1078, align 8
  %1079 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1055, 0
  %1080 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1079, i64 23, 1
  %1081 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1080, i64 23, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %541, ptr %618, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1081)
  br label %_llgo_90

_llgo_111:                                        ; preds = %_llgo_109
  %1082 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1021)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1082)
  store ptr %1082, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_109
  %1083 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1084 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1085 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1086 = icmp eq ptr %1085, null
  br i1 %1086, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %1087 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1088 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1087, 0
  %1089 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1088, i64 0, 1
  %1090 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1089, i64 0, 2
  %1091 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1092 = getelementptr ptr, ptr %1091, i64 0
  store ptr %1084, ptr %1092, align 8
  %1093 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1091, 0
  %1094 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1093, i64 1, 1
  %1095 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1094, i64 1, 2
  %1096 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1090, %"github.com/goplus/llgo/internal/runtime.Slice" %1095, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1096)
  store ptr %1096, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %1097 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1098 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1097, 1
  %1099 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1098, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", 2
  %1100 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1099, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", 3
  %1101 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1102 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @56, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1101, 1
  %1103 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1102, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", 2
  %1104 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1103, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", 3
  %1105 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1106 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1105, 1
  %1107 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1106, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", 2
  %1108 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1107, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NumMethod", 3
  %1109 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1110 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1109, 1
  %1111 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1110, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", 2
  %1112 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1111, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", 3
  %1113 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1114 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @59, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1113, 1
  %1115 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1114, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", 2
  %1116 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1115, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", 3
  %1117 = load ptr, ptr @_llgo_uintptr, align 8
  %1118 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %1120 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1121 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1120, 0
  %1122 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1121, i64 0, 1
  %1123 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1122, i64 0, 2
  %1124 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1125 = getelementptr ptr, ptr %1124, i64 0
  store ptr %1117, ptr %1125, align 8
  %1126 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1124, 0
  %1127 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1126, i64 1, 1
  %1128 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1127, i64 1, 2
  %1129 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1123, %"github.com/goplus/llgo/internal/runtime.Slice" %1128, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1129)
  store ptr %1129, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115, %_llgo_114
  %1130 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1131 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1130, 1
  %1132 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1131, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", 2
  %1133 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1132, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", 3
  %1134 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1135 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1134, 1
  %1136 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1135, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", 2
  %1137 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1136, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", 3
  %1138 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1139 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %_llgo_117, label %_llgo_118

_llgo_117:                                        ; preds = %_llgo_116
  store ptr %1138, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_116
  %1141 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1142 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  store ptr %1141, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %1144 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1145 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1146 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  %1147 = icmp eq ptr %1146, null
  br i1 %1147, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  %1148 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1149 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 5 }, ptr %1148, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1150 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1145)
  %1151 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @63, i64 3 }, ptr %1150, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1152 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %1153 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @64, i64 6 }, ptr %1152, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1154 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1155 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @65, i64 4 }, ptr %1154, i64 32, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1156 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  %1157 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @66, i64 9 }, ptr %1156, i64 48, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1158 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 280)
  %1159 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1158, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1149, ptr %1159, align 8
  %1160 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1158, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1151, ptr %1160, align 8
  %1161 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1158, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1153, ptr %1161, align 8
  %1162 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1158, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1155, ptr %1162, align 8
  %1163 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1158, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1157, ptr %1163, align 8
  %1164 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1158, 0
  %1165 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1164, i64 5, 1
  %1166 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1165, i64 5, 2
  %1167 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 56, %"github.com/goplus/llgo/internal/runtime.Slice" %1166)
  store ptr %1167, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %1168 = load ptr, ptr @"_llgo_struct$GYlWrg0B_axMyyq9xClGPKuTjurG0iQMRoz8Me1fQig", align 8
  br i1 %1143, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %1169 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1170 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1169, 1
  %1171 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1170, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", 2
  %1172 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1171, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Embedded", 3
  %1173 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1174 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1173, 1
  %1175 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1174, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", 2
  %1176 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1175, ptr @"github.com/goplus/llgo/internal/abi.(*StructField).Exported", 3
  %1177 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1178 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1177, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1172, ptr %1178, align 8
  %1179 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1177, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1176, ptr %1179, align 8
  %1180 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1177, 0
  %1181 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1180, i64 2, 1
  %1182 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1181, i64 2, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1141, ptr %1168, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1182)
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1183 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1184 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1185 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %1187 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1184)
  store ptr %1187, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1188 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.StructField", align 8
  %1189 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1190 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1191 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1192 = icmp eq ptr %1191, null
  br i1 %1192, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %1193 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, ptr %1189, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %1194 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1195 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @39, i64 8 }, ptr %1194, i64 72, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1196 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1190)
  %1197 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @68, i64 6 }, ptr %1196, i64 88, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1198 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1199 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1198, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1193, ptr %1199, align 8
  %1200 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1198, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1195, ptr %1200, align 8
  %1201 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1198, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1197, ptr %1201, align 8
  %1202 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1198, 0
  %1203 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1202, i64 3, 1
  %1204 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1203, i64 3, 2
  %1205 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1204)
  store ptr %1205, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1206 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1140, label %_llgo_129, label %_llgo_130

_llgo_129:                                        ; preds = %_llgo_128
  %1207 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1208 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1207, 1
  %1209 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1208, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", 2
  %1210 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1209, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", 3
  %1211 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %1212 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1213 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1212, 1
  %1214 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1213, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", 2
  %1215 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1214, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", 3
  %1216 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1217 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1216, 1
  %1218 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1217, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", 2
  %1219 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1218, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", 3
  %1220 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1221 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1222 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1221, 1
  %1223 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1222, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", 2
  %1224 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1223, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", 3
  %1225 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1226 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1227 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1226, 1
  %1228 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1227, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", 2
  %1229 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1228, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", 3
  %1230 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1231 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1232 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1231, 1
  %1233 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1232, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", 2
  %1234 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1233, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ExportedMethods", 3
  %1235 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1236 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1235, 1
  %1237 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1236, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", 2
  %1238 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1237, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", 3
  %1239 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1240 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1241 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1240, 1
  %1242 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1241, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", 2
  %1243 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1242, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", 3
  %1244 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1245 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1244, 1
  %1246 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1245, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", 2
  %1247 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1246, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", 3
  %1248 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1249 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1248, 1
  %1250 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1249, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", 2
  %1251 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1250, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", 3
  %1252 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1253 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1254 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1253, 1
  %1255 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1254, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", 2
  %1256 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1255, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", 3
  %1257 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1258 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1257, 1
  %1259 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1258, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsClosure", 2
  %1260 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1259, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsClosure", 3
  %1261 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1262 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1261, 1
  %1263 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1262, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", 2
  %1264 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1263, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", 3
  %1265 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1266 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1267 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1266, 1
  %1268 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1267, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", 2
  %1269 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1268, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", 3
  %1270 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1271 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1270, 1
  %1272 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1271, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", 2
  %1273 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1272, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", 3
  %1274 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1275 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1274, 1
  %1276 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1275, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", 2
  %1277 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1276, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", 3
  %1278 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1279 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1280 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1279, 1
  %1281 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1280, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", 2
  %1282 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1281, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", 3
  %1283 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1284 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1283, 1
  %1285 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1284, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", 2
  %1286 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1285, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).NumMethod", 3
  %1287 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1288 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1287, 1
  %1289 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1288, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", 2
  %1290 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1289, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", 3
  %1291 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1292 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1291, 1
  %1293 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1292, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", 2
  %1294 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1293, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", 3
  %1295 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1296 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1295, 1
  %1297 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1296, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", 2
  %1298 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1297, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", 3
  %1299 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1300 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %_llgo_131, label %_llgo_132

_llgo_130:                                        ; preds = %_llgo_144, %_llgo_128
  %1302 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1303 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1304 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1305 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1304, 1
  %1306 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1305, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", 2
  %1307 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1306, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", 3
  %1308 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1309 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1308, 1
  %1310 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1309, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", 2
  %1311 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1310, ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", 3
  %1312 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 1040)
  %1313 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %951, ptr %1313, align 8
  %1314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %956, ptr %1314, align 8
  %1315 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %960, ptr %1315, align 8
  %1316 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %965, ptr %1316, align 8
  %1317 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %970, ptr %1317, align 8
  %1318 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %974, ptr %1318, align 8
  %1319 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %979, ptr %1319, align 8
  %1320 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %983, ptr %1320, align 8
  %1321 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %987, ptr %1321, align 8
  %1322 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %991, ptr %1322, align 8
  %1323 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %995, ptr %1323, align 8
  %1324 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %999, ptr %1324, align 8
  %1325 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1004, ptr %1325, align 8
  %1326 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1008, ptr %1326, align 8
  %1327 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1012, ptr %1327, align 8
  %1328 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1016, ptr %1328, align 8
  %1329 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1020, ptr %1329, align 8
  %1330 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1100, ptr %1330, align 8
  %1331 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1104, ptr %1331, align 8
  %1332 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1108, ptr %1332, align 8
  %1333 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1112, ptr %1333, align 8
  %1334 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1116, ptr %1334, align 8
  %1335 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1133, ptr %1335, align 8
  %1336 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 23
  store %"github.com/goplus/llgo/internal/abi.Method" %1137, ptr %1336, align 8
  %1337 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 24
  store %"github.com/goplus/llgo/internal/abi.Method" %1307, ptr %1337, align 8
  %1338 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1312, i64 25
  store %"github.com/goplus/llgo/internal/abi.Method" %1311, ptr %1338, align 8
  %1339 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1312, 0
  %1340 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1339, i64 26, 1
  %1341 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1340, i64 26, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %834, ptr %947, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1341)
  br label %_llgo_110

_llgo_131:                                        ; preds = %_llgo_129
  %1342 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1299)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1342)
  store ptr %1342, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_129
  %1343 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1344 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1345 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1346 = icmp eq ptr %1345, null
  br i1 %1346, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  %1347 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1348 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1347, 0
  %1349 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1348, i64 0, 1
  %1350 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1349, i64 0, 2
  %1351 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1352 = getelementptr ptr, ptr %1351, i64 0
  store ptr %1344, ptr %1352, align 8
  %1353 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1351, 0
  %1354 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1353, i64 1, 1
  %1355 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1354, i64 1, 2
  %1356 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1350, %"github.com/goplus/llgo/internal/runtime.Slice" %1355, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1356)
  store ptr %1356, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_132
  %1357 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1358 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1357, 1
  %1359 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1358, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", 2
  %1360 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1359, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", 3
  %1361 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1362 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1363 = icmp eq ptr %1362, null
  br i1 %1363, label %_llgo_135, label %_llgo_136

_llgo_135:                                        ; preds = %_llgo_134
  store ptr %1361, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_134
  %1364 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1365 = icmp eq ptr %1364, null
  br i1 %1365, label %_llgo_137, label %_llgo_138

_llgo_137:                                        ; preds = %_llgo_136
  %1366 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1367 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @39, i64 8 }, ptr %1366, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1368 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1369 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @71, i64 6 }, ptr %1368, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1370 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1371 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @72, i64 6 }, ptr %1370, i64 18, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1372 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1373 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @73, i64 4 }, ptr %1372, i64 20, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1374 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1375 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1374, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1367, ptr %1375, align 8
  %1376 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1374, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1369, ptr %1376, align 8
  %1377 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1374, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1371, ptr %1377, align 8
  %1378 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1374, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1373, ptr %1378, align 8
  %1379 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1374, 0
  %1380 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1379, i64 4, 1
  %1381 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1380, i64 4, 2
  %1382 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %1381)
  store ptr %1382, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_136
  %1383 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1363, label %_llgo_139, label %_llgo_140

_llgo_139:                                        ; preds = %_llgo_138
  %1384 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1385 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1386 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1385, 1
  %1387 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1386, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", 2
  %1388 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1387, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", 3
  %1389 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1390 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1391 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @40, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1390, 1
  %1392 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1391, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", 2
  %1393 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1392, ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", 3
  %1394 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1395 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1394, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1388, ptr %1395, align 8
  %1396 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1394, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1393, ptr %1396, align 8
  %1397 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1394, 0
  %1398 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1397, i64 2, 1
  %1399 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1398, i64 2, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1361, ptr %1383, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1399)
  br label %_llgo_140

_llgo_140:                                        ; preds = %_llgo_139, %_llgo_138
  %1400 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1401 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1402 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %_llgo_141, label %_llgo_142

_llgo_141:                                        ; preds = %_llgo_140
  %1404 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1401)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1404)
  store ptr %1404, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_142

_llgo_142:                                        ; preds = %_llgo_141, %_llgo_140
  %1405 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1406 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1407 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1408 = icmp eq ptr %1407, null
  br i1 %1408, label %_llgo_143, label %_llgo_144

_llgo_143:                                        ; preds = %_llgo_142
  %1409 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1410 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1409, 0
  %1411 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1410, i64 0, 1
  %1412 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1411, i64 0, 2
  %1413 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1414 = getelementptr ptr, ptr %1413, i64 0
  store ptr %1406, ptr %1414, align 8
  %1415 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1413, 0
  %1416 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1415, i64 1, 1
  %1417 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1416, i64 1, 2
  %1418 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1412, %"github.com/goplus/llgo/internal/runtime.Slice" %1417, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1418)
  store ptr %1418, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143, %_llgo_142
  %1419 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1420 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1419, 1
  %1421 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1420, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", 2
  %1422 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1421, ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", 3
  %1423 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %1424 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1210, ptr %1424, align 8
  %1425 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1215, ptr %1425, align 8
  %1426 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1219, ptr %1426, align 8
  %1427 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1224, ptr %1427, align 8
  %1428 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1229, ptr %1428, align 8
  %1429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1234, ptr %1429, align 8
  %1430 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1238, ptr %1430, align 8
  %1431 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1243, ptr %1431, align 8
  %1432 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1247, ptr %1432, align 8
  %1433 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1251, ptr %1433, align 8
  %1434 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1256, ptr %1434, align 8
  %1435 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1260, ptr %1435, align 8
  %1436 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1264, ptr %1436, align 8
  %1437 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1269, ptr %1437, align 8
  %1438 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1273, ptr %1438, align 8
  %1439 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1277, ptr %1439, align 8
  %1440 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1282, ptr %1440, align 8
  %1441 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1286, ptr %1441, align 8
  %1442 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1290, ptr %1442, align 8
  %1443 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1294, ptr %1443, align 8
  %1444 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1298, ptr %1444, align 8
  %1445 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1360, ptr %1445, align 8
  %1446 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1423, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %1422, ptr %1446, align 8
  %1447 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1423, 0
  %1448 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1447, i64 23, 1
  %1449 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1448, i64 23, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1138, ptr %1206, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1449)
  br label %_llgo_130

_llgo_145:                                        ; preds = %_llgo_64
  %1450 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1451 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 5 }, ptr %1450, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1452 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %472)
  %1453 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @75, i64 5 }, ptr %1452, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1454 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1455 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @76, i64 4 }, ptr %1454, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1456 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1457 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @77, i64 4 }, ptr %1456, i64 32, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1458 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1459 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1458, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1451, ptr %1459, align 8
  %1460 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1458, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1453, ptr %1460, align 8
  %1461 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1458, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1455, ptr %1461, align 8
  %1462 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1458, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1457, ptr %1462, align 8
  %1463 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1458, 0
  %1464 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1463, i64 4, 1
  %1465 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1464, i64 4, 2
  %1466 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 40, %"github.com/goplus/llgo/internal/runtime.Slice" %1465)
  store ptr %1466, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br label %_llgo_146

_llgo_146:                                        ; preds = %_llgo_145, %_llgo_64
  %1467 = load ptr, ptr @"_llgo_struct$SDp3TNnYnxb26MhB1v8VMbmY71BX77YOaY7lgS1cFx0", align 8
  br i1 %410, label %_llgo_147, label %_llgo_148

_llgo_147:                                        ; preds = %_llgo_146
  %1468 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1469 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1468, 1
  %1470 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1469, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", 2
  %1471 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1470, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Exported", 3
  %1472 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1473 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1472, 1
  %1474 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1473, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", 2
  %1475 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1474, ptr @"github.com/goplus/llgo/internal/abi.(*Method).Name", 3
  %1476 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1477 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1476, 1
  %1478 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1477, ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", 2
  %1479 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1478, ptr @"github.com/goplus/llgo/internal/abi.(*Method).PkgPath", 3
  %1480 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %1481 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1480, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1471, ptr %1481, align 8
  %1482 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1480, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1475, ptr %1482, align 8
  %1483 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1480, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1479, ptr %1483, align 8
  %1484 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1480, 0
  %1485 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1484, i64 3, 1
  %1486 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1485, i64 3, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %408, ptr %1467, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1486)
  br label %_llgo_148

_llgo_148:                                        ; preds = %_llgo_147, %_llgo_146
  %1487 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1488 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1489 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1490 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1489, 1
  %1491 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1490, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", 2
  %1492 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1491, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ExportedMethods", 3
  %1493 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1494 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1493, 1
  %1495 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1494, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", 2
  %1496 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1495, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", 3
  %1497 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %1498 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1499 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1498, 1
  %1500 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1499, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", 2
  %1501 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1500, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", 3
  %1502 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1503 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1502, 1
  %1504 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1503, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", 2
  %1505 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1504, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", 3
  %1506 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1507 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1506, 1
  %1508 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1507, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", 2
  %1509 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1508, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", 3
  %1510 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1511 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1512 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1511, 1
  %1513 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1512, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", 2
  %1514 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1513, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", 3
  %1515 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1516 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1515, 1
  %1517 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1516, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsClosure", 2
  %1518 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1517, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsClosure", 3
  %1519 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1520 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1519, 1
  %1521 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1520, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", 2
  %1522 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1521, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", 3
  %1523 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %1524 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1525 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1524, 1
  %1526 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1525, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", 2
  %1527 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1526, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", 3
  %1528 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1529 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1528, 1
  %1530 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1529, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", 2
  %1531 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1530, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", 3
  %1532 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1533 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1534 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1533, 1
  %1535 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1534, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", 2
  %1536 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1535, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", 3
  %1537 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1538 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1537, 1
  %1539 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1538, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", 2
  %1540 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1539, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).NumMethod", 3
  %1541 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1542 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1541, 1
  %1543 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1542, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", 2
  %1544 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1543, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", 3
  %1545 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1546 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1545, 1
  %1547 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1546, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", 2
  %1548 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1547, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", 3
  %1549 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1550 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1549, 1
  %1551 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1550, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", 2
  %1552 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1551, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", 3
  %1553 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1554 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1555 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1554, 1
  %1556 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1555, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", 2
  %1557 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1556, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", 3
  %1558 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1559 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1558, 1
  %1560 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1559, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", 2
  %1561 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %1560, ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", 3
  %1562 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 840)
  %1563 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %220, ptr %1563, align 8
  %1564 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %367, ptr %1564, align 8
  %1565 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %389, ptr %1565, align 8
  %1566 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %407, ptr %1566, align 8
  %1567 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1492, ptr %1567, align 8
  %1568 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1496, ptr %1568, align 8
  %1569 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1501, ptr %1569, align 8
  %1570 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1505, ptr %1570, align 8
  %1571 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1509, ptr %1571, align 8
  %1572 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1514, ptr %1572, align 8
  %1573 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1518, ptr %1573, align 8
  %1574 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1522, ptr %1574, align 8
  %1575 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1527, ptr %1575, align 8
  %1576 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1531, ptr %1576, align 8
  %1577 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1536, ptr %1577, align 8
  %1578 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1540, ptr %1578, align 8
  %1579 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1544, ptr %1579, align 8
  %1580 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1548, ptr %1580, align 8
  %1581 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1552, ptr %1581, align 8
  %1582 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1557, ptr %1582, align 8
  %1583 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1562, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1561, ptr %1583, align 8
  %1584 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1562, 0
  %1585 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1584, i64 21, 1
  %1586 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1585, i64 21, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %190, ptr %216, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1586)
  br label %_llgo_42

_llgo_149:                                        ; preds = %_llgo_32
  %1587 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %168)
  store ptr %1587, ptr @"[]_llgo_main.T", align 8
  br label %_llgo_150

_llgo_150:                                        ; preds = %_llgo_149, %_llgo_32
  %1588 = load ptr, ptr @"[]_llgo_main.T", align 8
  %1589 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1590 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 35 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1591 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1592 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1589)
  %1593 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @78, i64 1 }, ptr %1592, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1594 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1590)
  %1595 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @79, i64 1 }, ptr %1594, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1596 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %1597 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @80, i64 1 }, ptr %1596, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1598 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1591)
  %1599 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @81, i64 1 }, ptr %1598, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %1600 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1601 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1600, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1593, ptr %1601, align 8
  %1602 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1600, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1595, ptr %1602, align 8
  %1603 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1600, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1597, ptr %1603, align 8
  %1604 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1600, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1599, ptr %1604, align 8
  %1605 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %1600, 0
  %1606 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1605, i64 4, 1
  %1607 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1606, i64 4, 2
  %1608 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %1607)
  store ptr %1608, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  %1609 = load ptr, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  br i1 %2, label %_llgo_151, label %_llgo_152

_llgo_151:                                        ; preds = %_llgo_150
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, ptr %1609, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_152

_llgo_152:                                        ; preds = %_llgo_151, %_llgo_150
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

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
